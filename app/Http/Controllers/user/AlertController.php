<?php

namespace App\Http\Controllers\user;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DB;
use Auth;
use Session;
use App\User;
use Redirect;
use App\AlertJobCategory;
use App\Job_Category;
use App\CarrierAdvice;
use App\AdviceComment;
class AlertController extends Controller
{
   
public function index(){

    $job_categories = Job_Category::all();
    $job_alert_update =DB::table('alert_job_categories')->where('users_id', '=', Auth::user()->id)->get(); 
    return view('frontend.pages.job.new_job_alert')->withJob_categories($job_categories)
            ->withJob_alert_update($job_alert_update);

}

    public function store(Request $request)
    {
        $jobscategory_id= $request->job_alert;

        $users_id =Auth::user()->id;
     if (!empty($jobscategory_id)) {

    foreach ($jobscategory_id as $jobscategory) {
    $a_category = new AlertJobCategory;
    $a_category->jobscategory_id =$jobscategory;
    $a_category->users_id = $users_id;
    $a_category->save();

}
   
}
 return Redirect::to('/jobs');
    }

    public function update(Request $request)
    {
        $jobscategory_id= $request->job_alert;

        $users_id =Auth::user()->id;
     if (!empty($jobscategory_id)) {
        $update_job_level =  DB::table('alert_job_categories')->where('users_id','=',$users_id)->delete();

    foreach ($jobscategory_id as $jobscategory) {
    
$a_category = new AlertJobCategory;
$a_category->jobscategory_id =$jobscategory;
$a_category->users_id = $users_id;
$a_category->save();



}
   
}
 return Redirect::to('/jobs');
    }

  
    public function carrier_advice(){
         $all_advice = CarrierAdvice::orderBy('id','desc')->paginate(10);
         return view('frontend.pages.carrier_advice')
         ->withAll_advice($all_advice);
    }

    public function carrier_advice_details($slug){
// echo $slug;
         $article = CarrierAdvice::where('slug','=',$slug)->first();

         $article->view= $article->view + 1;
         $article->save();
$comment = DB::table('advice_comments')->where('advice_id','=',$article->id)->get();
         return view('frontend.pages.advice_details')
                ->withArticle($article)
                ->withComment($comment);

    }

    public function advice_comment(Request $request){
   $slug = $request->slug;
      if (!Auth::check()) {
       $this->validate($request, [
            'name' => 'required|max:255|min:3',
            'email'=> 'required|max:255|min:5',
            'comment'=> 'required|max:3000|min:5'
        ]);
       $article = CarrierAdvice::where('slug','=',$slug)->first();

DB::table('advice_comments')->insert(
    [
    'name' => $request->name,
    'email' => $request->email,
    'comment' => $request->comment,
    'category'    => $request->category,
    'advice_id' => $request->advice_id,
    
    ]);

return Redirect::to("/carrier-advice/{$article->slug}");

        }
  else{
        $this->validate($request, [
            
            'comment'=> 'required|max:2000|min:5'
        ]);
      
  $article = CarrierAdvice::where('slug','=',$slug)->first();
DB::table('advice_comments')->insert(
    [
    'name' => Auth::user()->name,
    'email' => Auth::user()->email,
    'comment' => $request->comment,
    'category'    => $request->category,
    'advice_id' => $request->advice_id
    
    ]);
         
          return Redirect::to("/carrier-advice/{$article->slug}");
  }
         
    }
    
}
