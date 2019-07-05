<?php

use Illuminate\Database\Seeder;

class BookAutorTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        $books = DB::select('SELECT id FROM books ORDER BY id');
        $books = (!empty($books))? array_map(function($item){ return $item->id; },$books) : null;

        $autors = DB::select('SELECT id FROM autors ORDER BY id');
        $autors = (!empty($autors))? array_map(function($item){ return $item->id; },$autors) : null;

        if(!empty($books) and !empty($autors)){
            foreach($books as $book){
                $temp_count = rand(1,4);
                $temp_autors = array_rand($autors, $temp_count);
                if(!empty($temp_autors)){
                    foreach ((array)$temp_autors as $autor_item){
                        if(!empty($autor_item)){
                            DB::table('book_autor')->insert([
                                'book_id' => $book,
                                'autor_id' => $autor_item,
                                'created_at' => date("Y-m-d H:i:s"),
                            ]);
                        }
                    }
                }
            }
        }
    }
}
