<?php


namespace App\Http\Controllers\admin;
use Entrust;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Contact;
use Mail;
use App\User;
use Session;
use Redirect;
use DB;
class AdminController extends Controller
{

public function index(){

  $total_user = count(User::all());

    $all_contact_message = Contact::orderBy('id','Desc')
                        ->limit(7)
                        ->get();
    return view('admin.pages.home')
           ->withAll_contact_message($all_contact_message)
           ->withTotal_user($total_user);
}

 
    public function show($id)
    {
        $all_contact_message = Contact::orderBy('id','Desc')
                        ->limit(7)
                        ->get();
        $current_contact = Contact::find($id);                
    return view('admin.pages.show_contact')
           ->withAll_contact_message($all_contact_message)
           ->withCurrent_contact($current_contact);
    }
 


 public function contact_replay_mail(Request $request){

     $this->validate($request,[
     'email' =>'required|email',
     'subject' => 'min:3',
     'message' =>'min:10',
     
]);
     $id = $request->contact_id;
   $data = array(
'email' => $request->email,
'subject' =>$request->subject,
'bodyMessage' => $request->message,
'fromEmail' =>Auth::user()->email
     );
Mail::send('admin.emails.contact', $data,function($message) use ($data)
{
    $message->to($data['email']);
    $message->subject($data['subject']);
    $message->from($data['fromEmail']);
    
});


Session::flash('success_contact_mail',"Congrats! Mail Sent Successfully!");
return Redirect::to("admin/show-contact/{$id}");
// return Redirect::to("/question/{$question->slug}");

     }  
 


 public function admin_mail(Request $request){

     $this->validate($request,[
     'email' =>'required|email',
     'subject' => 'min:3',
     'message' =>'min:10',
     
]);
    
   $data = array(
'email' => $request->email,
'subject' =>$request->subject,
'bodyMessage' => $request->message,
'fromEmail' =>Auth::user()->email
     );
Mail::send('admin.emails.contact', $data,function($message) use ($data)
{
    $message->to($data['email']);
    $message->subject($data['subject']);
    $message->from($data['fromEmail']);
    
});


Session::flash('success_contact_mail',"Congrats! Mail Sent Successfully!");
return Redirect::to("/dashboard");
// return Redirect::to("/question/{$question->slug}");

     }

public function store(Request $request){
     $this->validate($request, [
            'name' => 'required|min:3',
            
        ]);
 DB::table('advice_category')->insert(
    [
    'name' =>$request->name,
    'users_id' => Auth::user()->id
    ]);
Session::flash('success',"Congrats! Category Add Successfully!");
 return redirect()->route('advice.index');
}

    public function destroy($id)
    {
        //
    }
}
