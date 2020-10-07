<?php

namespace App\Http\Controllers;

use App\Contact;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class ContactController extends Controller
{
    public function index()
    {
        $title = 'Pesan';
        $data = Contact::orderBy('created_at','desc')->get();
        return view('contact.index',compact('title','data'));
    }

    public function edit($id)
    {
        $title = 'Detail Pesan';
        $dt = Contact::find($id);

        return view('contact.edit',compact('title','dt'));
    }

    public function store(Request $request)
    {
        try{
            $data = new Contact();
            $data->id = \Uuid::generate(4);
            $data->nama = $request->nama;
            $data->email = $request->email;
            $data->body = $request->body;

            //dd($data);
            $data->save();

            Session::flash('sukses','Pesan berhasil di Kirimkan. Tunggu Balasan melalui E-mail. Thanks.');
        } catch(Exception $e){
            Session::flash('gagal','Pesan gagal di Kirimkan. Tolong lengkapi data. Thanks.');
        }

        return redirect()->back();
    }

    public function delete($id)
    {
        Contact::find($id)->delete();

        \Session::flash('sukses','Data berhasil dihapus');

        return redirect()->back();
    }
}
