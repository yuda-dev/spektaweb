<?php

namespace App\Http\Controllers;

use App\User;
use App\Role;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AddUserController extends Controller
{
    public function index()
    {
        $title = 'Data User';
        $data = User::get();
        return view('users.index',compact('title','data'));
    }

    public function add()
    {
        $title = 'Tambah Data user';
        $level = Role::get();
        return view('users.add', compact('title','level'));
    }

    public function store(Request $request)
    {
        $this->validate($request,[
            'name' => ['required', 'string', 'max:255'],
            'role_id' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);

        $data = new User();
        $data->name = $request->name;
        $data->role_id = $request->role_id;
        $data->email = $request->email;
        $data->password = Hash::make($request->password);
        $data->save();

        \Session::flash('sukses','Data berhasil ditambahkan');

        return redirect('users');
    }

    public function profile()
    {
        $title = 'Profile';
        $dt = User::find(Auth::id());
        return view('profile',compact('title','dt'));
    }

    public function edit($id)
    {
        $title = 'Profile';
        $dt = User::find($id);
        return view('users.edit',compact('title','dt'));
    }

    public function updateprofile(Request $request)
    {
        $data = User::find(Auth::id());
        $data->name = $request->name;
        $data->email = $request->email;

        if(file_exists('artikel/'. $data->photo)){
            unlink('artikel/'. $data->photo);
        }
        $file = $request->file('photo');
        if($file){
            $file->move('uploads', $file->getClientOriginalName());
            $data->photo =$file->getClientOriginalName();
        }
        $data->save();

        \Session::flash('sukses','Data berhasil ubah');

        return redirect()->back();
    }

    public function updatepassword(Request $request)
    {
        $this->validate($request,[
            'oldpassword' =>'required',
            'password' => 'required', 'string', 'min:8', 'confirmed'
        ]);

        $ubahPassword = Auth::user()->password;
        if(Hash::check($request->oldpassword, $ubahPassword))
        {
                $user = User::find(Auth::id());
                $user->password = Hash::make($request->password);
                $user->save();
                Auth::logout();
                return redirect()->back();
        }
    }

    public function delete($id)
    {
        $user = User::find($id);
        if(file_exists('artikel/'. $user->photo)){
            unlink('artikel/'. $user->photo);
        }
        $user->delete();

        \Session::flash('sukses','Data berhasil di tambahkan');

        return redirect()->back();
    }
}
