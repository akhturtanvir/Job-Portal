<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Socialite;
use App\User;
use Auth;
class FacebookController extends Controller
{
    
 public function redirectToProvider()
    {
        return Socialite::driver('facebook')->redirect();
    }

public function handleProviderCallback()
    {
        try{
        $socialUser = Socialite::driver('facebook')->user();

    }
    catch(\Exception $e) {
        return redirect('/login');
    }
$user = User::where('facebook_id',$socialUser->getId())->first();

if(!$user){
    User::create([
        'facebook_id' => $socialUser->getId(),
        'name' => $socialUser->getName(),
        'email' => $socialUser->getEmail(),
        
    ]);       
}

if(Auth::loginUsingId($user->id)){
    return redirect()->intended('/home');
    
}
}




}
