<?php

namespace App\Http\Controllers;

use App\Comment;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CommentController extends Controller
{
    public function index()
    {
        $title = 'Comment';
        $data = Comment::orderBy('created_at','desc')->get();
        return view('comment.index',compact('title','data'));
    }

    public function edit($id)
    {
        $title = 'Detail Comment';
        $dt = Comment::find($id);
        return view('comment.edit',compact('title','dt'));
    }

    public function delete($id)
    {
        Comment::find($id)->delete();

        \Session::flash('sukses','Data Berhasil diHapus');

        return redirect()->back();
    }

    public function store(Request $request, Comment $id)
    {

        $data = new Comment();
        $data->id = \Uuid::generate(4);
        $data->artikel_id = $request->artikel_id;
        $data->body = $request->body;
        $data->nama = Auth::user()->name;
        $data->email = Auth::user()->email;
        $data->role_id = 1;

        $data->save();
        return redirect('comment');
    }
}
