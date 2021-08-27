<?php

namespace App\Http\Controllers;

use App\Models\Message;
use Illuminate\Http\Request;
use App\Events\NewMessageEvent;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class MessageController extends Controller
{


    public function __construct()
    {
        $this->middleware('auth');
    }


public function index(){

    $messages =Message::with('user')->get();
    return view('message' , compact('messages'));

}


public function store(Request $request){

    $validator = Validator::make($request->all(),[
        'message'=>'required'
    ]);

    if($validator->fails()){
        return response()->json(['success'=>false, 'errors'=>$validator->errors()], 301);
    }

    $message = new Message();
    $message->user_id =Auth::id();
    $message->body =$request->message;
    $message->save();

    $data = [

        'body'=>$message->body,
        'user_id' =>Auth::id(),
        'user_name' =>Auth::user()->name,
        'date'=>$message->created_at->format('d M Y  h:i A')

    ];
    broadcast(new NewMessageEvent( $data))->toOthers();

    return response()->json(['success'=>true, 'data'=>$message], 200);
}
}
