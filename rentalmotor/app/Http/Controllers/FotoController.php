<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Foto;
use Storage;
use DateTime;

class FotoController extends Controller
{
       public function foto(Request $request)
       {
        if($request->has('cari')){
            $data_foto = \App\Foto::where('kendaraan_merk','LIKE','%'. $request->cari. '%')->get();
        }else{
            $data_foto = \App\Foto::all();
        }

        $data_foto = \App\Foto::paginate(10);
        return view('/foto', ['data_foto' => $data_foto]);

       }

       public function tambah()
       {
           return view('foto_tambah');
       }

       public function create(Request $request)
       {

          // \App\Kendaraan::create($request->all());

          $this->validate($request, [
            'foto_nama'=>'required',
            'foto_alamat'=>'required',
            'foto_telpon'=>'required',
            'foto_foto'=>'image|mimes:jpeg,png,jpg,gif'

          ]);

          $now = new DateTime("NOW");
          $namagambar = NULL;
        //   $namapdf = NULL;

          if($request->foto_foto != null){
              $namagambar = $now->format('Y-m-d__H-i-s').$request->foto_foto->getClientOriginalName();
              $request->foto_foto->storeAs('gambar', $namagambar, 'public');
          }

        //   if($request->kendaraan_pdf != null){
        //       $namapdf = $now->format('Y-m-d__H-i-s').$request->kendaraan_pdf->getClientOriginalName();
        //       $request->kendaraan_pdf->storeAs('pdf', $namapdf, 'public');
        //   }

          Foto::create([
              'foto_nama'=>$request->foto_nama,
              'foto_alamat'=>$request->foto_alamat,
              'foto_telpon'=>$request->foto_telpon,
              'foto_foto'=>$namagambar
          ]);

          return redirect('/foto');

       }

       public function edit($id)
       {
           $foto = \App\Foto::find($id);
           return view('foto_edit', ['foto' => $foto]);

       }

       public function update(Request $request, Foto $foto, $id)
       {


        // if($request->hasFile('kendaraan_foto')){
        //     $request->file('kendaraan_foto')->move('images/',$request->file('kendaraan_foto')->getClientOriginalName());
        //     $kendaraan->kendaraan_foto = $request->file('kendaraan_foto')->getClientOriginalName();
        //     $kendaraan->save();
        // }

          $this->validate($request, [
            'foto_nama'=>'required',
            'foto_alamat'=>'required',
            'foto_telpon'=>'required',
            'foto_foto'=>'image|mimes:jpeg,png,jpg,gif'

          ]);

          $now = new DateTime("NOW");
          $namagambar = NULL;
        //   $namapdf = NULL;

          if($request->oldgambar!=NULL){
              $namagambar=$request->oldgambar;
          }

        //   if($request->oldpdf!=NULL){
        //       $namapdf=$request->oldpdf;
        //   }

          if($request->foto_foto != null){
              Storage::disk('public')->delete('gambar/'.$request->oldgambar);
              $namagambar = $now->format('Y-m-d__H-i-s').$request->foto_foto->getClientOriginalName();
              $request->foto_foto->storeAs('gambar', $namagambar, 'public');
          }

        //   if($request->kendaraan_pdf != null){
        //       Storage::disk('public')->delete('pdf/'.$request->oldpdf);
        //       $namapdf = $now->format('Y-m-d__H-i-s').$request->kendaraan_pdf->getClientOriginalName();
        //       $request->kendaraan_pdf->storeAs('pdf', $namapdf, 'public');
        //   }

          $foto = Foto::find($id);
          $foto->update([
            'foto_nama'=>$request->foto_nama,
            'foto_alamat'=>$request->foto_alamat,
            'foto_telpon'=>$request->foto_telpon,
            'foto_foto'=>$namagambar
          ]);

          $foto->save();

          // Kendaraan::where('id', $kendaraan)
          //   ->update([
          //     'kendaraan_platnomor'=>$request->kendaraan_platnomor,
          //     'kendaraan_merk'=>$request->kendaraan_merk,
          //     'kendaraan_tipe'=>$request->kendaraan_tipe,
          //     'kendaraan_tahunrakit'=>$request->kendaraan_tahunrakit,
          //     'kendaraan_seat'=>$request->kendaraan_seat,
          //     'kendaraan_foto'=>$namagambar,
          //     'kendaraan_pdf'=>$namapdf,
          //     'kendaraan_fasilitas'=>$request->kendaraan_fasilitas,
          //     'kendaraan_status'=>$request->kendaraan_status
          // ]);

          return redirect('/foto');
       }

       public function delete($id)
       {
       $foto = \App\Foto::find($id);
       $foto->delete($foto);
       return redirect('/foto');
       }
       public function detail($id)
       {
           $foto = \App\Foto::find($id);
           return view('foto_detail', ['foto' => $foto]);

       }

}
