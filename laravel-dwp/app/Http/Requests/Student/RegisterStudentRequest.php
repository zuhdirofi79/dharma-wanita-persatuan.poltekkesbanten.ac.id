<?php

namespace App\Http\Requests\Student;

use App\Services\StudentRegistrationService;
use App\Support\NimNormalizer;
use Illuminate\Foundation\Http\FormRequest;

class RegisterStudentRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }

    protected function prepareForValidation(): void
    {
        $this->merge([
            'nim' => NimNormalizer::normalize($this->input('nim')),
            'name' => trim((string) $this->input('name')),
        ]);
    }

    public function rules(): array
    {
        return [
            'nim' => ['required', 'string', 'max:50'],
            'name' => ['required', 'string', 'max:255'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ];
    }

    public function messages(): array
    {
        return [
            'nim.required' => StudentRegistrationService::EMPTY_NIM_MESSAGE,
            'name.required' => 'Nama lengkap wajib diisi.',
            'password.required' => 'Password wajib diisi.',
            'password.min' => 'Password minimal 8 karakter.',
            'password.confirmed' => 'Konfirmasi password tidak cocok.',
        ];
    }
}
