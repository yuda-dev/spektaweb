@extends('layouts.master')

@section('content')


<div class="row" style="margin-top: 20px">
    <div class="col-lg-3 col-6">
        <!-- small box -->
        <div class="small-box bg-success">
            <div class="inner">
                <h3>{{ $artikel }}</h3>

                <p>Artikel</p>
            </div>
            <div class="icon">
                <i class="ion ion-bag"></i>
            </div>
            <a href="{{ url('post') }}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <div class="col-lg-3 col-6">
        <!-- small box -->
        <div class="small-box bg-warning">
            <div class="inner">
                <h3>{{ $comment }}</h3>

                <p>Komentar</p>
            </div>
            <div class="icon">
                <i class="ion ion-bag"></i>
            </div>
            <a href="{{ url('comment') }}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <div class="col-lg-3 col-6">
        <!-- small box -->
        <div class="small-box bg-danger">
            <div class="inner">
                <h3>{{ $subscriber }}</h3>

                <p>Subscriber</p>
            </div>
            <div class="icon">
                <i class="ion ion-bag"></i>
            </div>
            <a href="{{ url('subscriber') }}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <div class="col-lg-3 col-6">
        <!-- small box -->
        <div class="small-box bg-info">
            <div class="inner">
                <h3>{{ $contact }}</h3>

                <p>Kontak</p>
            </div>
            <div class="icon">
                <i class="ion ion-bag"></i>
            </div>
            <a href="{{ url('contact') }}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <div class="col-lg-3 col-6">
        <!-- small box -->
        <div class="small-box bg-info">
            <div class="inner">
                <h3>{{ $post_view }}</h3>

                <p>Artikel dilihat</p>
            </div>
            <div class="icon">
                <i class="ion ion-bag"></i>
            </div>
            <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-6">
        <!-- small box -->
        <div class="small-box bg-success">
            <div class="inner">
                <h3>{{ $hari_ini }}</h3>

                <p>Pengunjung Hari Ini</p>
            </div>
            <div class="icon">
                <i class="ion ion-stats-bars"></i>
            </div>
            <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-6">
        <!-- small box -->
        <div class="small-box bg-warning">
            <div class="inner">
                <h3>{{ $bulan_ini }}</h3>

                <p>Pengunjung Bulan Ini</p>
            </div>
            <div class="icon">
                <i class="ion ion-person-add"></i>
            </div>
            <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-6">
        <!-- small box -->
        <div class="small-box bg-danger">
            <div class="inner">
                <h3>{{ $tahun_ini }}</h3>

                <p>Pengunjung Tahun Ini</p>
            </div>
            <div class="icon">
                <i class="ion ion-pie-graph"></i>
            </div>
            <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <!-- ./col -->
</div>

<div class="card">
    <div class="card-header" style="background-color: var(--blue);color: white">
        <h3 class="card-title">IP Visitor</h3>
    </div>
    <div class="card-body">
        <div class="table table-responsive">
            <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th>No</th>
                    <th>Ip Visitor</th>
                    <th>Tanggal</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                @foreach($data as $key=>$dt)
                <tr>
                    <td>{{ $key+1 }}</td>
                    <td>{{ $dt->ip_visitor }}</td>
                    <td>{{date('d-F-Y H:i:s', strtotime($dt->created_at)) }}</td>
                    <td> 
                        <a href="{{ url('dashboard/delete/visitor', $dt->id) }}" class="btn btn-sm btn-danger btn-hapus"><i class="fa fa-trash"> </i></a>
                    </td>
                </tr>
                @endforeach
                </tbody>
                <tfoot>
                <tr>
                    <th>No</th>
                    <th>Ip Visitor</th>
                    <th>Tanggal</th>
                    <th>Action</th>
                </tr>
                </tfoot>
            </table>
        </div>
    </div>
</div>
<!-- /.row -->
@endsection