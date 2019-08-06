<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class BaseStoreRequest extends FormRequest
{
    protected function filters()
    {
        foreach($this->all() as $key => $val){
            if(gettype($this->{$key}) == 'string'){
                $this->merge([ $key => preg_replace("/[\s]+/"," ", trim( strip_tags($val) )) ]);
            }
        }
    }
}
