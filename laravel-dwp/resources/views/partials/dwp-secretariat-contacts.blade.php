@php
    $dwp = $dwp ?? config('dwp');
@endphp
<div class="dwp-secretariat">
    <p style="margin:0 0 8px;"><strong>Kontak Sekretariat DWP:</strong></p>
    <p style="margin:0 0 4px;">Dias Arliadini ({{ $dwp['contact_phone_primary'] }})</p>
    <p style="margin:0 0 12px;">Putri Ratna Dewi ({{ $dwp['contact_phone_secondary'] }})</p>
    <div class="dwp-hero-actions dwp-contact-actions" style="margin-top:0;">
        <a href="{{ $dwp['contact_wa_primary'] }}" target="_blank" rel="noopener noreferrer" class="dwp-btn dwp-btn-primary">Hubungi Dias Arliadini</a>
        <a href="{{ $dwp['contact_wa_secondary'] }}" target="_blank" rel="noopener noreferrer" class="dwp-btn dwp-btn-outline">Hubungi Putri Ratna Dewi</a>
    </div>
</div>
