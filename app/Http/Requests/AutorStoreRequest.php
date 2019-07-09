<?php

namespace App\Http\Requests;

use App\Http\Requests\BaseStoreRequest;

class AutorStoreRequest extends BaseStoreRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        $this->filters();
        return [
            'f_name' => 'required | regex:/[\w]*/i | max:30',
            'l_name' => 'required | regex:/[\w]*/i | max:30',
        ];
    }

    public function messages()
    {
        return [
            'f_name.required' => 'Поле обязательно к заполнению',
            'f_name.regex' => 'Использованы недопустимые символы',
            'f_name.max' => 'Максимальная длинна 20 символов',
            'l_name.required' => 'Поле обязательно к заполнению',
            'l_name.regex' => 'Использованы недопустимые символы',
            'l_name.max' => 'Максимальная длинна 20 символов'
        ];
    }
}
