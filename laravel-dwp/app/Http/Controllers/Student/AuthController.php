<?php

namespace App\Http\Controllers\Student;

use App\Http\Controllers\Controller;
use App\Http\Requests\Student\LoginStudentRequest;
use App\Http\Requests\Student\RegisterStudentRequest;
use App\Models\User;
use App\Services\StudentRegistrationService;
use App\Services\StudentTogaNavigator;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\ValidationException;

class AuthController extends Controller
{
    public function __construct(
        private StudentRegistrationService $registrationService,
        private StudentTogaNavigator $navigator,
    ) {}

    public function showLogin()
    {
        return view('student.auth.login');
    }

    public function login(LoginStudentRequest $request)
    {
        $nim = (string) $request->validated('nim');
        $password = (string) $request->input('password');

        $user = User::query()
            ->where('role', 'mahasiswa')
            ->where('nim', $nim)
            ->first();

        if (! $user || ! Hash::check($password, (string) $user->password)) {
            throw ValidationException::withMessages([
                'nim' => 'NIM atau password salah.',
            ]);
        }

        if (! $user->is_active) {
            throw ValidationException::withMessages([
                'nim' => 'NIM atau password salah.',
            ]);
        }

        Auth::login($user, $request->boolean('remember'));
        $request->session()->regenerate();

        return $this->navigator->redirect($user);
    }

    public function showRegister()
    {
        return view('student.auth.register');
    }

    public function register(RegisterStudentRequest $request)
    {
        $this->registrationService->register($request->validated());

        return redirect()
            ->route('student.login')
            ->with('success', 'Akun berhasil dibuat. Silakan login menggunakan NIM dan password Anda.');
    }

    public function logout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return redirect()->route('student.login');
    }
}
