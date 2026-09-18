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
use Illuminate\Support\Facades\Schema;
use Illuminate\Validation\ValidationException;

class StudentRegistrationService
{
    public const ALREADY_REGISTERED_MESSAGE = 'Akun dengan NIM tersebut sudah terdaftar. Silakan login.';

    public const NIM_NOT_ELIGIBLE_MESSAGE = 'NIM belum ditemukan dalam daftar mahasiswa yang dapat melakukan registrasi. Silakan periksa kembali NIM Anda atau hubungi Tim Sekretariat DWP.';

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

        $roster = $this->findRoster($nim);
        $orders = $this->ordersForNim($nim);

        if ($roster === null && $orders->isEmpty()) {
            throw ValidationException::withMessages([
                'nim' => self::NIM_NOT_ELIGIBLE_MESSAGE,
            ]);
        }

        $this->assertNameMatchesOfficialRecord($name, $roster, $orders);

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

    public function findRoster(string $normalizedNim): ?StudentRoster
    {
        if ($normalizedNim === '' || ! Schema::hasTable('student_roster')) {
            return null;
        }

        return StudentRoster::query()
            ->where('nim_normalized', $normalizedNim)
            ->first();
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
        if ($normalizedNim === '') {
            return collect();
        }

        return GraduationTogaOrder::query()
            ->orderBy('id')
            ->get()
            ->filter(fn (GraduationTogaOrder $order) => NimNormalizer::normalize($order->nim) === $normalizedNim)
            ->values();
    }

    /**
     * @param  Collection<int, GraduationTogaOrder>  $orders
     */
    private function assertNameMatchesOfficialRecord(string $name, ?StudentRoster $roster, Collection $orders): void
    {
        if ($roster && filled($roster->full_name)) {
            if (! NameNormalizer::matches($name, $roster->full_name)) {
                throw ValidationException::withMessages([
                    'name' => self::NAME_MISMATCH_MESSAGE,
                ]);
            }

            return;
        }

        if ($orders->isEmpty()) {
            return;
        }

        $matching = $orders->first(
            fn (GraduationTogaOrder $order) => NameNormalizer::matches($name, $order->student_name)
        );

        if ($matching === null) {
            throw ValidationException::withMessages([
                'name' => self::NAME_MISMATCH_MESSAGE,
            ]);
        }
    }
}
