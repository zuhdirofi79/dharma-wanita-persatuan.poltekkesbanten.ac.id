<?php

namespace App\Http\Requests;

use App\Models\GraduationTogaOrderNimLock;
use App\Services\GraduationTogaOrderService;
use App\Support\NimNormalizer;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class StoreGraduationTogaOrderRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }

    protected function prepareForValidation(): void
    {
        $this->merge([
            'toga_size' => 'All Size',
            'student_name' => trim((string) $this->input('student_name')),
            'nim' => trim((string) $this->input('nim')),
            'transfer_sender_name' => trim((string) $this->input('transfer_sender_name')),
        ]);
    }

    public function rules(): array
    {
        return [
            'student_name' => ['required', 'string', 'max:255'],
            'nim' => ['required', 'string', 'max:50'],
            'transfer_sender_name' => ['required', 'string', 'max:150'],
            'study_program_id' => ['required', 'exists:study_programs,id'],
            'graduation_year' => ['required', 'integer', 'digits:4', 'min:2000', 'max:2099'],
            'email' => ['required', 'email', 'max:255'],
            'phone' => ['required', 'string', 'max:30'],
            'gender' => ['required', Rule::in(['Laki-laki', 'Perempuan'])],
            'toga_size' => ['required', 'string', Rule::in(['All Size'])],
            'size_note' => ['nullable', 'string', 'max:1000'],
            'quantity' => ['required', 'integer', 'min:1', 'max:20'],
            'confirm' => ['accepted'],
        ];
    }

    public function messages(): array
    {
        return [
            'confirm.accepted' => 'Anda harus menyetujui pernyataan kebenaran data pemesanan.',
            'study_program_id.required' => 'Program studi wajib dipilih.',
            'graduation_year.required' => 'Tahun lulus wajib diisi.',
            'graduation_year.digits' => 'Tahun lulus harus 4 digit.',
            'phone.required' => 'Nomor HP/Telepon wajib diisi.',
            'transfer_sender_name.required' => 'Tuliskan nama orang tua/pengirim transfer yang akan digunakan pada pembayaran.',
        ];
    }

    public function withValidator($validator): void
    {
        $validator->after(function ($validator) {
            if ($validator->errors()->has('nim')) {
                return;
            }

            $normalized = NimNormalizer::normalize($this->input('nim'));

            if ($normalized === '') {
                $validator->errors()->add('nim', GraduationTogaOrderService::EMPTY_NIM_MESSAGE);

                return;
            }

            $alreadyLocked = GraduationTogaOrderNimLock::query()
                ->where('nim_normalized', $normalized)
                ->exists();

            if ($alreadyLocked) {
                $validator->errors()->add('nim', GraduationTogaOrderService::DUPLICATE_NIM_MESSAGE);
            }
        });
    }
}
