<?php

namespace App\Http\Requests\Student;

use App\Support\NimNormalizer;
use Illuminate\Foundation\Http\FormRequest;

class LoginStudentRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }

    protected function prepareForValidation(): void
    {
        $this->merge([
            'nim' => NimNormalizer::normalize($this->input('nim')),
        ]);
    }

    public function rules(): array
    {
        return [
            'nim' => ['required', 'string', 'max:50'],
            'password' => ['required', 'string'],
            'remember' => ['sometimes', 'boolean'],
        ];
    }
}
