@extends('frontend.master')

@section('content')
    <div class="container" style="margin-top: -80px;margin-bottom:153px">
        <div class="row">
            <div class="col-lg-12">
                <div class="comment-form" style="border: black;">
                    <iframe style="margin-bottom: 20px;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d951.9055623066205!2d107.45858158137122!3d-6.720500861266658!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6903230215cdd9%3A0x3a190752cb2f74d9!2sMesjid%20Al-Ikhlas%20Cianca!5e1!3m2!1sid!2sid!4v1599370581750!5m2!1sid!2sid" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                    <h4><u style="color: black;">Kontak Kami</u></h4>
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
                    <form class="form-contact comment_form" method="post" action="{{ url('contact/add') }}" id="commentForm">
                        @csrf
                       <div class="row">
                          <div class="col-12">
                             <div class="form-group">
                                <textarea class="form-control w-100" name="body" id="body" cols="30" rows="9"
                                   placeholder="Tulis Pesan"></textarea>
                             </div>
                          </div>
                          <div class="col-sm-6">
                             <div class="form-group">
                                <input class="form-control" name="nama" id="nama" type="text" placeholder="Nama">
                             </div>
                          </div>
                          <div class="col-sm-6">
                             <div class="form-group">
                                <input class="form-control" name="email" id="email" type="email" placeholder="Email">
                             </div>
                          </div>
                       </div>
                       <div class="form-group">
                          <button type="submit" class="button button-contactForm btn_1 boxed-btn"> <i class="fa fa-paper-plane"> Kirim</i> </button>
                       </div>
                    </form>
                 </div>
            </div>
        </div>
    </div>
@endsection