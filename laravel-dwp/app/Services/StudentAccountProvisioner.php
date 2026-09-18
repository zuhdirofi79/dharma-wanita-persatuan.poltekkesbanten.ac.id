<?php

namespace App\Services;

use App\Models\GraduationTogaOrder;
use App\Models\User;
use App\Support\NimNormalizer;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Log;

class StudentAccountProvisioner
{
    /**
     * @return array{
     *     students_found: int,
     *     accounts_created: int,
     *     accounts_existing: int,
     *     nim_invalid: int,
     *     duplicate_nim: int,
     *     orders_linked: int,
     *     anomalies: array<int, string>
     * }
     */
    public function provision(bool $dryRun = false): array
    {
        $stats = [
            'students_found' => 0,
            'accounts_created' => 0,
            'accounts_existing' => 0,
            'nim_invalid' => 0,
            'duplicate_nim' => 0,
            'orders_linked' => 0,
            'anomalies' => [],
        ];

        $grouped = GraduationTogaOrder::query()
            ->orderBy('id')
            ->get()
            ->groupBy(fn (GraduationTogaOrder $order) => NimNormalizer::normalize($order->nim));

        foreach ($grouped as $nim => $orders) {
            /** @var Collection<int, GraduationTogaOrder> $orders */
            if ($nim === '') {
                $stats['nim_invalid']++;
                $stats['anomalies'][] = 'NIM kosong/invalid pada order id: '.$orders->pluck('id')->join(', ');

                continue;
            }

            $stats['students_found']++;

            if ($orders->count() > 1) {
                $stats['duplicate_nim']++;
                $stats['anomalies'][] = 'NIM '.$nim.' memiliki '.$orders->count().' order (id: '.$orders->pluck('id')->join(', ').'). Tidak dipilih acak; seluruh order akan dihubungkan ke satu akun jika akun dapat ditentukan.';
            }

            $existingUsers = User::query()->where('nim', $nim)->get();

            if ($existingUsers->count() > 1) {
                $stats['anomalies'][] = 'NIM '.$nim.' terhubung ke lebih dari satu akun. Dilewati.';

                continue;
            }

            $user = $existingUsers->first();

            if ($user) {
                $stats['accounts_existing']++;
            } elseif ($dryRun) {
                $stats['accounts_created']++;
            } else {
                $user = $this->createAccount($nim, $orders);
                $stats['accounts_created']++;
            }

            if ($dryRun || ! $user instanceof User) {
                continue;
            }

            if (! $user->isStudent()) {
                $stats['anomalies'][] = 'NIM '.$nim.' sudah dipakai akun non-mahasiswa id '.$user->id.'. Dilewati.';

                continue;
            }

            $stats['orders_linked'] += $this->linkOrders($user, $orders);
        }

        return $stats;
    }

    /**
     * @param  Collection<int, GraduationTogaOrder>  $orders
     */
    private function createAccount(string $nim, Collection $orders): User
    {
        $name = (string) $orders->first()?->student_name ?: $nim;

        return User::query()->create([
            'name' => $name,
            'email' => strtolower($nim).'@'.config('students.email_domain'),
            'nim' => $nim,
            'password' => (string) config('students.provision_password'),
            'role' => 'mahasiswa',
            'must_change_password' => true,
            'is_active' => true,
        ]);
    }

    /**
     * @param  Collection<int, GraduationTogaOrder>  $orders
     */
    private function linkOrders(User $user, Collection $orders): int
    {
        $linked = 0;

        foreach ($orders as $order) {
            if ($order->user_id === $user->id) {
                $linked++;

                continue;
            }

            if ($order->user_id !== null && $order->user_id !== $user->id) {
                Log::warning('Toga order already linked to another user.', [
                    'order_id' => $order->id,
                    'order_user_id' => $order->user_id,
                    'student_user_id' => $user->id,
                ]);

                continue;
            }

            $order->update(['user_id' => $user->id]);
            $linked++;
        }

        return $linked;
    }
}
