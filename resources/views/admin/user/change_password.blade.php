@extends('admin.master')
@section('title','| Change Password')

@section('maincontent')

<div class="modal-dialog modal-md" role="document">
    <div class="modal-content">
        <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title text-center">Create New Category</h4>
              </div>
           <div class="modal-body">
               
     {!! Form::open(['url' => 'admin/change-password']) !!}

             {{ Form::label('title', 'Old Password')}}
            {{ Form::password('old_password', ["class" =>"form-control"])}}
@if(Session::get('error'))
            <label style="color: red"> The specified password does not match the database password </label>

            @endif
            
            @if($errors->has('old_password'))
            <label style="color: red"> {{ $errors->first('old_password') }} </label>
            @endif
            <br>

   {{ Form::label('title', 'New Password')}}
            {{ Form::password('password', ["class" =>"form-control"])}}

            @if($errors->has('password'))
            <label style="color: red"> {{ $errors->first('password') }} </label>
            @endif
            <br>

            {{ Form::label('title', 'Confirm new Password')}}
            <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>
            <br>

  </div>
          <div class="modal-footer">
               
          {{ Form::submit('Save category',[
                        "class"=>"btn btn-success btn-lg btn-block"
                        ])}}
             {!! Form::close() !!}

                
              </div>        

    </div>
  </div>


@endsection