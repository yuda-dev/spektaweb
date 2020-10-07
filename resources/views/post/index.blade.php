@extends('layouts.master')

@section('content')

    <div class="row">
        <div class="col-md-12">
            <div class="box box-warning">
                <div class="box-header" style="margin-top: 20px;margin-left: 2px">
                    <p>
                        <button class="btn btn-warning btn-refresh"><i class="fa fa-sync"></i></button>
                        <a href="{{url('post/add')}}" class="btn btn-primary"><i class="fa fa-plus"></i> Tambah</a>
                    </p>
                </div> <hr>

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
                                    <th>Title</th>
                                    <th>Jenis</th>
                                    <th>View Count</th>
                                    <th>Status</th>
                                    <th>Created_at</th>
                                    <th>action</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($data as $key=>$dt)
                                <tr>
                                    <td>{{ $key+1 }}</td>
                                    <td>{!! substr(strip_tags($dt->title),0,15) !!}</td>
                                    <td>{{ $dt->jenis }}</td>
                                    <td>{{ $dt->view_count }}</td>
                                    <td>
                                        @if ($dt->status == 0)
                                            <span class="badge bg-danger"> Pending</span>
                                        @else
                                             <span class="badge bg-success"> Published</span>
                                        @endif
                                    </td>
                                    <td>{{ date('d F Y ', strtotime($dt->created_at)) }}</td>
                                    <td>
                                        <a href="{{url('post/edit',$dt->id)}}" id="edit" class="btn btn-sm btn-flat btn-success"><i class="fa fa-edit"></i> </a>
                                        <a href="{{url('post/delete', $dt->id)}}" id="delete" class="btn btn-sm btn-flat btn-danger btn-hapus"><i class="fa fa-trash"></i> </a>
                                        <a href="{{url('post/detail',$dt->id)}}" id="edit" class="btn btn-sm btn-flat btn-warning"><i class="fa fa-eye"></i> </a>
                                    </td>
                                </tr>
                                @endforeach
                                </tbody>
                                <tfoot>
                                <tr>
                                    <th>No</th>
                                    <th>Title</th>
                                    <th>Jenis</th>
                                    <th>View Count</th>
                                    <th>Status</th>
                                    <th>Created_at</th>
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
