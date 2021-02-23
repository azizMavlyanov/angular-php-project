#!/bin/bash

cd /app
php artisan config:clear
php artisan cache:clear
php artisan migrate --force
