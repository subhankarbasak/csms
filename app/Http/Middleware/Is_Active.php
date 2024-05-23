<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Auth;

class Is_Active
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        // return $next($request);
		$response = $next($request);
        //If the status is not approved redirect to login 
        if(Auth::check() && !Auth::user()->status){
            Auth::logout();
            return redirect('/login')->with('erro_login', 'Your Account Inactivated');
        }
        return $response;
    }
}
