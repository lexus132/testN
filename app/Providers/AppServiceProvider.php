<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Blade;
use DB;
use Illuminate\Support\Carbon;

use App\Autor;
use App\Jobs\TestJober;
use Illuminate\Support\Facades\Event;

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
            return "<?php if(File::exists(public_path().$src)){ echo asset($src); } else { echo config('app.no_img'); } ?>";
        });

        Blade::directive('myPrint', function($perem){
            return "<?php echo '<pre><code>'; print_r($perem); echo '</code></pre>'; ?>";
        });

//        DB::listen(function ($query) {
////            print('<script type="text/javascript">' .
////                'console.log('.json_encode($query->sql).'); ' .
////                '</script> ');
//            	    dump($query->sql);
////                  dump($query->bindings);
////            	    dump($query->time);
//        });


//        Autor::created(function(Autor $autor){
//            dispatch( (new TestJober($autor))->delay(Carbon::now()->addSecond(10)) );
//        });
//
//        Autor::deleted(function(Autor $autor){
//            info("deleted $autor->f_name");
//        });

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
