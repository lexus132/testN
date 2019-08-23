<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Autor extends Model
{
    protected $fillable = ['f_name','l_name'];

    public function books(){
        return $this->belongsToMany('App\Book', 'book_autor', 'autor_id', 'book_id');
    }

    public function getNameAttribute()
    {
        return "{$this->f_name} {$this->l_name}";
    }

    public function getCountBAttribute()
    {
        return $this->books()->count();
    }
}
