@extends('auth.auth_layout')
@section('content')
<main class="signup-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-3 ">
                <div class="card shadow-lg auth-card ">
                     <div class="card-body">
                        <div class="text-center">
                            <img class="img-responsive img-rounded" style="max-height: 150px;" src="{{url('/assets/images/logo.png')}}" alt="User picture">
                              <h3>Registration</h3><br>
                            {{-- <button class="btn btn-outline border-green text-green"><i class="fab fa-google"></i>  Google login</button><br><br>
                            <button class="btn btn-outline border-blue text-blue"><i class="fab fa-facebook-f"></i>  Facebook login</button><br><br> --}}
                        </div>
                        <div class="container">
                        <form action="{{ route('register.custom') }}" method="POST">
                            @csrf
                            <div class="form-group mb-3">
                                <input type="text" placeholder="Name" id="name" class="form-control" name="name" required autofocus>
                                @if ($errors->has('name'))
                                <span class="text-danger">{{ $errors->first('name') }}</span>
                                @endif
                            </div>

                            <div class="form-group mb-3">
                                <input type="text" placeholder="Email" id="email_address" class="form-control" name="email" required autofocus>
                                @if ($errors->has('email'))
                                <span class="text-danger">{{ $errors->first('email') }}</span>
                                @endif
                            </div>

                            <div class="form-group mb-3">
                                <input type="password" placeholder="Password" id="password" class="form-control" name="password" required>
                                @if ($errors->has('password'))
                                <span class="text-danger">{{ $errors->first('password') }}</span>
                                @endif
                            </div>

                            <div class="form-group mb-3">
                                <div class="checkbox">
                                    <label><input type="checkbox" name="remember"> Remember Me</label>
                                </div>
                            </div>

                            <div class="d-grid mx-auto">
                                <button type="submit" class="btn btn-dark btn-block">Sign up</button>
                            </div>
                        </form>
                        <div class="d-grid mx-auto text-center">
                            <a href="{{url('/')}}">Allready Have an Account?</a><br>
 
                        </div>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
@endsection