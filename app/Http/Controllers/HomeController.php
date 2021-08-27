<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Events\Notify;
use App\Events\TestEvent;
use App\Events\NotifyEvent;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Notifications\laravelNotifyTest;
use Illuminate\Support\Facades\Notification;


class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }

    public function publicChanel(){

       event( new TestEvent('ok'));
    }


    public function notify(){

        $users = User::where('id' , '!=' , Auth::id())->get();


        return view('sendnotify', compact('users'));


    }
    public function notifyStore(Request $request){

        $request->validate([

            'messsage'=>'required',
            'user'=>'required'
        ]);


        $data =[

            'message'=>$request->messsage,
            'id'=>$request->user
        ];

        $user = User::findOrfail($request->user);

        // event( new NotifyEvent($data ));


        Notification::send($user, new laravelNotifyTest($data));
        // Auth::user()->notify(new laravelNotifyTest($data));
        // event(new laravelNotifyTest($data));

        return redirect()->back()->with('success', 'done');



    }

}
