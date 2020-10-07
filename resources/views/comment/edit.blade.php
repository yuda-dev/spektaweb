@extends('layouts.master')

@section('content')

    <div class="row">
        <div class="col-md-12">
            <div class="box box-warning">
                <div class="box-header" style="margin-top: 20px;margin-left: 10px">
                    <p>
                        <a href="" class="btn btn-warning btn-refresh"><i class="fa fa-sync"></i></a>
                        <a href="{{url('comment')}}" class="btn btn-danger"><i class="fa fa-backward"></i> </a>
                    </p>
                </div><hr>
                <div class="col-md-12">
                    <!-- general form elements -->
                    <div class="card card-outline card-info">
                        <div class="card-header">
                            <h3 class="card-title">{{$title}}</h3>
                        </div>
                       <table class="table table-hover">
                           <thead>
                               <tr>
                                   <td>Post</td>
                                   <td>:</td>
                                   <td>
                                       <a href="{{ url('detail_post', $dt->post->id) }}">{{ $dt->post->title }}</a>
                                   </td>
                               </tr>
                               <tr>
                                    <td>From</td>
                                    <td>:</td>
                                    <td>
                                        {{ $dt->nama }}
                                    </td>
                                </tr>
                                <tr>
                                    <td>E-mail</td>
                                    <td>:</td>
                                    <td>
                                        {{ $dt->email }}
                                    </td>
                                </tr>
                                <tr>
                                    <td>Comment</td>
                                    <td>:</td>
                                    <td>
                                        <div class="form-group">
                                            <textarea rows="5" style="width: 100%" readonly>{{ $dt->body }}</textarea>
                                        </div>
                                    </td>
                                </tr>
                           </thead>
                       </table>
                    </div>
                    <div class="col-md-12">
                        <!-- general form elements -->
                        <div class="card card-outline card-info">
                            <div class="card-header">
                                <h3 class="card-title">Balas Komentar</h3>
                            </div>
                            <!-- /.card-header -->
                            <!-- form start -->
                            <form role="form"method="post" action="{{ route('balas.comment.store', $dt) }}">
                                @csrf
                                <div class="card-body">
                                    <input type="hidden" name="artikel_id" id="" value="{{ $dt->post->id }}">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Balas</label>
                                        <textarea name="body" id=""rows="5" style="width: 100%"></textarea>
                                    </div>
                                        <button type="submit" class="btn btn-primary"><i class="fa fa-paper-plane"> Balas</i></button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection

