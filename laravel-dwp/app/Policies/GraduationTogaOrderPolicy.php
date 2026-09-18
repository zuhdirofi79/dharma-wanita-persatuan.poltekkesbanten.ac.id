<?php

namespace App\Policies;

use App\Models\GraduationTogaOrder;
use App\Models\User;
use App\Support\NimNormalizer;

class GraduationTogaOrderPolicy
{
    public function view(User $user, GraduationTogaOrder $order): bool
    {
        return $this->owns($user, $order);
    }

    public function uploadPaymentProof(User $user, GraduationTogaOrder $order): bool
    {
        return $this->owns($user, $order) && $order->allowsPaymentProofUpload();
    }

    private function owns(User $user, GraduationTogaOrder $order): bool
    {
        if (! $user->isStudent() || ! $user->is_active) {
            return false;
        }

        if ($order->user_id !== null) {
            return (int) $order->user_id === (int) $user->id;
        }

        return $user->nim !== null
            && NimNormalizer::normalize($order->nim) === NimNormalizer::normalize($user->nim);
    }
}
