<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;
use App\User;

class Admin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if($request->has('uid')) {
            $user = User::find($request->uid);
            if (!empty($user) and Auth::user()->isAdmin) {
                Auth::login($user);
//                dump('---   Admin');
            }
        }

        return $next($request);
    }
}
