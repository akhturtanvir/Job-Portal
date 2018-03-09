<?php

namespace App\Http\Controllers\user;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth;
use DB;
use App\User;
use Session;
use Redirect;
use Purifier;
use App\Contact;
class ContactController extends Controller
{
    
    public function index()
    {
    $user_details = User::find(Auth::user()->id);
    // dd($userDetails);    
    $group=DB::table('groups_users')->where('users_id', '=', Auth::user()->id)->get();
           return view('frontend.pages.contact')
                  ->withGroup($group)
                  ->withUser_details($user_details);
    }


    public function store(Request $request)
    {

      $this->validate($request, [
            'body' => 'required|min:20',
            
        ]);

       $contact = new Contact;
       $contact->email = $request->email;
       $contact->body = Purifier::clean($request->body);
       $contact->user_id = Auth::user()->id;
       $contact->save();

session::flash('contact_success','Your message Send Successfully');
return Redirect::to("/");

    }


}
