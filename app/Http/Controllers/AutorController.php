<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Autor;
use Illuminate\Support\Facades\Validator;
use App\Http\Requests\AutorStoreRequest;

class AutorController extends Controller
{

    public function __construct()
    {
        $this->model = new Autor();
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('autor.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(AutorStoreRequest $request)
    {
        $rez = [
            'status' => 400,
            'message' => 'Some error',
            'content' => ''
        ];
        $data = $request->all();
        $data['created_at'] = date("Y-m-d H:i:s");
        if($id = $this->model::insertGetId($data)){
            $rez['link'] = route('autor.show', ['id' => $id]);
            $rez['status'] = 200;
            $rez['message'] = 'Ok';
        }
        return response()->json($rez,$rez['status']);
    }

    public function show($id)
    {
        $item = $this->model::find($id);
        $this->data['item'] = $item;
        if(!empty($item)){
            $this->data['books'] = $item->books;
        } else {
            return redirect(route('autor.index'));
        }
        return view('autor.show')->withData($this->data);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $this->data['item'] = $this->model::find($id);
        return view('autor.create')->withData($this->data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(AutorStoreRequest $request, $id)
    {
        $rez = [
            'status' => 400,
            'message' => 'Some error',
            'content' => ''
        ];

        if(!empty($id) and $this->model::find($id)){
            $data = $request->except('_method','id');
            if( $this->model::where('id',$id)->update($data)){
                $rez['link'] = route('autor.show', ['id' => $id]);
                $rez['status'] = 200;
                $rez['message'] = 'Ok';
            }
        } else {
            $rez['message'] = 'Some error';
        }
        return response()->json($rez,$rez['status']);
    }

}
