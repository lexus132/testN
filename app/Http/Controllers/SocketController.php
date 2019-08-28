<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Message;
use App\Events\NewMessageEvent;

class SocketController extends Controller
{
    protected $data;

    public function index(Request $request)
    {
        return view('socket.index');
    }

    public function chatIndex(Request $request)
    {
        $this->data['messages'] = Message::all();

        return view('socket.chat')->withData((object)$this->data);
    }

    public function chatSend(Request $request)
    {
        $message = Message::create($request->all());
        event(new NewMessageEvent($message));
        return redirect()->back();
    }


}
