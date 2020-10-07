@extends('layouts.master')
@section('content')

    <div class="row">
        <div class="col-md-12">
            <div class="box box-warning">
                <div class="box-header" style="margin-top: 20px;margin-left: 10px">
                    <p>
                        <a href="" class="btn btn-warning btn-refresh"><i class="fa fa-sync"></i></a>
                        <a href="{{url('post')}}" class="btn btn-danger"><i class="fa fa-backward"></i></a>
                    </p>
                </div><hr>
                <form role="form"method="post" action="{{ url('post/add') }}" enctype="multipart/form-data">
                    @csrf
                    <div class="row">
                        <div class="col-md-9">
                            <!-- general form elements -->
                            <div class="card card-outline card-info">
                                <div class="card-header">
                                    <h3 class="card-title">{{$title}}</h3>
                                </div>
                                <!-- /.card-header -->
                                <!-- form start -->
                                    <div class="card-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Title</label>
                                            <input type="text" class="form-control" name="title" id="exampleInputEmail1" placeholder="Masukan Judul Artikel">
                                        </div>
    
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">body</label>
                                            <textarea class="summernote" placeholder="Place some text here" name="body"
                                                style="width: 100%; height: 400px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
                                            </textarea>
                                        </div>
                                    </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="card card-outline card-info">
                                <div class="card-header">
                                    <h3 class="card-title"></h3>
                                </div>
    
                                <div class="card-body">
                                    <div class="form-group">
                                        <label>Thumbnail</label>
                                        <div class="input-group">
                                            <span class="input-group-btn">
                                                <span class="btn btn-default btn-file">
                                                    Browse… <input type="file" id="imgInp" name="image">
                                                </span>
                                            </span>
                                            <input type="text" class="form-control" value="Pilih thumbnail" readonly>
                                        </div><hr>
                                        <img src="" id='img-upload'/> <center><p>Image Preview</p></center><hr>
                                    </div>
                                    <div class="form-group" style="margin-top: -15px">
                                        <label>Category</label>
                                        <select class="form-control select2" style="width: 100%;" name="category_id">
                                            <option>Pilih Category</option>
                                            @foreach ($category as $ctg)
                                                <option value="{{ $ctg->id }}">{{ $ctg->nama }}</option>
                                            @endforeach
                                        </select>
                                    </div><hr>
                                    <div class="form-group">
                                        <div class="custom-control custom-checkbox" >
                                          <input class="custom-control-input" type="checkbox" id="customCheckbox1" value="artikel" name="jenis">
                                          <label for="customCheckbox1" class="custom-control-label">Artikel</label>
                                        </div>
                                        <div class="custom-control custom-checkbox">
                                          <input class="custom-control-input" type="checkbox" id="customCheckbox2" value="portofolio" name="jenis">
                                          <label for="customCheckbox2" class="custom-control-label">Portofolio</label>
                                        </div>
                                    </div><hr>
                                    <button type="submit" class="btn btn-success btn-block"><i class="fa fa-save"> Simpan</i></button>
                                </div>
                            </div>
                        </div>
                    </div>
                   
                </form>
            </div>
        </div>
    </div>

@endsection

@section('scripts')
    <script type="text/javascript">
        $(document).ready( function() {
    	$(document).on('change', '.btn-file :file', function() {
		var input = $(this),
			label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
		input.trigger('fileselect', [label]);
		});

		$('.btn-file :file').on('fileselect', function(event, label) {
		    
		    var input = $(this).parents('.input-group').find(':text'),
		        log = label;
		    
		    if( input.length ) {
		        input.val(log);
		    } else {
		        if( log ) alert(log);
		    }
	    
		});
		function readURL(input) {
		    if (input.files && input.files[0]) {
		        var reader = new FileReader();
		        
		        reader.onload = function (e) {
		            $('#img-upload').attr('src', e.target.result);
		        }
		        
		        reader.readAsDataURL(input.files[0]);
		    }
		}

		$("#imgInp").change(function(){
		    readURL(this);
		}); 	
	});
    </script>
@endsection

