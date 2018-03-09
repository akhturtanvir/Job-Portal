@extends('frontend.master')
@section('title',$current_group->name." | All Member")
@section('top_menu')
        @include('frontend.include.top_menu')
@endsection

@section('asksection')
{!! Html::style('frontend-style/css/group.css') !!}
        
          <section class="coverphoto"> 
  <div class="coverbg container" style="background:black !important; height: 170px">  
    <div class="row">
      <div class="col-md-12">
      <div class="cover-pic">
       {{--  <img src="{!! asset('frontend-style/images/nature.jpeg') !!}" class="img-responsive"> --}}
      </div>
         
      </div>
    </div>
  </div>
   <div class="container group-desc">
    <div class="row">
     <div class="col-md-offset-1 col-md-5 group-name">
       <h2><a>{{ $current_group->name }}</a></h2>
      
     </div> 
      <div class="col-md-5 joined">
         <ul class="nav navbar-nav navbar-right">
         <li class="dropdown ">
            <button  class="dropdown-toggle btn join" data-toggle="dropdown">Change <b class="caret"></b></button>
            <ul class="dropdown-menu">
             @if($current_group->users_id != Auth::user()->id)
              <li>
 <a href="{{url('/leave-group-member',['id'=>Auth::user()->id,'group_id'=>$current_group->id])}}">Leave Group</a>
              </li>
             @endif
            </ul>
          </li>

           
        </ul>
     </div> 
    </div>
  </div> 
 
  </section>
   <!-- end of cover pic section -->
@endsection

@section('maincontent')

@foreach($all_group_member as $all_group_members)
@foreach($all_user as $all_users)
@if($all_users->id == $all_group_members->users_id)
@if($current_group->users_id == $all_group_members->users_id)
<div class="col-md-2">
	<div class="thumbnail">
      <img src="{!! asset('images/user.jpg') !!}" alt="user" style="height: 120px;width: 130px">
      <div class="caption">
        <h5 title="{{$all_users->email}}">{{$all_users->name}}</h5>
        <br>
        <p>
          <a class="btn btn-default" role="button">Admin</a>
        </p>
      </div>
    </div>
</div>
@else
<div class="col-md-2">
	<div class="thumbnail">
      <img src="{!! asset('images/user.jpg') !!}" alt="user" style="height: 120px;width: 130px">
      <div class="caption">
        <h5 title="{{$all_users->email}}">{{$all_users->name}}</h5>
        <br>
        @if($current_group->users_id == Auth::user()->id)
        <p>
          <a href="{{url('/remove-group-member',['id'=>$all_users->id,'group_id'=>$current_group->id])}}" class="btn btn-default" role="button">Remove</a>
        </p>
        @endif
      </div>
    </div>
</div>



@endif
@endif
@endforeach
@endforeach
@endsection