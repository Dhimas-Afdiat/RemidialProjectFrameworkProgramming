@extends('layouts.app')
@section('profile')
<br>
<br>

<div class="card mb-3"style="width: 1200px">
    <img src="{{asset('images/vario.jpg')}}" style="height: 300px"class="card-img-top" alt="...">
    <div class="card-body">
      <h1 class="card-title">Profile Perusahaan</h1>
      <p class="card-text">Nama Perusahaan : Tabassam Rental.com
                           Di dirikan      : 20 juni 2020
                           email           :  tabassamrental@gmail.com
                           facebook        : Tabassam Rental
                           Twitter         : Tabassam Rental20
                           Instagram       : Tabassam Rental20
      </p>
      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
    </div>
  </div>
@endsection
