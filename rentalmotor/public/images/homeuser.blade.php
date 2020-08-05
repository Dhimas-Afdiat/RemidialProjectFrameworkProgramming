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
      <img src="{{asset('assasin.jpg')}}" class=" d-block w-100" height="500px" alt="...">
    </div>
    <div class="carousel-item">
      <img src="{{asset('bsd.jpg')}}" class="d-block w-100" height="500px" alt="...">
    </div>
    <div class="carousel-item">
      <img src="{{asset('boruto.jpg')}}" class="d-block w-100" height="500px" alt="...">
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
                    <img class="card-img-top" src="{{asset('boruto.jpg')}}" height="163" alt="Card image cap">
              </div>
            </div>
          </div>
          <div class="card mb-6">
            <div class="row no-gutters">
              <div class="col-md-12">
                    <img class="card-img-top" src="{{asset('bsd.jpg')}}" height="163" alt="Card image cap">
              </div>
            </div>
          </div>
          <div class="card mb-6">
            <div class="row no-gutters">
              <div class="col-md-12">
                    <img class="card-img-top" src="{{asset('assasin.jpg')}}" height="163" alt="Card image cap">
              </div>
            </div>
          </div>
    </div>
</div>
<div class="col-md-6 col-xs-12 ml-auto">
<h1 class=" text-primary"><marquee>SELAMAT DATANG DI SI BERITA</marquee></h1>
</div>
<div class="container">

  <div class="row">

    <!-- Blog Entries Column -->
    <div class="col-md-8">

      <br>
      <!-- Blog post -->
      <div class="card mb-4 border shadow">
        <div class="row no-gutters">
          <div class="col-md-4">
            <div class="inner">
              <img class="card-img-top" src="{{asset('assets/images/boruto.jpg')}}" alt="Card image cap" style="height:220px;">
            </div>
          </div>
          <div class="col-md-8">
            <div class="card-body">
              <h5 class="card-title text-warning">Borruto The Next Generation Naruto</h5>
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
              <a href="#" class="btn btn-warning">Baca Selengkapnya</a>
            </div>
          </div>
        </div>
      </div>

      <!-- Blog post -->
      <div class="card mb-4 border shadow-lg">
        <div class="row no-gutters">
          <div class="col-md-4">
            <div class="inner">
              <img class="card-img-top" src="{{asset('assets/images/sao.jpg')}}" alt="Card image cap" style="height:220px;">
            </div>
          </div>
          <div class="col-md-8">
            <div class="card-body">
              <h5 class="card-title text-warning">Sword Art Online</h5>
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
              <a href="#" class="btn btn-warning">Baca Selengkapnya</a>
            </div>
          </div>

        </div>
      </div>

      <!-- Blog post -->
      <div class="card mb-4 border shadow-lg">
        <div class="row no-gutters">
          <div class="col-md-4">
            <div class="inner">
              <img class="card-img-top" src="{{asset('assets/images/darwin.jpg')}}" alt="Card image cap" style="height:220px;">
            </div>
          </div>
          <div class="col-md-8">
            <div class="card-body">
              <h5 class="card-title text-warning">Darwins Game</h5>
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
              <a href="#" class="btn btn-warning">Baca Selengkapnya</a>
            </div>
          </div>
        </div>
      </div>
      </div>
      <div class="col-md-4 shadow-lg">

      <!-- Search Widget -->
      <div class="card my-4 border border-warning shadow-lg">
        <h5 class="card-header bg-warning text-dark" class="">VIDEO</h5>
        <video controls height="205px;" autoplay>
          <source src="{{asset('assets/images/otaku.mp4')}}" type="video/mp4">
        </video>
      </div>

      <!-- Categories Widget -->
      <div class="card my-4 border border-warning shadow-lg">
        <h5 class="card-header bg-warning text-dark">CONTENT</h5>
        <div class="inner">
          <img src="{{asset('assets/images/kenja.jpg')}}" class="card-img-top" alt="..." height="185px;">
          <div class="card-body">
            <h5 class="card-title text-warning">kenja no mago</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn btn-warning">Baca Selengkapnya</a>
          </div>
        </div>

      </div>

    </div>
    </div>
    <div>
@endsection
