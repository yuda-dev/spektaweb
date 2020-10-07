<?php

namespace App\Http\Controllers;

use App\Artikel;
use App\Category;
use App\Subscriber;
use App\Notifications\NewPost;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Notification;
use Illuminate\Support\Facades\Storage;

class PostController extends Controller
{
    public function index()
    {
        $title = 'Data Artikel';
        $data = Artikel::orderBy('created_at','desc')->get();
        return view('post.index',compact('title','data'));
    }

    public function add()
    {
        $title = 'Tambah Artikel';
        $category = Category::orderBy('nama','asc')->get();
        return view('post.add',compact('title','category'));
    }

    public function store(Request $request)
    {
            $detail = $request->input('body');
            
            $data = new Artikel();
            $data->id = \Uuid::generate(4);
            $data->user_id = \Auth::id();
            $data->title = $request->title;
            $data->slug = str_slug($request->title);
            $data->body = $detail;
            $data->category_id = $request->category_id;
            $data->jenis = $request->jenis;
            $file = $request->file('image');
            if($file)
            {
                $nama = time().'-'. $file->getClientOriginalName();
                $file->move('artikel', $nama);
                $data->image = $nama;
            }

            $data->save();

            \Session::flash('sukses','Data berhasil ditambahkan');

            return redirect('post');
    }

    public function publish($id)
    {
        try{

            Artikel::where('id', $id)->update([
            'status' => 1,
            'created_at' => date('Y-m-d H:i:s')
            ]);

            \Session::flash('sukses','Artikel behasil di Publish');
        } catch(Exception $e){

            \Session::flash('gagal',$e->getMessage());

        }

        return redirect()->back();
    }

    public function unpublish($id)
    {
        try{

            Artikel::where('id', $id)->update([
            'status' => 0
            ]);

            \Session::flash('sukses','Artikel behasil di UnPublish');

        } catch(Exception $e){

            \Session::flash('gagal',$e->getMessage());

        }

        return redirect()->back();
    }

    public function detail($id)
    {
        $dt = Artikel::find($id);
        $title = "Detail $dt->title ";
        return view('post.detail',compact('title','dt'));
    }

    public function edit($id)
    {
        $dt = Artikel::find($id);
        $title = "Edit $dt->title ";
        $category = Category::get();
        return view('post.edit',compact('title','dt','category'));
    }

    public function update(Request $request, $id)
    {
            $detail = $request->input('body');
            $data = Artikel::find($id);
            $data->user_id = \Auth::id();
            $data->title = $request->title;
             $data->slug = str_slug($request->title);
            $data->body = $detail;
            $data->category_id = $request->category_id;
            $data->jenis = $request->jenis;
            
            if(file_exists('artikel/'. $data->image)){
                unlink('artikel/'. $data->image);
            }
            $file = $request->file('image');
            if($file)
            {
                $nama = time().'-'. $file->getClientOriginalName();
                $file->move('artikel', $nama);
                $data->image = $nama;
            }

            $data->save();

            \Session::flash('sukses','Data berhasil diubah');

            return redirect('post');
            
    }

    public function delete($id)
    {
        try{

            $artikel = Artikel::find($id);
            if(file_exists('artikel/'. $artikel->image)){
                unlink('artikel/'. $artikel->image);
            }
            $artikel->delete();

            \Session::flash('sukses','Artikel berhasil dihapus');

        } catch(Exception $e){

            \Session::flash('gagal', $e->getMessage());

        }

        return redirect()->back();
    }
}
