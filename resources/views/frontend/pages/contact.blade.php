@extends('frontend.master')
@section('title','| Contact us')
@section('top_menu')
        @include('frontend.include.top_menu')
@endsection
@section('stylesheet')

 
 <script src="//cdn.tinymce.com/4/tinymce.min.js"></script>
  <script>
  tinymce.init({ 
    selector: "textarea",  // change this value according to your HTML
    plugins: "link code image lists imagetools",
    menubar:false
  });

  </script>
@endsection


@section('maincontent')

   <h3 class="box-title">Contact Us</h3>

<div class="row">
  <div class="col-md-10 col-md-offset-1">
     <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
             
           
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            {!! Form::open(['url' => 'contact']) !!}

            {!! Form::label('title', 'your Email');!!}
           
            <input type="email" value="{{$user_details->email}}" name="email" readonly="readonly" class="form-control">
 
            <br>
            

            {!! Form::label('body', 'Description');!!}
            {!! Form::textarea('body',null, [
            "class" =>"form-control"
            ]);!!}
            @if($errors->has('body'))
            <label style="color: red"> {{ $errors->first('body') }} </label>
            @endif
            <br>
            </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <button type="submit" class="btn btn-success btn-lg btn-block">Send</button>
              </div>
            </form>
          </div>
          <!-- /.box -->



  </div>
</div>

<script type="text/javascript">
   if (window.name == "reloader") {
            window.name = "";
            location.reload();
        }

window.onbeforeunload = function() {
                window.name = "reloader"; 
            }
</script>
@endsection
