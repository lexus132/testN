<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use DB;
use App\Autor;
use App\Heading;
use App\Rules\ValueExist;

class BookStoreRequest extends FormRequest
{
    public $autor_exist = [];
    public $heading_exist = [];

    protected $c_messages = [
        '*.required' => 'Поле :attribute обязательно к заполнению',
        '*.regex' => 'Использованы недопустимые символы',
        '*.max' => 'Максимальный размер :max',
        '*.min' => 'Мминимальный размер :min',

        'img:image'	    => 'Изображение должно быть в формате: jpeg,png,jpg,gif,svg',
        'img:mimes'	    => 'Изображение должно быть в формате: jpeg,png,jpg,gif,svg',
        'img:max'	    => 'Максимальный размер файла 2Mb',
    ];

    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        $this->PreParse();

        $c_rules = [
            'name' => 'required | regex:/[\w]*/i | max:50 | min:2',
            'autors' => 'required|array|min:1',
            'headings' => [ 'required','array','min:1' ],
            'autors.*' => [ new ValueExist($this->autor_exist) ],
            'headings.*' => [ new ValueExist($this->heading_exist) ],
        ];

        if($this->isMethod('POST')){
            $c_rules['img'] = 'required | image | mimes:jpeg,png,jpg,gif,svg | max:2048';
        }

        return $c_rules;
    }

    public function messages()
    {
        return $this->c_messages;
    }

    public function PreParse(){

        $a_data = Autor::find( array_keys( $this->autors ) )->toArray();
        $this->autor_exist = (!empty($a_data))? array_map(function($item){return $item['id'];}, $a_data) : [];

        $h_data = Heading::find( array_keys( $this->headings ) )->toArray();
        $this->heading_exist = (!empty($h_data))? array_map(function($item){return $item['id'];}, $h_data) : [];

    }
}
