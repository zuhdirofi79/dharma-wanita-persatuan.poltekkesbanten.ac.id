                <div class="wisuda-order-flow" aria-label="Alur Pemesanan Toga">
                    <p class="wisuda-order-flow-title">Alur Pemesanan Toga</p>
                    <ol class="wisuda-order-flow-steps">
                        <li>Isi Data Pemesan</li>
                        <li>Lakukan Pembayaran</li>
                        <li>Upload Bukti Pembayaran</li>
                        <li>Konfirmasi Tim Sekretariat DWP</li>
                    </ol>
                </div>

                <div class="wisuda-checkout-summary" id="wisudaCheckoutSummary"
                     data-unit-price="{{ $togaProduct->unitPrice() }}">
                    Ringkasan pilihan: <strong id="summaryProdi">Belum dipilih</strong> ·
                    Ukuran <strong id="summarySize">All Size</strong> ·
                    Jumlah <strong id="summaryQty">1</strong><br>
                    Harga satuan: <strong id="summaryUnitPrice">{{ $togaProduct->displayPrice() }}</strong> ·
                    Perkiraan total: <strong id="summaryTotal">{{ $togaProduct->estimatedTotal((int) old('quantity', 1)) }}</strong>
                </div>

                @if($errors->any())
                    <div class="alert alert-error" style="margin-bottom:1rem;">
                        <ul style="margin:0;padding-left:1.1rem;">
                            @foreach($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif

                <form method="POST" action="{{ route('wisuda.order.store') }}" id="wisudaCheckoutForm">
                    @csrf
                    <input type="hidden" name="toga_size" id="formTogaSize" value="All Size">
                    <input type="hidden" name="quantity" id="formQuantity" value="{{ old('quantity', 1) }}">

                    <div class="wisuda-checkout-grid">
                        <div class="wisuda-checkout-col">
                            <div class="form-group">
                                <label for="student_name">Nama Lengkap <span style="color:#dc2626;">*</span></label>
                                <input type="text" name="student_name" id="student_name" class="form-control" value="{{ old('student_name', auth()->user()->name) }}" required readonly>
                            </div>
                            <div class="form-group">
                                <label for="nim">NIM <span style="color:#dc2626;">*</span></label>
                                <input type="text" name="nim" id="nim" class="form-control" value="{{ old('nim', auth()->user()->nim) }}" maxlength="50" required readonly>
                                <small class="wisuda-field-help">Setiap NIM hanya dapat melakukan satu kali pemesanan toga. NIM diambil dari akun login Anda.</small>
                                @error('nim')
                                    <div class="wisuda-field-error">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="study_program_id">Program Studi <span style="color:#dc2626;">*</span></label>
                                <select name="study_program_id" id="study_program_id" class="form-control" required>
                                    <option value="">-- Pilih Program Studi --</option>
                                    @foreach($studyPrograms as $program)
                                        <option value="{{ $program->id }}"
                                            data-name="{{ strtolower($program->name) }}"
                                            @selected(old('study_program_id') == $program->id)
                                        >{{ $program->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="graduation_year">Tahun Lulus <span style="color:#dc2626;">*</span></label>
                                <input
                                    type="number"
                                    name="graduation_year"
                                    id="graduation_year"
                                    class="form-control"
                                    value="{{ old('graduation_year') }}"
                                    placeholder="Contoh: 2026"
                                    min="2000"
                                    max="2099"
                                    required
                                >
                                @error('graduation_year')
                                    <div class="wisuda-field-error">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="gender">Jenis Kelamin <span style="color:#dc2626;">*</span></label>
                                <select name="gender" id="gender" class="form-control" required>
                                    <option value="">-- Pilih --</option>
                                    <option value="Laki-laki" @selected(old('gender') === 'Laki-laki')>Laki-laki</option>
                                    <option value="Perempuan" @selected(old('gender') === 'Perempuan')>Perempuan</option>
                                </select>
                            </div>
                        </div>
                        <div class="wisuda-checkout-col">
                            <div class="form-group">
                                <label for="email">Email <span style="color:#dc2626;">*</span></label>
                                <input type="email" name="email" id="email" class="form-control" value="{{ old('email') }}" required>
                            </div>
                            <div class="form-group">
                                <label for="transfer_sender_name">Nama Orang Tua/Pengirim Transfer <span style="color:#dc2626;">*</span></label>
                                <input
                                    type="text"
                                    name="transfer_sender_name"
                                    id="transfer_sender_name"
                                    class="form-control"
                                    value="{{ old('transfer_sender_name') }}"
                                    maxlength="150"
                                    autocapitalize="words"
                                    required
                                >
                                <small class="wisuda-field-help">Wajib diisi sesuai nama pemilik rekening atau nama pengirim yang akan tampil pada bukti transfer agar Tim Sekretariat dapat melakukan verifikasi pembayaran dengan lebih mudah.</small>
                                @error('transfer_sender_name')
                                    <div class="wisuda-field-error">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="toga_size_display">Ukuran Toga</label>
                                <input type="text" id="toga_size_display" class="form-control" value="All Size" readonly>
                            </div>
                            <div class="form-group">
                                <label for="phone">Nomor HP/Telepon <span style="color:#dc2626;">*</span></label>
                                <input type="text" name="phone" id="phone" class="form-control" value="{{ old('phone') }}" placeholder="08xxxxxxxxxx" required>
                            </div>
                            <div class="form-group">
                                <label for="size_note">Catatan Tambahan</label>
                                <textarea name="size_note" id="size_note" class="form-control" rows="4" placeholder="Opsional: catatan tambahan untuk Tim Sekretariat DWP Poltekkes Kemenkes Banten.">{{ old('size_note') }}</textarea>
                            </div>
                        </div>
                        <div class="form-group full">
                            <label style="display:flex;align-items:flex-start;gap:0.5rem;font-weight:500;">
                                <input type="checkbox" name="confirm" value="1" {{ old('confirm') ? 'checked' : '' }} style="margin-top:0.25rem;" required>
                                <span>Saya menyatakan data pemesanan toga wisuda yang diisi sudah benar.</span>
                            </label>
                        </div>
                    </div>

                    @include('partials.dwp-payment-card')
                    <p class="dwp-pay-hint">Pastikan nama pemesan sesuai dengan data yang diisi agar verifikasi lebih mudah.</p>

                    <div class="wisuda-cta-row">
                        <button type="submit" class="wisuda-btn-primary">Kirim Pemesanan</button>
                    </div>
                </form>
