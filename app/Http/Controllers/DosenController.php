<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DosenController extends Controller
{
    public function loginDosen(){
        return view('dosen.login');
    }

    public function prosesloginDosen(Request $request){
        $jumlah = DB::table('koor_kp')
        	->where('email', '=', $request->email)
        	->where('password', '=', $request->password)
        	->count();
        if ($jumlah > 0) {
			$data = DB::table('koor_kp')
	        	->where('email', '=', $request->email)
	        	->where('password', '=', $request->password)
	        	->first();
        	session(['id_koor' => $data->id_koor]);
        	return redirect('/dosen/home');
        }else{
        	return redirect('/dosen');
        }
    }

    public function homeDosen()
    {
    	return view('dosen.home');
    }

    public function jadwalujian()
    {
    	$kp = DB::table('kp')->where('penguji', '=', session('id_koor'))->get();
    	return view('dosen.jadwalujian', ['kp' => $kp]);
    }

    public function profile()
    {
    	$dosen_kp = DB::table('koor_kp')->where('id_koor', '=', session('id_koor'))->first();
    	return view('userdosen', ['dosen_kp' => $dosen_kp]);
    }

    public function dafbing()
    {
    	$kp = DB::table('kp')->where('status', '=', '1')->get();
    	$dosen = DB::table('koor_kp')->get();
    	return view('dosen.dafbimbing', ['kp' => $kp, 'dosen' => $dosen]);
    }

    public function logout()
    {
        session(['id_koor' => '']);
        return redirect('/dosen');
    }
}
