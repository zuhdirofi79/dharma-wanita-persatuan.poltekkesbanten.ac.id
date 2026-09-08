<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\DwpCatalogCategory;
use App\Models\DwpCatalogProduct;
use App\Models\GraduationTogaOrder;
use App\Services\AcademicQueueService;
use App\Services\ProgressStatsService;
use Illuminate\Support\Facades\Schema;

class DashboardController extends Controller
{
    public function __construct(
        private ProgressStatsService $progressStats,
        private AcademicQueueService $queueService,
    ) {}

    public function index()
    {
        $user = auth()->user();
        $studyProgramId = $user->isAdminJurusan() ? $user->study_program_id : null;

        return view('admin.dashboard', [
            'stats' => $this->progressStats->dashboardStats($studyProgramId),
            'queueStats' => $this->queueService->dashboardStats(),
            'catalogStats' => [
                'categories' => Schema::hasTable('dwp_catalog_categories') ? DwpCatalogCategory::query()->count() : 0,
                'products' => Schema::hasTable('dwp_catalog_products') ? DwpCatalogProduct::query()->count() : 0,
                'active_products' => Schema::hasTable('dwp_catalog_products')
                    ? DwpCatalogProduct::query()->where('is_active', true)->count()
                    : 0,
            ],
            'wisudaStats' => [
                'total' => Schema::hasTable('graduation_toga_orders') ? GraduationTogaOrder::query()->count() : 0,
                'uploaded' => Schema::hasTable('graduation_toga_orders')
                    ? GraduationTogaOrder::query()->whereNotNull('payment_proof_path')->count()
                    : 0,
                'verified' => Schema::hasTable('graduation_toga_orders')
                    ? GraduationTogaOrder::query()->where('payment_status', 'verified')->count()
                    : 0,
            ],
        ]);
    }
}
