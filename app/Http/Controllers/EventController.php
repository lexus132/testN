<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

//use Auth;
use App\User;
use DB;
use App\Events\SomeEvent;
use Illuminate\Support\Facades\Event;

class EventController extends Controller
{

    public function index(Request $request)
    {
        $ids_data = DB::select('SELECT id FROM users');
        if(!empty($ids_data)){
            $ids = array_reduce($ids_data, function($c,$i){ $c[$i->id]=$i->id; return $c; },[]);
            $id = array_rand($ids,1);

            $user = User::find($id);
            $data = (object)[
                'message' => "Some Ok!"
            ];

//            dd($user);

//            Event::fire(new SomeEvent($user,$data));

            event(new SomeEvent($user,$data));

            return response()->json([
                'user' => $user->toArray(),
            ],200);
        }
        return abort(404);
    }
}
