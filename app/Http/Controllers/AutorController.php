<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Autor;
use Illuminate\Support\Facades\Validator;

class AutorController extends Controller
{

    private $rule= [
        'f_name' => 'required | regex:/[\w]*/i | max:30',
        'l_name' => 'required | regex:/[\w]*/i | max:30',
    ];

    private $rule_message = [
        'f_name.required' => 'Поле обязательно к заполнению',
        'f_name.regex' => 'Использованы недопустимые символы',
        'f_name.max' => 'Максимальная длинна 20 символов',
        'l_name.required' => 'Поле обязательно к заполнению',
        'l_name.regex' => 'Использованы недопустимые символы',
        'l_name.max' => 'Максимальная длинна 20 символов'
    ];

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
    public function store(Request $request)
    {
        $rez = [
            'status' => 400,
            'message' => 'Some error',
            'content' => ''
        ];

        $validator = Validator::make($request->all(), $this->rule, $this->rule_message);

        if (!$validator->fails())
        {
            $data = $request->all();
            $data['created_at'] = date("Y-m-d H:i:s");
            if($id = $this->model::insertGetId($data)){
                $rez['link'] = route('autor.show', ['id' => $id]);
                $rez['status'] = 200;
                $rez['message'] = 'Ok';
            }
        } else {
            $rez['errors'] = $validator->errors();
        }
        return response()->json($rez);
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
    public function update(Request $request, $id)
    {
        $rez = [
            'status' => 400,
            'message' => 'Some error',
            'content' => ''
        ];

        $validator = Validator::make($request->except('_method'), $this->rule, $this->rule_message);

        if(!empty($id) and $this->model::find($id)){
            if (!$validator->fails()){
                $data = $request->except('_method','id');
                if( $this->model::where('id',$id)->update($data)){
                    $rez['link'] = route('autor.show', ['id' => $id]);
                    $rez['status'] = 200;
                    $rez['message'] = 'Ok';
                }
            } else {
                $rez['errors'] = $validator->errors();
            }
        } else {
            $rez['message'] = 'Some error';
        }
        return response()->json($rez);
    }

}
