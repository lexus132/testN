<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Auth;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    protected $model;
    protected $data=[];

    public function __construct()
    {
        $this->middleware('admin');
    }


    public function index(Request $request)
    {
        $temp_part = $request->route()->getName();
        if(!empty($temp_part) and stripos($temp_part, '.')){
            $temp_part = explode('.',$temp_part)[0];
        } else {
            $temp_part = 'book';
        }

        $this->data['items_link'] = $temp_part . ".show";
        $this->data['items'] = $this->model::paginate(15);

        return view('index')->withData($this->data);
    }

    public function destroy($id)
    {
        $rez = [
            'status' => 400,
            'message' => 'Some error',
            'content' => ''
        ];
        if(!empty($id) and !empty($this->model::find($id))){
            if($this->model::find($id)->delete()){
                $rez['status'] = 200;
                $rez['message'] = 'Ok';
            }
        }
        return response()->json($rez);
    }

}
