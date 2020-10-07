<?php

namespace App\Http\Controllers;

use App\Artikel;
use App\Comment;
use App\Contact;
use App\Subscriber;
use App\Visitor;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{
    public function index()
    {
        $title = 'Dashboard Admin';
        $hari_ini = Visitor::whereDay('created_at','=', date('d'))->count();
        $bulan_ini = Visitor::whereMonth('created_at','=', date('m'))->count();
        $tahun_ini = Visitor::whereYear('created_at','=', date('Y'))->count();
        $post_view = Artikel::get()->sum('view_count');
        $comment = Comment::where('role_id', 0)->count();
        $contact = Contact::get()->count();
        $artikel = Artikel::get()->count();
        $subscriber = Subscriber::get()->count();
        $data = Visitor::orderBy('created_at','desc')->get();
        return view('dashboard.index',compact('title','hari_ini','bulan_ini','tahun_ini','post_view','comment','artikel','subscriber','data','contact'));
    }

    public function delete($id)
    {
        Visitor::find($id)->delete();

        \Session::flash('sukses','Ip Address berhasil di hapus');

        return redirect()->back();
    }
}
