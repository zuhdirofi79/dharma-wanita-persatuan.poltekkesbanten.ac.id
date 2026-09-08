@php
    $pay = $pay ?? config('dwp.payment');
    $accountNumber = $pay['account_number'] ?? '008401004160565';
@endphp
@once
<style>
.dwp-pay-card{background:#fff8f1;border:1px solid #f0d3b3;border-radius:16px;padding:18px 18px 16px;margin:16px 0;max-width:100%;box-sizing:border-box;overflow:hidden}
.dwp-pay-card h3{margin:0 0 4px;color:#0f172a;font-size:18px}
.dwp-pay-sub{margin:0 0 12px;color:#006b5b;font-weight:700}
.dwp-pay-card p{margin:0 0 10px;color:#334155;line-height:1.55}
.dwp-pay-rows{display:grid;gap:8px;margin:12px 0}
.dwp-pay-row{display:grid;grid-template-columns:minmax(120px,160px) minmax(0,1fr);gap:8px;align-items:start}
.dwp-pay-row span{color:#64748b}
.dwp-pay-row strong{color:#0f172a;word-break:break-word}
.dwp-pay-number{font-size:22px;letter-spacing:.02em}
.dwp-pay-copy{display:inline-flex;align-items:center;min-height:36px;padding:0 12px;border:0;border-radius:8px;background:#00856f;color:#fff;font-weight:700;cursor:pointer}
.dwp-pay-copy.is-copied{background:#006b5b}
.dwp-pay-note{font-size:13px;color:#64748b}
.dwp-pay-hint{margin:0 0 12px;color:#334155;font-size:14px}
@media (max-width:640px){.dwp-pay-row{grid-template-columns:1fr}.dwp-pay-number{font-size:18px}.dwp-pay-copy{width:100%;justify-content:center}}
</style>
@endonce
<aside class="dwp-pay-card">
    <h3>{{ $pay['title'] ?? 'Informasi Pembayaran' }}</h3>
    <p class="dwp-pay-sub">{{ $pay['bank_name'] ?? 'Bank BRI / BRI BritAma Bisnis' }}</p>
    <p>{{ $pay['instruction'] ?? 'Silakan melakukan pembayaran ke rekening berikut, kemudian unggah bukti pembayaran untuk diverifikasi oleh Tim Sekretariat DWP Poltekkes Kemenkes Banten.' }}</p>
    <div class="dwp-pay-rows">
        <div class="dwp-pay-row"><span>Nama Nasabah</span><strong>{{ $pay['account_name'] ?? 'DWP POLTEKES BANTEN' }}</strong></div>
        <div class="dwp-pay-row"><span>Jenis Rekening</span><strong>{{ $pay['account_type'] ?? 'Britama Bisnis' }}</strong></div>
        <div class="dwp-pay-row">
            <span>Nomor Rekening</span>
            <strong class="dwp-pay-number">{{ $accountNumber }}</strong>
        </div>
        <div class="dwp-pay-row"><span>Kantor Cabang</span><strong>{{ $pay['branch'] ?? 'KC Serang' }}</strong></div>
    </div>
    <button type="button" class="dwp-pay-copy" data-copy="{{ $accountNumber }}">Salin Nomor Rekening</button>
    <p class="dwp-pay-note" style="margin-top:12px;">{{ $pay['note'] ?? '' }}</p>
</aside>
<script>
(function () {
    document.querySelectorAll('.dwp-pay-copy').forEach(function (btn) {
        if (btn.dataset.bound === '1') return;
        btn.dataset.bound = '1';
        btn.addEventListener('click', function () {
            var value = btn.getAttribute('data-copy') || '';
            var done = function () {
                var old = btn.textContent;
                btn.textContent = 'Nomor rekening berhasil disalin';
                btn.classList.add('is-copied');
                setTimeout(function () {
                    btn.textContent = old;
                    btn.classList.remove('is-copied');
                }, 1800);
            };
            if (navigator.clipboard && navigator.clipboard.writeText) {
                navigator.clipboard.writeText(value).then(done).catch(function () {
                    window.prompt('Salin nomor rekening:', value);
                });
            } else {
                window.prompt('Salin nomor rekening:', value);
            }
        });
    });
})();
</script>
