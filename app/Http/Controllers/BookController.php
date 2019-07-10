<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Book;
use App\Autor;
use App\Heading;
use Illuminate\Support\Facades\Validator;
use DB;
use App\Http\Requests\BookStoreRequest;

class BookController extends Controller
{
//    private $rule= [
//        'name' => 'required | regex:/[\w]*/i | max:50',
//        'img' => 'required | image | mimes:jpeg,png,jpg,gif,svg | max:2048',
//        'autors' => 'required | array | min:1',
//        'headings' => 'required | array | min:1',
//    ];
//
//    private $rule_message = [
//
//        'name.required' => 'Поле обязательно к заполнению',
//        'name.regex' => 'Использованы недопустимые символы',
//        'name.max' => 'Максимальная длинна 50 символов',
//
//        'img:required'  => 'Изображение обязательно',
//        'img:image'	    => 'Изображение должно быть в формате: jpeg,png,jpg,gif,svg',
//        'img:mimes'	    => 'Изображение должно быть в формате: jpeg,png,jpg,gif,svg',
//        'img:max'	    => 'Максимальный размер файла 2Mb'
//    ];

    public function __construct()
    {
        $this->model = new Book();
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $this->data['autors'] = Autor::all();
        $this->data['headings'] = Heading::all();
        return view('book.create')->withData($this->data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(BookStoreRequest $request)
    {
        $rez = [
            'status' => 400,
            'message' => 'Some error',
            'content' => ''
        ];

//        $validator = Validator::make($request->all(), $this->rule, $this->rule_message);
//
//        if (!$validator->fails()){
//            $inputs = $request->all();
//            if(!empty($inputs['autors'])){
//                foreach ($inputs['autors'] as $key => $val){
//                    $t_item = Autor::find($key);
//                    if(empty($t_item->name)){
//                        $validator->errors()->add("autors[$key]", 'Нет такого значения');
//                    }
//                }
//            }
//            if(!empty($inputs['headings'])){
//                foreach ($inputs['headings'] as $key => $val){
//                    $t_item = Heading::find($key);
//                    if(empty($t_item->name)){
//                        $validator->errors()->add("headings[$key]", 'Нет такого значения');
//                    }
//                }
//            }
//        }
//
//        if (count($validator->errors()) == 0)
//        {
            $image = time().'.'.$request->img->getClientOriginalExtension();
            $request->img->move(public_path('img'), $image);
            $imageName = "/img/$image";

            $id = $this->model::insertGetId([
                'name' => $request->name,
                'img' => $imageName,
                'created_at' => date("Y-m-d H:i:s"),
            ]);
            $inputs = $request->all();
            foreach ($inputs['autors'] as $key => $val){
                DB::insert('insert into book_autor (book_id,autor_id,created_at) values (?,?,?)', [$id,$key,date("Y-m-d H:i:s")]);
            }
            foreach ($inputs['headings'] as $key => $val){
                DB::insert('insert into book_heading (book_id,heading_id,created_at) values (?,?,?)', [$id,$key,date("Y-m-d H:i:s")]);
            }

            $rez['link'] = route('book.show', ['id' => $id]);
            $rez['status'] = 200;
            $rez['message'] = 'Ok';

//        } else {
//            $rez['errors'] = $validator->errors();
//        }
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

        $book = $this->model::find($id);
        $this->data['book'] = $book;
        if(!empty($book)){
            $this->data['autors'] = $book->autors;
            $this->data['headings'] = $book->headings;
        } else {
            return redirect(route('book.index'));
        }
        return view('book.show')->withData($this->data);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $book = $this->model::find($id);
        $this->data['item'] = $book;
        $this->data['autors'] = Autor::all();
        $this->data['headings'] = Heading::all();
        if(!empty($book)){
            $this->data['exist_autors'] = array_map(function($item){ return $item['id']; },$book->autors->toArray());
            $this->data['exist_headings'] = array_map(function($item){ return $item['id']; },$book->headings->toArray());
        }
        return view('book.update')->withData($this->data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(BookStoreRequest $request, $id)
    {
        $rez = [
            'status' => 400,
            'message' => 'Some error',
            'content' => ''
        ];

//        $validator = Validator::make($request->all(), [
//            'name' => 'required | regex:/[\w]*/i | max:50',
//            'autors' => 'required | array | min:1',
//            'autors.*' => 'exists:autors,id',
//            'headings' => 'required | array | min:1',
//            'headings.*' => 'exists:headings,id',
//        ], $this->rule_message);

//        dump($validator);
//        dump($validator->errors());
//        dd($validator->errors()->all());

        if(!empty($id) and $this->model::find($id)){
//            if (!$validator->fails()){
//                $inputs = $request->all();
//                if(!empty($inputs['autors'])){
//                    foreach ($inputs['autors'] as $key => $val){
//                        $t_item = Autor::find($key);
//                        if(empty($t_item->name)){
//                            $validator->errors()->add("autors[$key]", 'Нет такого значения');
//                        }
//                    }
//                }
//                if(!empty($inputs['headings'])){
//                    foreach ($inputs['headings'] as $key => $val){
//                        $t_item = Heading::find($key);
//                        if(empty($t_item->name)){
//                            $validator->errors()->add("headings[$key]", 'Нет такого значения');
//                        }
//                    }
//                }
//            }

//            if (count($validator->errors()) == 0){
                $imageName = $this->model::find($id)->img;
                if($request->has('img')){
                    $image = time().'.'.$request->img->getClientOriginalExtension();
                    $request->img->move(public_path('img'), $image);
                    $imageName = "/img/$image";
                }

                $this->model::where('id',$id)->update([
                                                'name' => $request->name,
                                                'img' => $imageName
                                            ]);
                $inputs = $request->all();
                DB::select("DELETE FROM book_autor WHERE book_id = :id", ['id' => $id]);
                foreach ($inputs['autors'] as $key => $val){
                    DB::insert('insert into book_autor (book_id,autor_id,created_at) values (?,?,?)', [$id,$key,date("Y-m-d H:i:s")]);
                }
                DB::select("DELETE FROM book_heading WHERE book_id = :id", ['id' => $id]);
                foreach ($inputs['headings'] as $key => $val){
                    DB::insert('insert into book_heading (book_id,heading_id,created_at) values (?,?,?)', [$id,$key,date("Y-m-d H:i:s")]);
                }
                $rez['link'] = route('book.show', ['id' => $id]);
                $rez['status'] = 200;
                $rez['message'] = 'Ok';
//            } else {
//                $rez['errors'] = $validator->errors();
//            }
        } else {
            $rez['message'] = 'Some error';
        }
        return response()->json($rez,$rez['status']);
    }

}
