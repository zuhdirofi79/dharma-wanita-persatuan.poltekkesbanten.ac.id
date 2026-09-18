<?php

namespace App\Services;

use App\Models\GraduationTogaOrder;
use App\Models\StudyProgram;
use App\Support\NimNormalizer;
use Illuminate\Database\QueryException;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use Illuminate\Validation\ValidationException;

class GraduationTogaOrderService
{
    public const DUPLICATE_NIM_MESSAGE = 'NIM tersebut sudah pernah melakukan pemesanan toga. Setiap mahasiswa hanya dapat melakukan satu kali pemesanan. Jika Anda merasa belum pernah memesan atau membutuhkan koreksi data, silakan hubungi Tim Sekretariat DWP Poltekkes Kemenkes Banten.';

    public const EMPTY_NIM_MESSAGE = 'NIM tidak valid. Gunakan kombinasi huruf dan angka.';

    /**
     * @param  array<string, mixed>  $data
     */
    public function createOrder(array $data): GraduationTogaOrder
    {
        $normalizedNim = NimNormalizer::normalize($data['nim'] ?? null);

        if ($normalizedNim === '') {
            throw ValidationException::withMessages([
                'nim' => self::EMPTY_NIM_MESSAGE,
            ]);
        }

        return DB::transaction(function () use ($data, $normalizedNim) {
            if (! $this->claimNimLock($normalizedNim)) {
                throw ValidationException::withMessages([
                    'nim' => self::DUPLICATE_NIM_MESSAGE,
                ]);
            }

            $program = StudyProgram::findOrFail($data['study_program_id']);

            $order = GraduationTogaOrder::create([
                'order_code' => GraduationTogaOrder::generateOrderCode(),
                'student_name' => $data['student_name'],
                'nim' => $data['nim'],
                'nik' => null,
                'study_program_id' => $program->id,
                'study_program_name' => $program->name,
                'graduation_year' => (int) $data['graduation_year'],
                'email' => $data['email'],
                'phone' => $data['phone'],
                'gender' => $data['gender'],
                'toga_size' => 'All Size',
                'size_note' => $data['size_note'] ?? null,
                'quantity' => $data['quantity'],
                'transfer_sender_name' => $data['transfer_sender_name'],
                'status' => 'pending_payment',
                'payment_status' => 'unpaid',
                'public_token' => GraduationTogaOrder::generatePublicToken(),
                'user_id' => $data['user_id'] ?? null,
            ]);

            DB::table('graduation_toga_order_nim_locks')
                ->where('nim_normalized', $normalizedNim)
                ->update([
                    'first_order_id' => $order->id,
                    'updated_at' => now(),
                ]);

            return $order;
        });
    }

    public function backfillNimLocks(): int
    {
        if (
            ! Schema::hasTable('graduation_toga_orders')
            || ! Schema::hasTable('graduation_toga_order_nim_locks')
        ) {
            return 0;
        }

        $inserted = 0;

        DB::table('graduation_toga_orders')
            ->select(['id', 'nim'])
            ->whereNotNull('nim')
            ->where('nim', '!=', '')
            ->orderBy('id')
            ->chunkById(500, function ($orders) use (&$inserted) {
                foreach ($orders as $order) {
                    $normalized = NimNormalizer::normalize($order->nim);

                    if ($normalized === '') {
                        continue;
                    }

                    $inserted += $this->insertLockIgnoreDuplicate(
                        $normalized,
                        (int) $order->id,
                    );
                }
            });

        return $inserted;
    }

    private function claimNimLock(string $normalizedNim): bool
    {
        $now = now();

        try {
            $inserted = DB::table('graduation_toga_order_nim_locks')->insertOrIgnore([
                'nim_normalized' => $normalizedNim,
                'first_order_id' => null,
                'created_at' => $now,
                'updated_at' => $now,
            ]);
        } catch (QueryException $e) {
            if ($this->isUniqueViolation($e)) {
                return false;
            }

            throw $e;
        }

        return (int) $inserted > 0;
    }

    private function insertLockIgnoreDuplicate(string $normalizedNim, int $firstOrderId): int
    {
        $now = now();

        try {
            return (int) DB::table('graduation_toga_order_nim_locks')->insertOrIgnore([
                'nim_normalized' => $normalizedNim,
                'first_order_id' => $firstOrderId,
                'created_at' => $now,
                'updated_at' => $now,
            ]);
        } catch (QueryException $e) {
            if ($this->isUniqueViolation($e)) {
                return 0;
            }

            throw $e;
        }
    }

    private function isUniqueViolation(QueryException $e): bool
    {
        $driverCode = (string) ($e->errorInfo[1] ?? '');
        $sqlState = (string) ($e->errorInfo[0] ?? '');
        $message = strtolower($e->getMessage());

        return $driverCode === '1062'
            || $driverCode === '19'
            || $sqlState === '23000'
            || str_contains($message, 'unique')
            || str_contains($message, 'duplicate');
    }
}
