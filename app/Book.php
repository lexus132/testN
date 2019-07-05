<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Book extends Model
{

    public function autors(){
        return $this->belongsToMany('App\Autor', 'book_autor', 'book_id', 'autor_id');
    }

    public function headings(){
        return $this->belongsToMany('App\Heading', 'book_heading', 'book_id', 'heading_id');
    }

}
