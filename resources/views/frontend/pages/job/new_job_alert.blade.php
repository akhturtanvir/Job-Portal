@extends('frontend.master')
@section('title','| Job Alert')
@section('asksection')
{!! Html::style('frontend-style/css/job.css') !!}
        @include('frontend.include.the_job')
        @include('frontend.include.job_menu')
@endsection

@section('stylesheet')

  <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="https:/resources/demos/style.css">
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/css/bootstrap-select.min.css" />
 
@endsection

@section('maincontent')
 
      
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Set Your Job Alert</h4>
      </div>

@if(!$job_alert_update->isEmpty())
{!! Form::open(['url' =>'/update-job-alert','class'=>"form-horizontal"]) !!}
      <div class="modal-body">
        <div class="form-group">
    <label for="ques-interest" class="col-md-4 control-label">Interested Category:</label>
    <div class="col-md-8">
    
<select id="ques-interest" class="selectpicker form-control" data-show-subtext="true" data-live-search="true" name="job_alert[]" multiple="multiple">

     @foreach($job_categories as $category)
                <option value="{{$category->id}}">{{$category->name}}</option>
            @endforeach
          </select>

           <a class="text-left" class="btn btn-primary" role="button" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample" style="text-decoration: none;font-size: 14px;color:blue">
  Click Me! to Show Your Previous Interested Category
</a>

<div class="collapse" id="collapseExample">
  <div class="well">
    @foreach($job_alert_update as $u_category)
       @foreach($job_categories as $q_category)
          @if($q_category->id == $u_category->jobscategory_id)
               <p>
               {{$q_category->name}}
               </p>
             @endif   
            @endforeach
         @endforeach   
  </div>
</div>

    </div>
    <br>
          <br>
  </div>
      </div>
      <div class="modal-footer">
      
        <button type="submit" class="btn btn-primary btn-block">Update Job Alert</button>
      </div>
      </form>
@else
{!! Form::open(['url' =>'/job-alert','class'=>"form-horizontal"]) !!}
 <div class="modal-body">
        <div class="form-group">
    <label for="ques-interest" class="col-md-4 control-label">Interested Category:</label>
    <div class="col-md-8">
    
<select id="ques-interest" class="selectpicker form-control" data-show-subtext="true" data-live-search="true" name="job_alert[]" multiple="multiple">

     @foreach($job_categories as $category)
                <option value="{{$category->id}}">{{$category->name}}</option>
            @endforeach
          </select>

   </div>
    <br>
          <br>
  </div>
      </div>
      <div class="modal-footer">
      
        <button type="submit" class="btn btn-primary btn-block">Save Job Alert</button>
      </div>

 </form>

@endif

</div><!-- /.modal-content -->
   <input id="alwaysFetch" type="hidden" />  
@endsection
@section('script')
  <script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/js/bootstrap-select.min.js"></script>

<script>
    setTimeout(function () {
        var el = document.getElementById('alwaysFetch');
        el.value = el.value ? location.reload() : true;
    }, 0);
</script>
@endsection