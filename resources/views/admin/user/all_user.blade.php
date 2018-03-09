@extends('admin.master')
@section('title','| Group')

@section('maincontent')

	<h1>All User</h1>	
	  <div class="row">
        <div class="col-xs-12">
          <div class="box text-left">
            <div class="box-header">
            <a href="" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">Create new</a>
              <h3 class="box-title text-center">

Total User ({{count($alluser)}})

                 
              </h3>

<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-md" role="document">
    <div class="modal-content">
        <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title text-center">Create New Category</h4>
              </div>
           <div class="modal-body">
               
     {!! Form::open(['url' => 'admin/new-user-store']) !!}

             {{ Form::label('name', 'Name')}}
            {{ Form::text('name',null, ["class" =>"form-control",old('name')])}}

            @if($errors->has('name'))
            <label style="color: red"> {{ $errors->first('name') }} </label>
            @endif
            <br>

            {{ Form::label('email', 'Email')}}
            {{ Form::email('email',null, ["class" =>"form-control"])}}

            @if($errors->has('email'))
            <label style="color: red"> {{ $errors->first('email') }} </label>
            @endif
            <br>

            {{ Form::label('password', 'Password')}}
            {{ Form::password('password',["class" =>"form-control"])}}

            @if($errors->has('password'))
            <label style="color: red"> {{ $errors->first('password') }} </label>
            @endif
            <br>
{{ Form::label('Confirm password', 'Confirm Password')}}
            <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>
            <br>

            {{ Form::label('select', 'Select Role')}}
            
    <select class="form-control" name="role">
    @foreach($roles as $role)
      <option value="{{$role->id}}">{{$role->name}}</option>
    @endforeach
    </select>
            @if($errors->has('role'))
            <label style="color: red"> {{ $errors->first('role') }} </label>
            @endif
            <br>

  </div>
          <div class="modal-footer">
               
          {{ Form::submit('Save',[
                        "class"=>"btn btn-success btn-lg btn-block"
                        ])}}
             {!! Form::close() !!}

                
              </div>        

    </div>
  </div>
</div>

               </div>
            <!-- /.box-header -->
            <div class="box-body">

         <div class="row">

         @foreach($alluser as $all_users)
      
         
  <div class="col-sm-3 col-md-3">
    <div class="thumbnail">
      <img src="{!! asset('images/user.jpg') !!}" alt="user">
      <div class="caption">
        <h3 title="{{ $all_users->email }}">{{$all_users->email}}</h3>
        <p>
        <a href="#" class="btn btn-danger btn-block text-center" role="button">Remove User</a> 
        </p>
      </div>
    </div>
 </div>
 

@endforeach

</div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

        </div>
        <!-- /.col -->
      </div>
@endsection