<?php

namespace App\Rules;

use Illuminate\Contracts\Validation\Rule;

class ValueExist implements Rule
{

    protected $data_arr = [];
    /**
     * Create a new rule instance.
     *
     * @return void
     */
    public function __construct($big_arr=null)
    {
        if(!empty($big_arr)){
            $this->data_arr = $big_arr;
        }
    }

    /**
     * Determine if the validation rule passes.
     *
     * @param  string  $attribute
     * @param  mixed  $value
     * @return bool
     */
    public function passes($attribute, $value)
    {
        $t_data = explode('.',$attribute);

        return (!empty($t_data[1]) and in_array((int)$t_data[1], $this->data_arr))? true : false ;
    }

    /**
     * Get the validation error message.
     *
     * @return string
     */
    public function message()
    {
        return "Ошибочное значение";
    }
}
