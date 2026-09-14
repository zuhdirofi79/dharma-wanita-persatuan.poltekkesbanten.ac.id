@php
    $hours = $hours ?? config('wisuda');
@endphp
@once
<style>
.wisuda-hours-card{background:#f0fdfa;border:1px solid #99f6e4;border-radius:8px;padding:12px 14px;margin:10px 0 0;color:#134e4a;max-width:100%;box-sizing:border-box}
.wisuda-hours-card-title{display:block;font-size:13px;font-weight:700;margin:0 0 4px;color:#0f766e}
.wisuda-hours-card p{margin:0;font-size:13px;line-height:1.5;color:#334155}
.wisuda-hours-card p + p{margin-top:4px}
.wisuda-field-help{display:block;margin-top:4px;font-size:12px;color:#64748b;line-height:1.4}
.wisuda-field-error{color:#dc2626;font-size:0.875rem;margin-top:0.25rem}
</style>
@endonce
<div class="wisuda-hours-card" role="note">
    <strong class="wisuda-hours-card-title">Jam Layanan Narahubung</strong>
    <p>{{ $hours['contact_hours_days'] }} · {{ $hours['contact_hours_time'] }}</p>
    <p>{{ $hours['contact_hours_note'] }}</p>
    <p>{{ $hours['contact_hours_full'] }}</p>
</div>
