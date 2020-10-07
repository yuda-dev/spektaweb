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
                     <li><a href="#"><i class="fa fa-user"></i> {{ $post->user->name }}</a></li>
                      <li><a href="{{ url('category/post', $post->categories->slug) }}"><i class="fa fa-tag"></i>{{ $post->categories->nama }}</a></li>
                   </ul>
                   <p class="excert">
                       {!! $post->body !!}
                   </p>
                </div>
             </div>
          </div><br>
          <div class="col-lg-4" style="margin-top: -10px">
            <div class="blog_right_sidebar">
                <aside class="single_sidebar_widget popular_post_widget">
                    <h4>Portofolio Terkait</h4><hr><br>
                    @if ($related->isEmpty())
                        Portofolio terkait tidak ada
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
                            <a href="{{ url('portofolio', $pop->slug) }}">
                               <h>{!! $pop->title !!}</h>
                            </a>
                       </div>
                    </div><br><br>
                    @endforeach
                    @endif
                </aside>
                <aside class="single_sidebar_widget post_category_widget" style="margin-top:-30px;">
                    <h4>Kategori Portofolio</h4><hr>
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