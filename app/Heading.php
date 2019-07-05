<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Heading extends Model
{
    public function books(){
        return $this->belongsToMany('App\Book', 'book_heading', 'heading_id', 'book_id');
    }


    public function getCountBAttribute()
    {
        return $this->books()->count();
    }
}
