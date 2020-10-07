    @if($message = Session::get('sukses'))
        <div class="row">
            <div class="col">
                <div class="alert alert-success">
                    <strong>Sukses !</strong> {{ $message }}.
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                </div>
            </div>
            @endif
            @if($message = Session::get('gagal'))
            <div class="row">
                <div class="col">
                    <div class="alert alert-danger">
                        <strong>Gagal !</strong> {{ $message }}.
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                </div>
            </div>
            @endif