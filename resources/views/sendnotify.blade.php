@extends('layouts.app')

@section('content')
<div class="container">


    @if ($errors->any())
    <div class="alert alert-danger">
        @foreach ($errors->all() as $error)
            <p>{{ $error }}</p>
        @endforeach
    </div>
   @endif

   @if (session('success'))
    <div class="alert alert-success">
            <p>{{ session('success') }}</p>
    </div>
  @endif

        <form method="POST" action="{{ route('notify.store') }}" >
            @csrf

                <div class="form-group">

                    <div class="row align-middle">
                        <div class="col-md-2">
                            <label for="user">users</label>
                        </div>
                        <div class="col-md-9">
                            <select  name="user" id="user" class="form-control" >
                                <option value="" selected> ....</option>

                                @foreach ($users as $user )

                                <option value="{{ $user->id }}"> {{ $user->name }}</option>

                                @endforeach

                            </select>
                        </div>
                    </div>

                </div>

                <div class="form-group">

                    <div class="row align-middle">
                        <div class="col-md-2">
                            <label for="messsage">users</label>
                        </div>
                        <div class="col-md-9">
                            <input  class="form-control" type="text" name="messsage" id="messsage" value="{{ old('messsage') }}">
                        </div>
                    </div>

                </div>

{{-- submit'  --}}


                <div class="form-group">

                    <div class="row">
                        <div class="col-md-2">
                            <button type="submit" class="btn btn-primary">send</button>
                        </div>
                    </div>
                </div>

            </form>


</div>
@endsection
