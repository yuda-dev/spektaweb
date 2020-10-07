@extends('layouts.master')

@section('content')

    <div class="row">
        <div class="col-md-12">
            <div class="box box-warning">
                <div class="box-header" style="margin-top: 20px;margin-left: 10px">
                    <p>
                        <a href="" class="btn btn-warning btn-refresh"><i class="fa fa-sync"></i></a>
                        <a href="{{url('category')}}" class="btn btn-danger"><i class="fa fa-backward"></i> </a>
                    </p>
                </div><hr>
                <div class="col-md-12">
                    <!-- general form elements -->
                    <div class="card card-outline card-info">
                        <div class="card-header">
                            <h3 class="card-title">{{$title}}</h3>
                        </div>
                        <!-- /.card-header -->
                        <!-- form start -->
                        <form role="form"method="post" action="{{ url('category/add') }}">
                            @csrf
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Nama Category</label>
                                    <input type="text" class="form-control" name="nama" id="exampleInputEmail1" placeholder="Masukan Nama Category" autofocus>
                                </div>
                                    <button type="submit" class="btn btn-primary"><i class="fa fa-save"> Simpan</i></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection

