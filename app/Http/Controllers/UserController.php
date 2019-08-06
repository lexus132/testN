<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Admin;
use App\User;

class UserController extends Controller
{
    public function index(Request $request)
    {
//        if($request->has('uid')){
//
//            $user = User::find($request->uid);
//
////            dump($admin);
//
////            Auth::guard()->logout();
////            $request->session()->invalidate();
////            Auth::guard('admin')->check();
//
////            dd(Auth::guard('admin')->user());
//
////            Auth::guard('admin')->check();
//
////            Auth::guard('admin')->check();
////            Auth::loginUsingId(2);
//
//            Auth::login($user);
//
////            Auth::onceUsingId($user->id,true);
//
////            Auth::attempt(['email' => $user->email, 'password' => 'admin'], true);
//
////            Auth::attempt($admin);
//
////            Auth::admin()->attempt(['email' => $admin->email, 'password' => 'admin']);
//
////            Auth::guard('admin')->attempt(['email' => $admin->email, 'password' => 'admin']);
//
////            dd(Auth::guard('admin')->user()->name);
//
////            return view('test_auth.admin');
//            return view('test_auth.user');
//        }
        return view('test_auth.user');
    }
}