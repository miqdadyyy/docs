# Documentation

### ButterKnife Download
```
implementation 'com.jakewharton:butterknife:8.8.1'
annotationProcessor 'com.jakewharton:butterknife-compiler:8.8.1'
```

### Laravel 5.6 Error Migration
```
<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;


public function boot()
{
    Schema::defaultStringLength(191);
}
```
