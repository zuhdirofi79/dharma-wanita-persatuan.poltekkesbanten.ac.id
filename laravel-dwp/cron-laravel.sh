#!/bin/bash

PROJECT="/home/u708283844/domains/akademik.poltekkesbanten.ac.id/laravel-akademik-poltekkesbanten"

cd "$PROJECT" || exit 1

/usr/bin/php artisan schedule:run >> storage/logs/cron-schedule/log 2>&1 
