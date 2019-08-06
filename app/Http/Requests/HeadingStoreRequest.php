<?php

namespace App\Http\Requests;

use App\Http\Requests\BaseStoreRequest;

class HeadingStoreRequest extends BaseStoreRequest
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

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        $this->filters();
        return [
            'name' => 'required | regex:/[\w]*/i | min:2 | max:30'
        ];
    }

    public function messages()
    {
        return [
            'name.required' => 'Поле обязательно к заполнению',
            'name.regex' => 'Использованы недопустимые символы',
            'name.max' => 'Максимальная длинна 30 символов',
            'name.min' => 'Минимальная длинна 2 символов',
        ];
    }
}
