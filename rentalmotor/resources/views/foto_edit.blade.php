@extends('layouts.template')
@section('container')
<div class="container">
            <div class="card mt-5">
                <div class="card-header text-center">
                   Edit Foto
                </div>
                <div class="card-body">
                    <a href="/foto" class="btn btn-primary">Kembali</a>
                    <br/>
                    <br/>

                    <form method="post" action="/foto/{{$foto->id}}/update" enctype="multipart/form-data" >

                        {{ csrf_field() }}
                        <div class="form-group">
                            <label>Foto ID</label>
                            <input  type="text" name="id" class="form-control" value="{{ $foto->id }}">
                        </div>
                        <div class="form-group">
                            <label>Nama</label>
                            <input  type="text" name="foto_nama" class="form-control" value="{{ $foto->foto_nama }}">
                        </div>


                        <div class="form-group">
                            <label>Alamat</label>
                            <input type="text" name="foto_alamat" value="{{ $foto->foto_alamat }}"class="form-control" placeholder="Masukan Alamat"></input>
                        </div>

                        <div class="form-group">
                            <label>Telephon</label>
                            <input type="text" name="foto_telpon" value="{{ $foto->foto_telpon }}"class="form-control" placeholder="Masukan Telpon"></input>
                        </div>

                        <div class="form-group">
                            <label for="foto_foto"> Foto</label>
                            @if($foto->foto_foto != NULL)
                            <div>
                                <input type="hidden" name="oldgambar" value="{{ $foto->foto_foto }}">
                                <img src="{{ asset('storage/gambar/'.$foto->foto_foto) }}" class="w-25">
                            </div>
                            @endif
                            <input type="file" name="foto_foto" class="form-control-file form-control-sm" id="foto_foto"/>
                        </div>

                        {{-- <div class="form-group">
                            <label for="pelanggan_pdf">Kendaraan PDF</label>
                            @if($pelanggan->pelanggan_pdf != NULL)
                            <div>
                                <input type="hidden" name="oldpdf" value="{{ $pelanggan->pelanggan_pdf }}">
                                <a href="{{ asset('/storage/pdf/'.$pelanggan->pelanggan_pdf) }}">{{ $pelanggan->pelanggan_pdf }}</a>
                            </div>
                            @endif

                            <input type="file" name="pelanggan_pdf" class="form-control-file form-control-sm"
                              id="pelanggan_pdf" />
                        </div> --}}


                        <div class="form-group">
                            <input type="submit" class="btn btn-success" value="Simpan">
                        </div>

                    </form>

                </div>
            </div>
        </div>
@endsection
