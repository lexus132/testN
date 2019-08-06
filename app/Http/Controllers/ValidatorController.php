<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ValidatorController extends Controller
{
    public function index(Request $request)
    {
        return view();
    }

    public function handle(Request $request){
        $data = [
            'name' => ''
        ];

        $rules = [
            'name' => 'alpha'
        ];

        $messages = [
            '*.required' => ':attribute is required'
        ];

        return $this->rezult($data,$rules,$messages);
    }

    private function rezult($data,$rule,$message=null)
    {
        $validator = Validator::make($data,$rule,$message);
        return response()->json($validator->errors(), 200);
    }
}
