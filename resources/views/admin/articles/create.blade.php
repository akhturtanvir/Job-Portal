@extends('admin.master')
@section('title','| Post a Article')

@section('stylesheet')
 <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/css/bootstrap-select.min.css" />

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

<h1>create new</h1>

<div class="row">
	<div class="col-md-10 col-md-offset-1">
		 <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Post a Article</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            {!! Form::open(['route' => 'article.store','files'=>true]) !!}

            {!! Form::label('title', 'Title');!!}
            {!! Form::text('title',null, [
            "class" =>"form-control"
             
            ]);!!}
                @if(count($errors) > 0)
            <label style="color: red"> {{ $errors->first('title') }} </label>
            @endif
            <br />
            

            {!! Form::label('body', 'Description');!!}
            {!! Form::textarea('body',null, [
            "class" =>"form-control"
            ]);!!}
            @if($errors->has('body'))
            <label style="color: red"> {{ $errors->first('body') }} </label>
            @endif
            <br>

 {!! Form::label('article_image', 'Article Image');!!}
            {!! Form::file('article_image');!!}
                @if(count($errors) > 0)
            <label style="color: red"> {{ $errors->first('article_image') }} </label>
            @endif
            <br />
 
<br>
  {!! Form::label('select_category', 'Select Category');!!}
 
<select class="form-control selectpicker" data-show-subtext="true" data-live-search="true" name="category_id">

       @foreach($categories as $category)
     <option value="{{$category->name}}"> {{$category->name}} </option>
@endforeach
          </select>



 <br>
 <br>
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <button type="submit" class="btn btn-primary">Submit</button>
              </div>
            </form>
          </div>
          <!-- /.box -->



	</div>
</div>

@endsection

@section('script')
 <script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/js/bootstrap-select.min.js"></script>
@endsection