<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\CarrierAdvice;
use Auth;
use DB;
use Session;
use Redirect;
use Image;
use Purifier;
use Storage;
class CarrierAdviceController extends Controller
{
    
    public function index()
    {  
        $all_advice_category = DB::table('advice_category')->get(); 
        $allarticle = CarrierAdvice::orderBy('id','desc')->paginate('10');
       
       return view('admin.advice.index')
       ->withAll_advice_category($all_advice_category)
       ->withAllarticle($allarticle);

    }

    
    public function create()
    {
        $all_advice_category = DB::table('advice_category')->get();
        return view('admin.advice.carrier_advice')
        ->withAll_advice_category($all_advice_category);
    }

   public function store(Request $request)
    {
       
        $this->validate($request, [
            'title' => 'required|min:10',
            'body' => 'required|min:70',
            'category'=>'required',
            'featured_image'=>'image|mimes:jpeg,png,jpg,gif,svg|max:2048'
        ]);
        
        $post = new CarrierAdvice;
        $post->title = $request->title;
        $post->body = Purifier::clean($request->body);
        $post->slug = $title = str_slug($request->title);
        $post->category=str_slug(strtolower($request->category));
        $post->created_by = Auth::user()->name;

      if ($request->hasFile('article_image')) {
        $image = $request->file('article_image');
        $filename = time().".".$image->getClientOriginalExtension();
        $location = public_path('images/'.$filename);
        Image::make($image)->resize(600,300)->save($location); 
        $post->image="images/".$filename;
 }
        $post->save();
     session::flash('success','Carrier Advice Successfully Post');
      return redirect()->route('advice.create');
      
    
    }

    

    public function show($id)
    {
       

    }


    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
