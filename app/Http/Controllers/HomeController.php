<?php

namespace App\Http\Controllers;

use App\Artikel;
use App\Category;
use App\Comment;
use App\Contact;
use App\Visitor;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;

class HomeController extends Controller
{
    public function index(Request $request)
    {
        $judul = 'SpektaWeb - Mari Belajar Bersama';
        $artikel = Artikel::where('jenis',['artikel'])->take(3)->latest()->get();
        $category = Category::where('jenis',['artikel'])->get();
        $populer = Artikel::orderBy('view_count','desc')->where('jenis',['artikel'])->take(5)->get();
        $ip = $request->ip();
        $count = Visitor::where('ip_visitor', $ip)->whereDay('created_at','=', date('d'))->count();
        if($count == 0)
        {
            Visitor::insert([
                'ip_visitor' => $ip,
                'created_at' => date('Y-m-d H:i:s')
            ]);
        }
        return view('welcome',compact('judul','artikel','category','populer','ip'));
    }

    public function detail_post(Request $request, $slug)
    {
        $post = Artikel::where('slug', $slug)->first();
        $judul = "$post->title";

        $postkey = 'post_' . $post->id;
        
        if(!Session::has($postkey)){
            $post->increment('view_count');
            Session::put($postkey, 1);
        }

        $related = Artikel::where('category_id', $post->categories->id)
                            ->where('id', '!=', $post->id)
                            ->orderBy('view_count','desc')
                            ->take(3)
                            ->get();
        $ip = $request->ip();
        $count = Visitor::where('ip_visitor', $ip)->whereDay('created_at','=', date('d'))->count();
        if($count == 0)
        {
            Visitor::insert([
                'ip_visitor' => $ip,
                'created_at' => date('Y-m-d H:i:s')
            ]);
        }
        
        $category = Category::where('jenis',['artikel'])->get();

        return view('detail_post',compact('post','judul','related','category'));
    }


    public function detail_porto(Request $request, $slug)
    {
        $post = Artikel::where('slug', $slug)->first();
        $judul = "$post->title";

        $postkey = 'post_' . $post->id;
        
        if(!Session::has($postkey)){
            $post->increment('view_count');
            Session::put($postkey, 1);
        }

        $related = Artikel::where('category_id', $post->categories->id)
                            ->where('id', '!=', $post->id)
                            ->orderBy('view_count','desc')
                            ->take(3)
                            ->get();

        $ip = $request->ip();
        $count = Visitor::where('ip_visitor', $ip)->whereDay('created_at','=', date('d'))->count();
        if($count == 0)
        {
            Visitor::insert([
                'ip_visitor' => $ip,
                'created_at' => date('Y-m-d H:i:s')
            ]);
        }
        
        $category = Category::where('jenis',['portofolio'])->get();

        return view('detail_porto',compact('post','judul','related','category'));
    }

    public function store(Request $request, Artikel $post)
    {
        try{
            Comment::create([
                'id' => \Uuid::generate(4),
                'artikel_id' => $post->id,
                'body' => $request->body,
                'nama' => $request->nama,
                'email' => $request->email
            ]);
    
            Session::flash('success','Komen berhasil di tambahkan');
        } catch(Exception $e){
            Session::flash('failed','Harap Lengkapi Data');
        }
        return redirect()->back();
    }

    public function blog(Request $request)
    {
        $judul = 'Blog - SpektaWeb';
        $artikel = Artikel::where('jenis',['artikel'])->latest()->paginate(6);
        $category = Category::where('jenis',['artikel'])->get();
        $populer = Artikel::orderBy('view_count','desc')->where('jenis',['artikel'])->take(3)->get();
        $ip = $request->ip();
        $count = Visitor::where('ip_visitor', $ip)->whereDay('created_at','=', date('d'))->count();
        if($count == 0)
        {
            Visitor::insert([
                'ip_visitor' => $ip,
                'created_at' => date('Y-m-d H:i:s')
            ]);
        }
        return view('blog',compact('judul','artikel','category','populer','ip'));
    }

    public function portofolio(Request $request)
    {
        $judul = 'Portofolio - SpektaWeb';
        $artikel = Artikel::where('jenis',['portofolio'])->latest()->paginate(4);
        $category = Category::where('jenis',['portofolio'])->get();
        $random = Artikel::where('jenis',['portofolio'])
                           ->orderBy('view_count','desc')
                           ->take(3)
                           ->get();
        $ip = $request->ip();
        $count = Visitor::where('ip_visitor', $ip)->whereDay('created_at','=', date('d'))->count();
        if($count == 0)
        {
            Visitor::insert([
                'ip_visitor' => $ip,
                'created_at' => date('Y-m-d H:i:s')
            ]);
        }
        return view('portofolio',compact('judul','artikel','random','ip','category'));
    }

    public function postbyCategory(Request $request, $slug)
    {
        $category = Category::where('slug', $slug)->first();
        $category->load(['artikels' => function($q){
            $q->orderBy('created_at','desc')->paginate(6);
        }]);
        $judul = "$category->nama";
        $related = Artikel::where('category_id', $category->id)
                            ->where('id', '!=', $category->id)
                            ->orderBy('view_count','desc')
                            ->take(3)->get();

        $ip = $request->ip();
        $count = Visitor::where('ip_visitor', $ip)->whereDay('created_at','=', date('d'))->count();
        if($count == 0)
        {
            Visitor::insert([
                'ip_visitor' => $ip,
                'created_at' => date('Y-m-d H:i:s')
            ]);
        }
        
        $categori = Category::where('jenis',['artikel'])->get();
        
        return view('category', compact('category','judul','related','categori'));

    }

    public function search(Request $request)
    {
        $cari = $request->input('cari');
        $artikel = Artikel::where('title','LIKE',"%$cari%")->paginate(6);
        $category = Category::where('jenis',['artikel'])->get();
        $judul = "Mencari: $cari";
        $populer = Artikel::where('jenis',['artikel'])->orderBy('view_count','desc')->take(3)->get();
        return view('search', compact('cari','artikel','judul','populer','category'));
    }

    public function contact(Request $request)
    {
        $judul = 'Contact Me - SpektaWeb';
        $ip = $request->ip();
        $count = Visitor::where('ip_visitor', $ip)->whereDay('created_at','=', date('d'))->count();
        if($count == 0)
        {
            Visitor::insert([
                'ip_visitor' => $ip,
                'created_at' => date('Y-m-d H:i:s')
            ]);
        }
        return view('contactme', compact('judul'));
    }
    
    public function privacy_policy()
    {
    	$title = 'Privacy Policy for SpketaWeb';
    	return view('privacy-policy',compact('title'));
    }
}
