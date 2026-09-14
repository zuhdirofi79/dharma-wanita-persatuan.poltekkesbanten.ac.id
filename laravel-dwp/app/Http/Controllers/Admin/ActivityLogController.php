<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\AdminActivityLog;
use App\Support\AppTimezone;
use Illuminate\Http\Request;

class ActivityLogController extends Controller
{
    public function index(Request $request)
    {
        $query = AdminActivityLog::with('user')->latest('created_at');

        if ($request->filled('action')) {
            $query->where('action', $request->action);
        }

        if ($request->filled('user_id')) {
            $query->where('user_id', $request->user_id);
        }

        AppTimezone::applyLocalDateFilter(
            $query,
            'created_at',
            $request->input('date_from'),
            $request->input('date_to'),
        );

        return view('admin.activity-logs.index', [
            'logs' => $query->paginate(30)->withQueryString(),
            'actions' => AdminActivityLog::query()->distinct()->orderBy('action')->pluck('action'),
        ]);
    }
}
