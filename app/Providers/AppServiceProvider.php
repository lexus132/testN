<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Blade;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Blade::directive('myImg', function($src){
//            if(File::exists(public_path().$item->img)) {{ asset($item->img) }} @else {{ config('app.no_img') }} @endif
            return "<?php if(File::exists(public_path().$src)){ echo asset($src); } else { echo config('app.no_img'); } ?>";
        });
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
