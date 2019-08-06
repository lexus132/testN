<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Book;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->model = new Book();
    }



    public function index(Request $request)
    {

        $this->data['items_link'] = "book.show";

        $this->data['items'] = $this->model::paginate(9);

        return view('home')->withData($this->data);
    }
}
