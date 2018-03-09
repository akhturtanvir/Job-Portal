@extends('frontend.master')
@section('title','| Carrier Advice')

@section('asksection')
{!! Html::style('frontend-style/css/job.css') !!}
        @include('frontend.include.the_job')
        @include('frontend.include.job_menu')
@endsection

@section('stylesheet')


 
@endsection
@section('maincontent')

@foreach($all_advice as $all_advices)
<div  class="row featured-question">
<div class="col-md-2 col-sm-2 col-xs-2 col-lg-2">
	 <a class="thumbnail" style="margin-bottom: 0px;">
   @if($all_advices->image !=null)
      <img src="{!! asset('images/article.png') !!}" alt="article pic" style="height: 140px;width: 120px">
      @else
      <img src="{!! asset('images/article.png') !!}" alt="article pic" style="height: 140px;width: 120px">
      @endif
    </a>
</div>
                      <div class="col-md-8 col-sm-8 col-xs-8 col-lg-8 text-left">
                        <div class="" style="margin-top: 10px">
                          <p title="{!! $all_advices->title !!}">
       <a href="{{url('carrier-advice',$all_advices->slug)}}" style="font-size: 18px">
                              
                          {{$all_advices->title}}

                          </a>
                        </p>
                          <p><span class="date">
                           {{ date('d-M-y',strtotime($all_advices->created_at)) }}
                           </span> at 
                          <span class="time"> {{ date('h:i A',strtotime($all_advices->created_at)) }}</span> by<span class="post-owner"> 
                          {{ $all_advices->created_by }}</span></p>
                         
                      <p style="margin-top: 5px !important">
                         {!!str_limit(strip_tags($all_advices->body),400,'...')!!}
                      </p>
                            
                         
                        </div>
                      </div>
                      <div class="col-md-2 col-sm-2 col-xs-2 col-lg-2 text-center">
                     
                        <div class="views-number" style="padding: 23px 0;
    width: 115px;margin-top: 22px">
                        <h2 > {{$all_advices->view}}</h2>
                         <h6>VIEWS</h6>
                        </div>
                       
                   
                      </div>
                    </div>
             @endforeach
             <div class="row">
<div class="col-md-12 text-center">
   <span class="text-center">{{$all_advice->links() }}</span> 
</div>
    
</div>       
@endsection