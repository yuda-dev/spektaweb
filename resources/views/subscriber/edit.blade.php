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
                        <form role="form"method="post" action="{{ url('category/edit', $dt->id) }}">
                            @csrf
                            @method('PUT')
                            <div class="card-body">
                                <div class="card-body">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Nama Category</label>
                                        <input type="text" class="form-control" name="nama" value="{{ $dt->nama }}" id="exampleInputEmail1" placeholder="Masukan Nama Category" autofocus>
                                    </div>
                                    <div class="form-group">
                                        <div class="custom-control custom-checkbox" >
                                          <input class="custom-control-input" type="checkbox" id="customCheckbox1" value="artikel" name="jenis">
                                          <label for="customCheckbox1" class="custom-control-label">Artikel</label>
                                        </div>
                                        <div class="custom-control custom-checkbox">
                                          <input class="custom-control-input" type="checkbox" id="customCheckbox2" value="portofolio" name="jenis">
                                          <label for="customCheckbox2" class="custom-control-label">Portofolio</label>
                                        </div>
                                    </div>
                                        <button type="submit" class="btn btn-primary"><i class="fa fa-save"> Update</i></button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection

