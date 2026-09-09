<?php

namespace App\Support;

use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Schema;
use RuntimeException;

class AdminAccountSync
{
    /**
     * @return list<array{email: string, role: string, action: string, labels: list<string>}>
     */
    public function sync(bool $forceReset = false): array
    {
        $candidates = $this->candidates();

        if ($candidates === []) {
            throw new RuntimeException('Tidak ada konfigurasi admin/superadmin yang valid di .env.');
        }

        $results = [];

        foreach ($candidates as $candidate) {
            $results[] = $this->upsertUser($candidate, $forceReset);
        }

        $activeSuperadmins = User::query()
            ->where('role', 'superadmin')
            ->where('is_active', true)
            ->count();

        if ($activeSuperadmins < 1) {
            throw new RuntimeException('Sinkronisasi gagal: minimal harus ada satu superadmin aktif.');
        }

        return $results;
    }

    /**
     * @return array<string, array{email: string, password: string, role: string, labels: list<string>}>
     */
    public function candidates(): array
    {
        $sources = config('dwp.admin_accounts', []);
        $candidates = [];

        foreach ($sources as $source) {
            $email = strtolower(trim((string) ($source['email'] ?? '')));
            $password = (string) ($source['password'] ?? '');
            $role = (string) ($source['role'] ?? 'admin');
            $label = (string) ($source['label'] ?? 'ADMIN');

            if ($email === '' || $password === '') {
                continue;
            }

            if (! isset($candidates[$email])) {
                $candidates[$email] = [
                    'email' => $email,
                    'password' => $password,
                    'role' => $role,
                    'labels' => [$label],
                ];

                continue;
            }

            $existing = $candidates[$email];
            $candidates[$email]['role'] = RolePriority::highest($role, $existing['role']);
            $candidates[$email]['labels'][] = $label;

            if (RolePriority::isHigher($role, $existing['role'])) {
                $candidates[$email]['password'] = $password;
            }
        }

        return $candidates;
    }

    /**
     * @param  array{email: string, password: string, role: string, labels: list<string>}  $candidate
     * @return array{email: string, role: string, action: string, labels: list<string>}
     */
    private function upsertUser(array $candidate, bool $forceReset): array
    {
        $user = User::query()->firstOrNew([
            'email' => $candidate['email'],
        ]);

        $isNew = ! $user->exists;
        $action = $isNew ? 'created' : 'updated';

        if (! filled($user->name)) {
            $user->name = $this->nameFromEmail($candidate['email']);
        }

        $user->role = $isNew
            ? $candidate['role']
            : RolePriority::highest($candidate['role'], (string) $user->role);
        $user->is_active = true;

        if (Schema::hasColumn($user->getTable(), 'email_verified_at') && ! $user->email_verified_at) {
            $user->email_verified_at = now();
        }

        if ($isNew || $forceReset) {
            $user->password = Hash::make($candidate['password']);
            $action = $isNew ? 'created' : 'password_reset';

            if (Schema::hasColumn($user->getTable(), 'must_change_password')) {
                $user->must_change_password = false;
            }
        }

        $user->save();

        return [
            'email' => $candidate['email'],
            'role' => (string) $user->role,
            'action' => $action,
            'labels' => $candidate['labels'],
        ];
    }

    private function nameFromEmail(string $email): string
    {
        $local = explode('@', $email)[0] ?? $email;
        $name = str_replace(['.', '_', '-'], ' ', $local);

        return ucwords($name);
    }
}
