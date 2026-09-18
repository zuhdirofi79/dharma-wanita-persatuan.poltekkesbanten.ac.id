<?php

namespace App\Models;

use Database\Factories\UserFactory;
use Illuminate\Database\Eloquent\Attributes\Fillable;
use Illuminate\Database\Eloquent\Attributes\Hidden;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

#[Fillable(['name', 'email', 'nim', 'password', 'role', 'study_program_id', 'must_change_password', 'is_active'])]
#[Hidden(['password', 'remember_token'])]
class User extends Authenticatable
{
    /** @use HasFactory<UserFactory> */
    use HasFactory, Notifiable;

    protected function casts(): array
    {
        return [
            'email_verified_at' => 'datetime',
            'password' => 'hashed',
            'must_change_password' => 'boolean',
            'is_active' => 'boolean',
        ];
    }

    public function activityLogs(): HasMany
    {
        return $this->hasMany(AdminActivityLog::class);
    }

    public function studyProgram(): BelongsTo
    {
        return $this->belongsTo(StudyProgram::class);
    }

    public function togaOrders(): HasMany
    {
        return $this->hasMany(GraduationTogaOrder::class);
    }

    public function isStudent(): bool
    {
        return $this->role === 'mahasiswa';
    }

    public function isSuperAdmin(): bool
    {
        return $this->role === 'superadmin';
    }

    public function isMainSuperAdmin(): bool
    {
        $email = strtolower(trim((string) config('dwp.primary_superadmin_email')));

        return $this->isSuperAdmin()
            && $email !== ''
            && strtolower((string) $this->email) === $email;
    }

    public function canManageAdmins(): bool
    {
        return $this->isSuperAdmin();
    }

    public function canDeleteAdmins(): bool
    {
        return $this->isMainSuperAdmin();
    }

    public function canManageCatalog(): bool
    {
        return $this->isSuperAdmin();
    }

    public function canDeleteCatalog(): bool
    {
        return $this->isSuperAdmin();
    }

    public function isAdmin(): bool
    {
        return $this->role === 'admin';
    }

    public function isAdminJurusan(): bool
    {
        return $this->role === 'admin_jurusan';
    }

    public function isStaff(): bool
    {
        return in_array($this->role, ['admin', 'superadmin', 'admin_jurusan'], true);
    }

    public function canAccessSubmission(Submission $submission): bool
    {
        if ($this->isSuperAdmin() || $this->isAdmin()) {
            return true;
        }

        if ($this->isAdminJurusan()) {
            return $this->study_program_id !== null
                && $submission->study_program_id === $this->study_program_id;
        }

        return false;
    }

    public function canVerifyJurusan(Submission $submission): bool
    {
        if (! $submission->requiresSkVerification()) {
            return false;
        }

        if ($submission->jurusan_verified_at) {
            return false;
        }

        if ($this->isSuperAdmin()) {
            return true;
        }

        return $this->isAdminJurusan()
            && $this->study_program_id !== null
            && $submission->study_program_id === $this->study_program_id;
    }

    public function canVerifyCentral(Submission $submission): bool
    {
        if (! $submission->requiresSkVerification()) {
            return false;
        }

        if ($submission->central_verified_at) {
            return false;
        }

        if (! $submission->jurusan_verified_at) {
            return false;
        }

        return $this->isSuperAdmin() || $this->isCentralSkVerifier();
    }

    public function isCentralSkVerifier(): bool
    {
        return in_array(strtolower((string) $this->email), [
            'osep.yasier@poltekkesbanten.ac.id',
            'shofi.rofifah@poltekkesbanten.ac.id',
        ], true);
    }

    public function roleLabel(): string
    {
        return match ($this->role) {
            'superadmin' => 'Superadmin',
            'admin' => 'Admin',
            'admin_jurusan' => 'Admin Jurusan',
            'mahasiswa' => 'Mahasiswa',
            default => ucfirst((string) $this->role),
        };
    }
}
