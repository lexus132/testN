<?php

use Illuminate\Database\Seeder;

class BookHeadingTableSeeder extends Seeder
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

        $heading = DB::select('SELECT id FROM headings ORDER BY id');
        $heading = (!empty($heading))? array_map(function($item){ return $item->id; },$heading) : null;

        if(!empty($books) and !empty($heading)){
            foreach($books as $book){
                $temp_count = rand(1,3);
                $temp_head = array_rand($heading, $temp_count);
                if(!empty($temp_head)){
                    foreach ((array)$temp_head as $head_item){
                        if(!empty($head_item)){
                            DB::table('book_heading')->insert([
                                'book_id' => $book,
                                'heading_id' => $head_item,
                                'created_at' => date("Y-m-d H:i:s"),
                            ]);
                        }
                    }
                }
            }
        }
    }
}
