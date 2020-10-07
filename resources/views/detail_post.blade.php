@extends('frontend.master')

@section('content')
    <!--================Blog Area =================-->
   <section class="blog_area single-post-area section-padding" style="margin-top: -90px">
    <div class="container">
       <div class="row">
          <div class="col-lg-8 posts-list">
             <div class="single-post">
                <div class="feature-img">
                   <img class="img-fluid" src="{{ url('artikel', $post->image) }}" alt="">
                </div>
                <div class="blog_details">
                   <h2>{{ $post->title }}</h2>
                   <ul class="blog-info-link mt-3 mb-4">
                     <li><i class="fa fa-clock-o"></i> {{  \Carbon\carbon::parse($post->created_at)->diffForHumans()  }}</li>
                   </ul>
                   <p class="excert">
                       {!! $post->body !!}
                   </p>
                   <ul class="blog-info-link mt-3 mb-4">
                     <li><i class="fa fa-user"></i> {{ $post->user->name }}</li>
                      <li><i class="fa fa-tag"></i>{{ $post->categories->nama }}</li>
                      <li><i class="fa fa-eye"></i> {{ $post->view_count }}</li>
                   </ul>
                </div>
             </div>
             <div class="comments-area">
               <h4>{{ $post->comments()->count() }} Comment</h4>
               @foreach ($post->comments as $item)
               <div class="comment-list">
                  <div class="single-comment justify-content-between d-flex">
                     @if ($item->role_id == 1)
                     <div class="user justify-content-between d-flex" style="margin-left: 50px">
                        <div class="thumb">
                           <img src="{{ asset('frontend/img/comment/admin.jpg') }}" alt="" style="height: 70px;width: 60px">
                        </div>
                        <div class="desc">
                           <div class="d-flex justify-content-between">
                              <div class="d-flex align-items-center">
                                 <h5>
                                    <a href="#">{{ $item->nama }} <i class="fa fa-check-circle" style="color: blue"></i></a>
                                 </h5>
                              </div>
                           </div>
                           <p class="date" style="margin-left: 1px"> <small>{{ date('d F Y | H:i', strtotime($item->created_at)) }}</small></p>
                           <h5> {{ $item->body }}</h5>
                        </div>
                     </div>
                     @else
                     <div class="user justify-content-between d-flex">
                        <div class="thumb">
                           <img src="{{ asset('frontend/img/comment/avatar.png') }}" alt="">
                        </div>
                        <div class="desc">
                           <div class="d-flex justify-content-between">
                              <div class="d-flex align-items-center">
                                 <h5>
                                    <a href="#">{{ $item->nama }}</a>
                                 </h5>
                              </div>
                           </div>
                           <p class="date" style="margin-left: 1px"> <small>{{ date('d F Y | H:i', strtotime($item->created_at)) }}</small></p>
                           <h5> {{ $item->body }}</h5>
                        </div>
                     </div>
                     @endif
                     
                  </div>
               </div>
               @endforeach
             </div>
             <div class="comment-form" style="border: black;margin-top: -40px" id="komentar">
                <h4>Tambah Komentar</h4>
                @include('layouts.flashko')
                <form class="form-contact comment_form" method="post" action="{{ route('post.comment.store', $post) }}#komentar" id="commentForm">
                    @csrf
                   <div class="row">
                      <div class="col-12">
                         <div class="form-group">
                            <textarea class="form-control w-100" name="body" id="body" cols="30" rows="9"
                               placeholder="Tulis Komentar"></textarea>
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
          <div class="col-lg-4" style="margin-top: -40px">
            <div class="blog_right_sidebar">
               <aside class="single_sidebar_widget popular_post_widget">
                  <h4>Artikel Terkait</h4><hr><br>
                  @if ($related->isEmpty())
                      Tidak ada Artikel terkait
                  @else
                  @foreach ($related as $pop)
                  <div class="thumb" style="margin-top: -25px;">
                        <img src="{{ url('artikel', $pop->image) }}" alt="post" 
                            style="
                            width: 100%; 
                            height : 160px;
                            border-radius : 10px;
                            border-top-left-radius: 10px;
                            border-top-right-radius: 10px;
                            border-bottom-right-radius: 10px;
                            border-bottom-left-radius: 10px;">
                  </div><br>
                  <div class="media post_item" style="margin-left: -20px">
                       <div class="media-body">
                            <a href="{{ url('posts', $pop->slug) }}">
                               <h>{!! $pop->title !!}</h>
                            </a>
                       </div>
                   </div><br><br>
                  @endforeach
                  @endif
                  
               </aside>
               
                <aside class="single_sidebar_widget post_category_widget" style="margin-top:-30px;">
                    <h4>Kategori Artikel</h4><hr>
                        <ul class="list cat-list">
                            @foreach($category as $ctg)
                            <li>
                                <a href="{{url('category/post', $ctg->slug)}}" class="d-flex">
                                    <p>{{$ctg->nama}} ({{$ctg->artikels()->count()}}) </p>
                                </a>
                            </li>
                            @endforeach
                        </ul>
                </aside>
            </div>
        </div>
       </div>
    </div>
 </section>
 <!--================ Blog Area end =================-->
@endsection