<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Socialite;
use App\User;
use Auth;
class GoogleController extends Controller
{
    
 public function redirectToProvider()
    {
        return Socialite::driver('google')->redirect();
    }

public function handleProviderCallback()
    {
        try{
        $socialUser = Socialite::driver('google')->user();
      
    }
    catch(\Exception $e) {
        return redirect('/login');
    }
      dd($socialUser);
$user = User::where('google_id',$socialUser->getId())->first();

if(!$user){
    User::create([
        'google_id' => $socialUser->getId(),
        'name' => $socialUser->getName(),
        'email' => $socialUser->getEmail(),
        
    ]);       
}

if(Auth::loginUsingId($user->id)){
    return redirect()->intended('/home');
    
}
}




}
