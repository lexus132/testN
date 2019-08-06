<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Heading;
use Illuminate\Support\Facades\Validator;
use App\Http\Requests\HeadingStoreRequest;


class HeadingController extends Controller
{

    public function __construct()
    {
        $this->model = new Heading();
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('heading.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(HeadingStoreRequest $request)
    {
        $rez = [
            'status' => 400,
            'message' => 'Some error',
            'content' => ''
        ];

        $data = $request->all();
        $data['created_at'] = date("Y-m-d H:i:s");
        if($id = $this->model::insertGetId($data)){
            $rez['link'] = route('heading.show', ['id' => $id]);
            $rez['status'] = 200;
            $rez['message'] = 'Ok';
        }

        return response()->json($rez,$rez['status']);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $item = $this->model::find($id);
        $this->data['item'] = $item;
        if(!empty($item)){
            $this->data['books'] = $item->books;
        } else {
            return redirect(route('heading.index'));
        }
        return view('heading.show')->withData($this->data);
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
        return view('heading.create')->withData($this->data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(HeadingStoreRequest $request, $id)
    {
        $rez = [
            'status' => 400,
            'message' => 'Some error',
            'content' => ''
        ];

        if(!empty($id) and $this->model::find($id)){
            $data = $request->except('_method','id');
            if( $this->model::where('id',$id)->update($data)){
                $rez['link'] = route('heading.show', ['id' => $id]);
                $rez['status'] = 200;
                $rez['message'] = 'Ok';
            }
        } else {
            $rez['message'] = 'Some error';
        }
        return response()->json($rez,$rez['status']);
    }

}
