<?php

namespace App\Http\Controllers;

use App\Subscriber;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class SubscriberController extends Controller
{
    public function index()
    {
        $title = 'Subscriber';
        $data = Subscriber::orderBy('created_at','desc')->get();
        return view('subscriber.index',compact('title','data'));
    }

    public function store(Request $request)
    {
        try{
            $data = new Subscriber();
            $data->id = \Uuid::generate(4);
            $data->email = $request->email;

            //dd($data);
            $data->save();

            Session::flash('sukses','Terimakasih telah mengikuti kami');
        } catch(Exception $e)
        {
            Session::flash('gagal','Harap lengkapi data');
        }

        return redirect()->back();
    }

    public function delete($id)
    {
        Subscriber::find($id)->delete();

        \Session::flash('sukses','Data berhasil dihapus');

        return redirect()->back();
    }
}
