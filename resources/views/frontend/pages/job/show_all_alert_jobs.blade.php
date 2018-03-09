@extends('frontend.master')
@section('title','| The Job')
{{-- @section('top_menu')
        @include('frontend.include.top_menu')
@endsection --}}
@section('asksection')
{!! Html::style('frontend-style/css/job.css') !!}
        @include('frontend.include.the_job')
        @include('frontend.include.job_menu')
@endsection

@section('stylesheet')

<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/css/bootstrap-select.min.css" />
 
@endsection
@section('maincontent')

  <div class="col-md-10  text-left " >
    <a href="{{url('/job-alert')}}" style="margin-left: -16px;" class="btn btn-default">Set Your Job Alert</a> 
    <br>
    <br>              
@foreach($alljobs as $jobs)
       @foreach($alert_jobs as $alert_job)              
         @if($alert_job->jobscategory_id == $jobs->category_id)
       @if($check_save_job->isEmpty())
         <div class="row featured-job">
                     <div class="title text-center"><h3><a>{{ $jobs->company_title }}</a></h3></div>
                      <div class="col-md-9 col-sm-9 col-xs-9 job-content">

                        <div class=" job">
                          <p><span>Role:</span> {{ $jobs->name }}</p>
                          <p><span>Location:</span> {{ 

                             $jobs->location
                                }}</p>
                          <p><span>Salary:</span> 
                           @if ( !empty ($jobs->salary1) )
                         $ {{ $jobs->salary1 }}
                          @else
                         $ {{ $jobs->salary2 }} - 
                          {{ $jobs->salary3 }}
                          
                          @endif
                          {{ $jobs->duration }}
                          </p>
                          
                          <p><span>Jobs Type:</span> {{ $jobs->jobs_type }}</p>
                          <p><span>Category:</span>

                           {{ 
                        $jobs_category = App\Job_Category::find($jobs->category_id)->name
                            }}

                           </p>
                          <a class="btn" href="{{ url('job_details/'.$jobs->id) }}">View Details</a>
                        </div>
                      </div>
                      <div class="save">
                     <a href="{{ url('job-save/'.$jobs->id) }}"> <p> <i class="fa fa-star-o" aria-hidden="true"></i></p>
                         <p>Save</p> </a>
                        </div>
                         <div class="deadline">
                         <p><span>Deadline:</span>{{ $jobs->dedline }}</p>
                        </div>
                       </div>

      

 @else
  <div class="row featured-job">
                     <div class="title text-center"><h3><a>{{ $jobs->company_title }}</a></h3></div>
                      <div class="col-md-9 col-sm-9 col-xs-9 job-content">

                        <div class=" job">
                          <p><span>Roless:</span> {{ $jobs->name }}</p>
                          <p><span>Location:</span> 
                          {{ $jobs->location }}</p>
                          <p><span>Salary:</span> 
                           @if ( !empty ($jobs->salary1) )
                         $ {{ $jobs->salary1 }}
                          @else
                         $ {{ $jobs->salary2 }} - 
                          {{ $jobs->salary3 }}
                          
                          @endif
                          {{ $jobs->duration }}
                          </p>
                          
                          <p><span>Jobs Type:</span> {{ $jobs->jobs_type }}</p>
                          <p><span>Category:</span>

                           {{ 
                        $jobs_category = App\Job_Category::find($jobs->category_id)->name
                            }}

                           </p>
                          <a class="btn" href="{{ url('job_details/'.$jobs->id) }}">View Details</a>
                        </div>
                      </div>
                      <div class="save">
                      <?php $x = 0?>
@foreach($check_save_job as $jobs_save)
                    @if($jobs_save->jobs_id == $jobs->id)
                     <a href="{{ url('job-unsave/'.$jobs->id) }}"> <p> <i class="fa fa-star-o" aria-hidden="true"></i></p>
                         <p>Un Save</p> </a>
                         <?php $x = 1?>
                    @endif

@endforeach
 @if($x !=1)
<a href="{{ url('job-save/'.$jobs->id) }}"> <p> <i class="fa fa-star-o" aria-hidden="true"></i></p>
                         <p>Save</p> </a>
 @endif
                        </div>
                         <div class="deadline">
                         <p><span>Deadline:</span>{{ $jobs->dedline }}</p>
                        </div>
                       </div>

      
       @endif
       @endif
  @endforeach
@endforeach
  <div class="text-center">
    <input id="alwaysFetch" type="hidden" />
</div>
</div>  

@endsection
@section('script')

  
<script>
    setTimeout(function () {
        var el = document.getElementById('alwaysFetch');
        el.value = el.value ? location.reload() : true;
    }, 0);
</script>
@endsection

