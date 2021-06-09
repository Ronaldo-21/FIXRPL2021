<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class MahasiswaController extends Controller
{
    public function mhs(){
        return view('/mhs');
    }

    public function formSuratKP(){
        $skp = DB::table('surat_keterangan')->get();
        return view('suratketerangan', ['skp' => $skp]);
    }

    public function simpanSuratKP(Request $request){
        DB::table('surat_keterangan')->insert([
            'tahun' => $request->tahun,
            'semester' => $request->semester,
            'nim' => $request->nim,
            'lembaga' => $request->lembaga,
            'pimpinan' => $request->pimpinan,
            'no_tlpn' => $request->no_tlpn,
            'alamat' => $request->alamat,
            'fax' => $request->fax,
            'dokumen' => $request->dokumen,
            'status' => 0
        ]);
        return redirect('/mhs/suratketerangan')->with('success','Data Saved');
    }

    public function formPraKP(){
        $prakp = DB::table('prakp')->get();
        $koor_kp = DB::table('koor_kp')->get();
        return view('prakp', ['prakp' => $prakp, 'koor_kp' => $koor_kp]);
    }

    public function simpanPraKP(Request $request){
        DB::table('prakp')->insert([
            'tahun' => $request->tahun,
            'semester' => $request->semester,
            'judul' => $request->judul,
            'nim' => $request->nim,
            'tools' => $request->tools,
            'spesifikasi' => $request->spesifikasi,
            'dokumen' => $request->dokumen,
            'penguji' => 0,
            'ruang' => 0,
            'lembaga' => $request->lembaga,
            'pimpinan' => $request->pimpinan,
            'alamat' => $request->alamat,
            'no_telp' => $request->no_telp,
            'status' => 0
        ]);
        return redirect('/mhs/prakp')->with('success','Data Saved');
    }

    public function formKP()
    {
    	$formkp = DB::table('kp')->get();
    	return view('kp', ['formkp' => $formkp]);
    }

    public function simpanKP(Request $request){
        DB::table('kp')->insert([
            'tahun' => $request->tahun,
            'semester' => $request->semester,
            'nim' => $request->nim,
            'judul' => $request->judul,
            'tanggal_ujian' => '1111-11-11',
            'tools' => $request->tools,
            'spesifikasi' => $request->spesifikasi,
            'dokumen' => $request->dokumen,
            'lembaga' => $request->lembaga,
            'pimpinan' => $request->pimpinan,
            'alamat' => $request->alamat,
            'no_telp' => $request->no_telp,
            'status_ujian' => $request->status_ujian,
            'nik' => 0,
            'pembimbing' => 0,
            'penguji' => 0,
            'ruang' => 0,
            'status' => 0
        ]);
        return redirect('/mhs/kp')->with('success','Data Saved');
    }

    public function ujiankp(){
        $user_mhs = DB::table('mahasiswa')->where('google_Id', '=', session('key'))->get();
        $kp = DB::table('kp')->where('tanggal_ujian', '!=', '1111-11-11')->get();
        return view('ujiankp', ['kp' => $kp, 'mahasiswa' => $user_mhs]);
    }

    public function userMhs(){
        $user_mhs = DB::table('mahasiswa')->where('google_Id', '=', session('key'))->get();
        return view('usermhs', ['mahasiswa' => $user_mhs]);
    }

    public function logout()
    {
        session(['key' => '']);
        return redirect('/');
    }
}
