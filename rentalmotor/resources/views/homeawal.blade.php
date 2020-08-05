@extends('layouts.app')
@section('container')
<br>
<div class="row">
<div class="col-md-6">
<div id="carouselExampleIndicators" class="carousel slide w-110" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="{{asset('images/vario.jpg')}}" class=" d-block w-100" height="500px" alt="...">
    </div>
    <div class="carousel-item">
      <img src="{{asset('images/pcx.jpg')}}" class="d-block w-100" height="500px" alt="...">
    </div>
    <div class="carousel-item">
      <img src="{{asset('images/honda_adv.jpeg')}}" class="d-block w-100" height="500px" alt="...">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
    </div>
    <br>
    <div class="col-md-6 col-xs-12">
        <div class="card mb-6">
            <div class="row">
              <div class="col-md-12">
                    <img class="card-img-top" src="{{asset('images/vario.jpg')}}" height="163" alt="Card image cap">
              </div>
            </div>
          </div>
          <div class="card mb-6">
            <div class="row no-gutters">
              <div class="col-md-12">
                    <img class="card-img-top" src="{{asset('images/pcx.jpg')}}" height="163" alt="Card image cap">
              </div>
            </div>
          </div>
          <div class="card mb-6">
            <div class="row no-gutters">
              <div class="col-md-12">
                    <img class="card-img-top" src="{{asset('images/honda_adv.jpeg')}}" height="163" alt="Card image cap">
              </div>
            </div>
          </div>
    </div>
</div>
<div class="col-md-6 col-xs-12 ml-auto">
<h1 class=" text-success"><marquee>SELAMAT DATANG DI DHIMAS RENTAL</marquee></h1>
</div>


   

    </div>
    </div>
    <div>

@endsection




