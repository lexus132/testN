<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;

class CacheController extends Controller
{

    public function index(Request $request)
    {
        dump('-- Start');

        $data = Cache::store();

        dd($data);
    }
}
