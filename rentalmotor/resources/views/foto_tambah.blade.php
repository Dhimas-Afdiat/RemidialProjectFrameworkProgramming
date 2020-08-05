@extends('layouts.template')
@section('container')
<div class="container">
            <div class="card mt-5">
                <div class="card-header text-center">
                    TAMBAH FOTO
                </div>
                <div class="card-body">
                    <a href="/foto" class="btn btn-primary">Kembali</a>
                    <br/>
                    <br/>

                    <form method="post" action="/foto/create" enctype="multipart/form-data">

                        {{ csrf_field() }}


                        <div class="form-group">
                            <label>Nama</label>
                            <input name="foto_nama" class="form-control" placeholder="Masukan Nama "></input>

                             @if($errors->has('nama'))
                                <div class="text-danger">
                                    {{ $errors->first('nama')}}
                                </div>
                            @endif

                        </div>

                        <div class="form-group">
                            <label>Alamat</label>
                            <input name="foto_alamat" class="form-control" placeholder="Masukan Alamat"></input>

                             @if($errors->has('foto_alamat'))
                                <div class="text-danger">
                                    {{ $errors->first('foto_alamat')}}
                                </div>
                            @endif

                        </div>

                        <div class="form-group">
                            <label>Telepon</label>
                            <input name="foto_telpon" class="form-control" placeholder="Masukan Telephone"></input>

                             @if($errors->has('foto_telpon'))
                                <div class="text-danger">
                                    {{ $errors->first('foto_telpon')}}
                                </div>
                            @endif

                        </div>

                        <div class="form-group">
                            <label>Foto</label>
                            <input type="file" name="foto_foto" class="form-control" placeholder="Masukan Foto"></input>

                             @if($errors->has('foto_foto'))
                                <div class="text-danger">
                                    {{ $errors->first('foto_foto')}}
                                </div>
                            @endif

                        </div>

                        {{-- <div class="form-group">
                            <label>PDF</label>
                            <input type="file" name="pelanggan_pdf" class="form-control" placeholder="Masukan Tarif Overtime"></input>

                             @if($errors->has('pelanggan_pdf'))
                                <div class="text-danger">
                                    {{ $errors->first('pelanggan_pdf')}}
                                </div>
                            @endif

                        </div> --}}

                        <div class="form-group">
                            <input type="submit" class="btn btn-success" value="Simpan">
                        </div>

                    </form>

                </div>
            </div>
        </div>
@endsection
