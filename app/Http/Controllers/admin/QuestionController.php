<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use App\Category;
use App\Question;
use App\QuestionComment;
use App\Tag;
use App\Article;
use App\User;
use Session;
use Image;
use Purifier;
use Storage;
use DB;
use Redirect;
class QuestionController extends Controller
{
    
    public function index()
    {  $alluser = User::all();
       $allcategories = Category::orderBy('id','desc')->paginate('10');
       $allarticle = Question::All();
       
       return view('admin.question.question')
        ->withAllcategories($allcategories)
          ->withAllarticle($allarticle)
          ->withAlluser($alluser);
    }
 
    public function create()
    {
         $categories=Category::all();
         $tags=Tag::all();
         return view('admin.question.create')->withCategories($categories)->withTags($tags);
    
    }
 
      public function store(Request $request)
    {
       
        $this->validate($request, [
            'title' => 'required|min:20',
            'body' => 'required|min:60',
            'category_id'=>'required',
             'tags' => 'required',
            'featured_image'=>'image|mimes:jpeg,png,jpg,gif,svg|max:2048'
        ]);
        
        $question = new Question;
        $question->title = $request->title;
        $question->body = Purifier::clean($request->body);
        $question->slug = str_slug($request->title);
        $question->category_id=str_slug(strtolower($request->category_id));
        $question->created_by = Auth::user()->id;

      if ($request->hasFile('question_image')) {
        $image = $request->file('question_image');
        $filename = time().".".$image->getClientOriginalExtension();
        $location = public_path('images/'.$filename);
        Image::make($image)->resize(600,300)->save($location); 
        $question->image="images/".$filename;

      }
        $question->save();
       $tags = $request->tags;
 if (!empty($tags)) {

  foreach ($tags as $tag) {
    DB::table('question_tag')->insert(
    [
    'question_id' => $question->id,
    'tag_id'      => $tag,
    'category_id' => str_slug($request->category_id)
    ]);}
   
}
       // $question->tags()->sync($request->tags,false);
      session::flash('success','Question Post Successfully Saved');
      return redirect()->route('question.index',$question->id);
      
    
    }
 

    public function show($id)
    {
         $current_categories = Category::find($id);
         $current_category=str_slug(strtolower($current_categories->name));
         $all_question_tag = DB::table('question_tag')->get();
         $alluser = User::all();
      $allarticle = Question::where('category_id','=',$current_category)->paginate(10);
       $all_comments = QuestionComment::all(); 
       return view('admin.question.index')->withAlluser($alluser)
       ->withAllarticle($allarticle)
       ->withAll_question_tag($all_question_tag)
       ->withAll_comments($all_comments);
    }
 
    public function edit($id)
    {
        //
    }
 
    public function update(Request $request, $id)
    {
        //
    }
 
public function destroy($id)
    {
  DB::statement('SET FOREIGN_KEY_CHECKS=0;');
$post=Question::find($id);
$tags = DB::table('question_tag')->where('question_id','=',$id);
if ($tags != null) {
      $tags->delete();
 }
 if ($post != null) {
    $post->delete();
 }
  $comment = QuestionComment::where('question_id','=',$id);
 if ($comment != null) {
 $comment->delete();

 }
 session::flash('success','Question Delete has been successfully!');
 return Redirect::to('admin/question');
}
}
