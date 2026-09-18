<?php

namespace App\Services;

use App\Models\GraduationTogaOrder;
use App\Models\User;
use App\Support\NimNormalizer;
use Illuminate\Http\RedirectResponse;

class StudentTogaNavigator
{
    public function resolveOrder(User $user): ?GraduationTogaOrder
    {
        $owned = GraduationTogaOrder::query()
            ->where('user_id', $user->id)
            ->orderBy('id')
            ->get();

        if ($owned->count() === 1) {
            return $owned->first();
        }

        if ($owned->count() > 1) {
            return $owned->first();
        }

        $nim = NimNormalizer::normalize($user->nim);

        if ($nim === '') {
            return null;
        }

        $byNim = GraduationTogaOrder::query()
            ->orderBy('id')
            ->get()
            ->filter(fn (GraduationTogaOrder $order) => NimNormalizer::normalize($order->nim) === $nim)
            ->values();

        if ($byNim->isEmpty()) {
            return null;
        }

        if ($byNim->count() === 1 && $byNim->first()?->user_id === null) {
            $byNim->first()->update(['user_id' => $user->id]);
        }

        return $byNim->first();
    }

    public function redirect(User $user): RedirectResponse
    {
        return redirect()->to($this->destinationUrl($user));
    }

    public function destinationUrl(User $user): string
    {
        $order = $this->resolveOrder($user);

        if ($order === null) {
            return route('wisuda.order.create');
        }

        if ($order->isPaymentVerified()) {
            return route('wisuda.payment.verified');
        }

        return route('wisuda.payment', ['orderCode' => $order->order_code]);
    }
}
