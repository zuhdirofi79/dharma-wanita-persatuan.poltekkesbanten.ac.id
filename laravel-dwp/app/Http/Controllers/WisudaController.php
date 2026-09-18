<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreGraduationTogaOrderRequest;
use App\Http\Requests\UploadWisudaPaymentProofRequest;
use App\Models\DwpCatalogProduct;
use App\Models\GraduationTogaOrder;
use App\Models\StudyProgram;
use App\Services\GraduationTogaOrderService;
use App\Services\StudentTogaNavigator;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class WisudaController extends Controller
{
    use AuthorizesRequests;

    public function __construct(private StudentTogaNavigator $navigator) {}

    public function index()
    {
        $student = auth()->user()?->isStudent() ? auth()->user() : null;
        $studentOrder = $student ? $this->navigator->resolveOrder($student) : null;

        return view('wisuda.index', [
            'config' => config('wisuda'),
            'studyPrograms' => StudyProgram::active()->orderBy('name')->get(),
            'togaProduct' => DwpCatalogProduct::canonicalToga(),
            'studentOrder' => $studentOrder,
            'studentContinueUrl' => $student ? $this->navigator->destinationUrl($student) : null,
        ]);
    }

    public function createOrder(Request $request)
    {
        $user = $request->user();

        if ($user?->isStudent()) {
            $existing = $this->navigator->resolveOrder($user);

            if ($existing) {
                return $this->navigator->redirect($user);
            }
        }

        $prodiHint = strtolower((string) $request->query('prodi', ''));

        return view('wisuda.order', [
            'studyPrograms' => StudyProgram::active()->orderBy('name')->get(),
            'config' => config('wisuda'),
            'prodiHint' => $prodiHint,
            'togaProduct' => DwpCatalogProduct::canonicalToga(),
        ]);
    }

    public function storeOrder(StoreGraduationTogaOrderRequest $request, GraduationTogaOrderService $orderService)
    {
        $user = $request->user();
        $payload = $request->validated();

        if ($user?->isStudent()) {
            $existing = $this->navigator->resolveOrder($user);

            if ($existing) {
                return $this->navigator->redirect($user)
                    ->with('error', 'Anda sudah memiliki pesanan toga. Setiap mahasiswa hanya dapat melakukan satu kali pemesanan.');
            }

            $payload['nim'] = $user->nim;
            $payload['student_name'] = $user->name;
            $payload['user_id'] = $user->id;
        }

        $order = $orderService->createOrder($payload);

        $showParams = ['orderCode' => $order->order_code];

        if (! $user?->isStudent()) {
            $showParams['token'] = $order->public_token;
        }

        return redirect()
            ->route('wisuda.order.show', $showParams)
            ->with('success', 'Pesanan toga wisuda berhasil dibuat. Silakan bayar ke rekening BRI BritAma Bisnis DWP POLTEKES BANTEN, lalu unggah bukti pembayaran.');
    }

    public function showOrder(Request $request, string $orderCode)
    {
        $order = $this->findPublicOrder($request, $orderCode);

        if ($request->user()?->isStudent() && $order->isPaymentVerified()) {
            return redirect()->route('wisuda.payment.verified');
        }

        return view('wisuda.show', [
            'order' => $order,
            'config' => config('wisuda'),
            'togaProduct' => DwpCatalogProduct::canonicalToga(),
        ]);
    }

    public function payment(Request $request, string $orderCode)
    {
        $order = $this->findPublicOrder($request, $orderCode);

        if ($request->user()?->isStudent() && $order->isPaymentVerified()) {
            return redirect()->route('wisuda.payment.verified');
        }

        return view('wisuda.payment', [
            'order' => $order,
            'config' => config('wisuda'),
            'togaProduct' => DwpCatalogProduct::canonicalToga(),
        ]);
    }

    public function uploadPaymentProof(UploadWisudaPaymentProofRequest $request, string $orderCode)
    {
        $order = $this->findPublicOrder($request, $orderCode);
        $user = $request->user();

        if ($user?->isStudent()) {
            $this->authorize('uploadPaymentProof', $order);
        }

        if (! $order->allowsPaymentProofUpload()) {
            return back()->with('error', 'Pesanan ini tidak dapat diunggah bukti pembayarannya.');
        }

        $file = $request->file('payment_proof');
        $extension = strtolower($file->getClientOriginalExtension());
        $storedName = Str::uuid()->toString().'.'.$extension;
        $directory = 'wisuda/payment-proofs/'.$order->id;
        $path = $directory.'/'.$storedName;

        if ($order->payment_proof_path && Storage::disk('local')->exists($order->payment_proof_path)) {
            Storage::disk('local')->delete($order->payment_proof_path);
        }

        Storage::disk('local')->putFileAs($directory, $file, $storedName);

        $order->update([
            'payment_proof_path' => $path,
            'payment_proof_original_name' => $file->getClientOriginalName(),
            'payment_proof_mime' => $file->getMimeType() ?? 'application/octet-stream',
            'payment_proof_size' => $file->getSize(),
            'payment_uploaded_at' => now(),
            'payment_status' => 'uploaded',
            'status' => 'payment_uploaded',
            'payment_rejected_at' => null,
            'payment_rejected_by' => null,
            'rejection_note' => null,
        ]);

        $redirectParams = ['orderCode' => $order->order_code];

        if (! $user?->isStudent()) {
            $redirectParams['token'] = $order->public_token;
        }

        return redirect()
            ->route('wisuda.payment', $redirectParams)
            ->with('success', 'Bukti pembayaran berhasil diunggah. Tim Sekretariat DWP Poltekkes Kemenkes Banten akan melakukan verifikasi.');
    }

    private function findPublicOrder(Request $request, string $orderCode): GraduationTogaOrder
    {
        $order = GraduationTogaOrder::where('order_code', $orderCode)->firstOrFail();
        $user = $request->user();

        if ($user?->isStudent()) {
            $this->authorize('view', $order);

            return $order;
        }

        $token = (string) $request->query('token', $request->input('token', ''));

        if ($order->public_token && $token !== '' && ! hash_equals($order->public_token, $token)) {
            abort(403, 'Token akses pesanan tidak valid.');
        }

        if ($order->public_token && $token === '') {
            abort(403, 'Token akses pesanan diperlukan.');
        }

        return $order;
    }
}
