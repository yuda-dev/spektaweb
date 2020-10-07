@extends('layouts.master')

@section('content')

    <div class="row">
        <div class="col-md-12">
            <div class="box box-warning">
                <div class="box-header" style="margin-top: 20px;margin-left: 2px">
                    <p>
                        <button class="btn btn-warning btn-refresh"><i class="fa fa-sync"></i></button>
                    </p>
                </div><hr>

                <div class="card">
                    <div class="card-header" style="background-color: var(--blue);color: white">
                        <h3 class="card-title">{{$title}}</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <div class="table table-responsive">
                            <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Post</th>
                                    <th>Nama</th>
                                    <th>Tanggal</th>
                                    <th>Waktu</th>
                                    <th>action</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($data as $key=>$dt)
                                <tr>
                                    <td>{{ $key+1 }}</td>
                                    <td><a href="{{ url('detail_post', $dt->post->id) }}">{{ $dt->post->title }}</a></td>
                                    <td>{{ $dt->nama }}</td>
                                    <td>{{date('d-F-Y', strtotime($dt->created_at)) }}</td>
                                    <td>{{ \Carbon\Carbon::parse($dt->created_at)->diffForHumans() }}</td>
                                    <td>
                                        <a href="{{url('comment',$dt->id)}}" class="btn btn-sm btn-flat btn-success"><i class="fa fa-eye"></i> </a>
                                        <a href="{{url('comment/delete',$dt->id)}}" class="btn btn-sm btn-flat btn-danger btn-hapus"><i class="fa fa-trash"></i> </a>
                                    </td>
                                </tr>
                                @endforeach
                                </tbody>
                                <tfoot>
                                <tr>
                                    <th>No</th>
                                    <th>Post</th>
                                    <th>Nama</th>
                                    <th>Tanggal</th>
                                    <th>Waktu</th>
                                    <th>action</th>
                                </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->
            </div>
        </div>
    </div>
@endsection