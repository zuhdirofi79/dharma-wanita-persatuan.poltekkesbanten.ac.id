<?php

namespace App\Http\Controllers\Student;

use App\Http\Controllers\Controller;
use App\Models\DwpCatalogProduct;
use App\Services\StudentTogaNavigator;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function __construct(private StudentTogaNavigator $navigator) {}

    public function index(Request $request)
    {
        $user = $request->user();
        $order = $this->navigator->resolveOrder($user);

        return view('student.dashboard', [
            'student' => $user,
            'order' => $order,
            'config' => config('wisuda'),
            'togaProduct' => DwpCatalogProduct::canonicalToga(),
            'continueUrl' => $this->navigator->destinationUrl($user),
        ]);
    }

    public function myOrder(Request $request)
    {
        return $this->navigator->redirect($request->user());
    }

    public function verified(Request $request)
    {
        $order = $this->navigator->resolveOrder($request->user());

        if ($order === null) {
            return redirect()->route('wisuda.order.create');
        }

        if (! $order->isPaymentVerified()) {
            return $this->navigator->redirect($request->user());
        }

        return view('wisuda.verified', [
            'order' => $order,
            'config' => config('wisuda'),
            'togaProduct' => DwpCatalogProduct::canonicalToga(),
        ]);
    }
}
