@extends('layouts.master')
@section('content')

    <div class="row">
        <div class="col-md-12">
            <div class="box box-warning">
                <div class="box-header" style="margin-top: 20px;margin-left: 10px">
                    <p>
                        <a href="" class="btn btn-warning btn-sm btn-refresh"><i class="fa fa-sync"></i></a>
                        <a href="{{url('post')}}" class="btn btn-sm btn-success"><i class="fa fa-backward"></i></a>
                        <a href="{{url('publish',$dt->id)}}" id="edit" class="btn btn-sm btn-info"><i class="fa fa-arrow-up"> Publish</i> </a>
                        <a href="{{url('unpublish',$dt->id)}}" id="edit" class="btn btn-sm btn-danger"><i class="fa fa-arrow-down"> Unpublish</i> </a>
                    </p>
                </div><hr>
                    <div class="row">
                        <div class="col-md-8">
                            <!-- general form elements -->
                            <div class="card card-outline card-info">
                                <div class="card-header">
                                    <h3>{{$dt->title}}</h3><hr>
                                    <small>Posted By <strong>{{ $dt->user->name }}</strong> at {{ \Carbon\Carbon::parse($dt->created_at)->diffForHumans() }} 
                                        <br>status :
                                        @if ($dt->status == 0)
                                            <span class="badge bg-danger"> Pending</span>
                                        @else
                                            <span class="badge bg-success"> Published</span>
                                        @endif
                                        <br>created_at : {{ date('d F Y', strtotime($dt->created_at)) }}
                                        <br>updated_at : {{ date('d F Y', strtotime($dt->updated_at)) }}
                                    </small>
                                </div>
                               <div class="card-body">
                                {!! $dt->body !!}
                               </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card card-outline card-info">
                                <div class="card-header">
                                    <h3 class="card-title"> Category</h3>
                                </div>
                                <div class="card-body">
                                    <span class="badge bg-danger"> <strong># {{ $dt->categories->nama }}</strong></span>
                                </div>
                            </div>

                            <div class="card card-outline card-info">
                                <div class="card-header">
                                    <h3 class="card-title">Jenis Category</h3>
                                </div>
                                <div class="card-body">
                                    <span class="badge bg-danger"> <strong># {{ $dt->jenis }}</strong></span>
                                </div>
                            </div>

                            <div class="card card-outline card-info">
                                <div class="card-header">
                                    <h3 class="card-title"> Thumbnail</h3>
                                </div>
                                <div class="card-body">
                                    <img src="{{ url('artikel/', $dt->image) }}" alt="" style="width: 100%">
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

