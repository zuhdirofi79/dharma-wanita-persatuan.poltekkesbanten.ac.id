<?php

namespace App\Services;

use App\Models\GraduationTogaOrder;
use App\Models\StudentRoster;
use App\Models\User;
use App\Support\NameNormalizer;
use App\Support\NimNormalizer;
use Illuminate\Database\UniqueConstraintViolationException;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\ValidationException;

class StudentRegistrationService
{
    public const ALREADY_REGISTERED_MESSAGE = 'Akun dengan NIM tersebut sudah terdaftar. Silakan login.';

    public const NIM_NOT_ELIGIBLE_MESSAGE = 'NIM tersebut tidak dapat didaftarkan. Sistem hanya menerima NIM yang sudah tercatat pada pemesanan toga atau daftar mahasiswa resmi. Hubungi Tim Sekretariat DWP Poltekkes Kemenkes Banten jika Anda mahasiswa wisuda.';

    public const NAME_MISMATCH_MESSAGE = 'Nama lengkap tidak sesuai dengan data NIM tersebut. Hubungi Tim Sekretariat DWP Poltekkes Kemenkes Banten untuk koreksi data.';

    public const EMPTY_NIM_MESSAGE = 'NIM tidak valid. Gunakan kombinasi huruf dan angka.';

    /**
     * @param  array{nim: string, name: string, password: string}  $data
     */
    public function register(array $data): User
    {
        $nim = NimNormalizer::normalize($data['nim'] ?? null);
        $name = trim((string) ($data['name'] ?? ''));

        if ($nim === '') {
            throw ValidationException::withMessages([
                'nim' => self::EMPTY_NIM_MESSAGE,
            ]);
        }

        if (User::query()->where('nim', $nim)->exists()) {
            throw ValidationException::withMessages([
                'nim' => self::ALREADY_REGISTERED_MESSAGE,
            ]);
        }

        $orders = $this->ordersForNim($nim);
        $roster = StudentRoster::query()->where('nim_normalized', $nim)->first();

        if ($orders->isEmpty() && $roster === null) {
            throw ValidationException::withMessages([
                'nim' => self::NIM_NOT_ELIGIBLE_MESSAGE,
            ]);
        }

        if ($orders->isNotEmpty()) {
            $matching = $orders->first(
                fn (GraduationTogaOrder $order) => NameNormalizer::matches($name, $order->student_name)
            );

            if ($matching === null) {
                throw ValidationException::withMessages([
                    'name' => self::NAME_MISMATCH_MESSAGE,
                ]);
            }
        } elseif (filled($roster->full_name) && ! NameNormalizer::matches($name, $roster->full_name)) {
            throw ValidationException::withMessages([
                'name' => self::NAME_MISMATCH_MESSAGE,
            ]);
        }

        try {
            return DB::transaction(function () use ($nim, $name, $data, $orders) {
                $user = User::query()->create([
                    'name' => $name,
                    'email' => $this->syntheticEmail($nim),
                    'nim' => $nim,
                    'password' => $data['password'],
                    'role' => 'mahasiswa',
                    'must_change_password' => false,
                    'is_active' => true,
                ]);

                if ($orders->count() === 1) {
                    $order = $orders->first();

                    if ($order && $order->user_id === null) {
                        $order->update(['user_id' => $user->id]);
                    }
                }

                return $user;
            });
        } catch (UniqueConstraintViolationException) {
            throw ValidationException::withMessages([
                'nim' => self::ALREADY_REGISTERED_MESSAGE,
            ]);
        }
    }

    public function syntheticEmail(string $nim): string
    {
        return strtolower($nim).'@'.config('students.email_domain');
    }

    /**
     * @return Collection<int, GraduationTogaOrder>
     */
    public function ordersForNim(string $normalizedNim)
    {
        return GraduationTogaOrder::query()
            ->orderBy('id')
            ->get()
            ->filter(fn (GraduationTogaOrder $order) => NimNormalizer::normalize($order->nim) === $normalizedNim)
            ->values();
    }
}
