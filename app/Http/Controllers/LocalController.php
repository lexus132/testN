<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\City;

class LocalController extends Controller
{
    public function __construct()
    {
        $this->model = new City();
    }


    public function index(Request $request)
    {
        $this->data['items'] = $this->model::where('country_code', 'UA')->paginate(15);
        return view('local.index')->withData($this->data);
    }
}
