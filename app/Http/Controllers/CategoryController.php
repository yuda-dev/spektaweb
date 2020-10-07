<?php

namespace App\Http\Controllers;

use App\Category;
use Exception;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function index()
    {
        $title = 'Data Category';
        $data = Category::orderBy('nama','asc')->get();
        return view('category.index',compact('title','data'));
    }

    public function add()
    {
        $title = 'Tambah Category';
        return view('category.add',compact('title'));
    }

    public function store(Request $request)
    {
        try{
            $data = new Category();

            $data->id = \Uuid::generate(4);
            $data->nama = $request->nama;
            $data->slug = str_slug($request->nama);
            $data->jenis = $request->jenis;
            $data->save();

            \Session::flash('sukses','Data behasil ditambahkan');

            return redirect('category');

        } catch(Exception $e)
        {
            \Session::flash('gagal', $e->getMessage());

            return redirect()->back();
        }
    }

    public function edit($id)
    {
        $dt = Category::find($id);
        $title = "Edit Category $dt->nama";
        return view('category.edit',compact('dt','title'));
    }

    public function update(Request $request, $id)
    {
        try{
            $data = Category::find($id);
            $data->nama = $request->nama;
            $data->slug = str_slug($request->nama);
            $data->jenis = $request->jenis;
            $data->save();

            \Session::flash('sukses','Data behasil diubah');

            return redirect('category');

        } catch(Exception $e)
        {
            \Session::flash('gagal', $e->getMessage());

            return redirect()->back();
        }
    }

    public function delete($id)
    {
        try{
            Category::find($id)->delete();
            \Session::flash('sukses','Data behasil dihapus');

            return redirect()->back();
        } catch(Exception $e){
            \Session::flash('gagal', $e->getMessage());

            return redirect()->back();
        }
    }
}
