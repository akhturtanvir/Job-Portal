@extends('frontend.master')
@section('title','| Please Sign in')

@section('top_menu')
        @include('frontend.include.top_menu')
@endsection
@section('maincontent')
 <link href="{{ URL::asset('frontend-style/css/signin.css')}}" rel="stylesheet">

<div class="panel panel-primary">
        <div class="panel-body">
          <form class="form-horizontal" role="form" method="POST" action="{{ url('/login') }}">
                        {{ csrf_field() }}
            <div class="form-group">
              <h2>Create account</h2>
            </div>

            


      <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                            <label for="email" class="control-label">E-Mail Address</label>

                            
                                <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" required>
 @if ($errors->has('email'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            
                        </div>


                        
    <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                            <label for="password" class="control-label">Password</label>

                           
                                <input id="password" type="password" class="form-control" name="password" required>

                                @if ($errors->has('password'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                          
                        </div>

                        

          <div class="form-group">
              <button type="submit"  class="btn btn-info btn-block">Login</button>
            </div>
            <p class="form-group">By creating an account, you agree to our <a href="#">Terms of Use</a> and<a href="#"> Services</a>.</p>
            <hr>
            <p>Already have an account? <a href="#">Sign in</a></p>
                    </form>




                 <!-- <div class="form-group">
        <div class="col-md-6 col-md-offset-4">
            {{-- <a href="{{ url('/auth/github') }}" class="btn btn-github"><i class="fa fa-github"></i> Github</a> --}}
            {{-- <a href="{{ url('/login/google') }}" class="btn btn-google"><i class="fa fa-google"></i> Google</a> --}}
            <a href="{{ url('/login/facebook') }}" class="btn btn-facebook"><i class="fa fa-facebook"></i> Facebook</a>
        </div>
    </div> -->
                </div>


            </div>

     
   <input id="alwaysFetch" type="hidden" />
<script>
    setTimeout(function () {
        var el = document.getElementById('alwaysFetch');
        el.value = el.value ? location.reload() : true;
    }, 0);
</script>
@endsection
