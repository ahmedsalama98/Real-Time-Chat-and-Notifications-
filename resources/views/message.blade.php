
@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row ">


        <div class="col-md-3">

            <div class="online-users"  >

                <h2> online users</h2>
                <h4 id="no-online">no onlone users</h4>
                <ul class="list-group" id='online-users-box'>
                </ul>
            </div>
        </div>


        <div class="col-md-9">

            <div class="message-container">
{{--   message-box --}}
                        <div class="message-box" id="message-box">
                        @forelse ($messages  as $message )

                        <div class="message {{$message->user_id ==Auth::id()? 'mine':'' }}">
                             {{ $message->body }}
                             <span class="date"> {{ $message->created_at->format('d M Y  h:i A') }}</span>


                             @if ( $message->user_id !=Auth::id())
                             <span class="owner"> {{ $message->user->name }}</span>

                             @endif
                        </div>

                        <div class="clear"></div>
                        @empty

                        <p> no messages </p>
                        @endforelse

                        </div>
{{--   message-box --}}


                    <div class="add-messega-container">

                        <form action="{{ route('chat.store') }}" method="POST" id="send-message" >
                            @csrf
                            <input class="form-control" type="text" name="message" id="message">
                            <button type="submit" class="btn btn-primary">Send</button>
                        </form>

                    </div>

            </div>
        </div>

    </div>
</div>


@endsection
