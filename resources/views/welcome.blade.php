@extends('frontend.master')

@section('content')
   
    <!--================Blog Area =================-->
    <section class="blog_area section-padding" style="margin-top: -85px;color: white;">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 mb-5 mb-lg-0">
                    <div class="blog_left_sidebar">
                        <h4 class="widget_title">Artikel Terbaru</h4><hr>
                        @foreach ($artikel as $art)
                        @if ($art->status == 0)
                        
                        @else
                        <article class="blog_item" style="margin-top: -5px">
                            <div class="blog_item_img">
                                <img class="card-img" src="{{ url('artikel', $art->image) }}" alt=""
                                style="border-radius : 15px;
                                border-top-left-radius: 15px;
                                border-top-right-radius: 15px;
                                border-bottom-right-radius: 15px;
                                border-bottom-left-radius: 15px;">
                                <a href="#" class="blog_item_date">
                                    <h3>{{ date('d', strtotime($art->created_at)) }}</h3>
                                    <p>{{ date('F', strtotime($art->created_at)) }}</p>
                                </a>
                            </div>

                            <div class="blog_details">
                                <a class="d-inline-block" href="{{ url('posts', $art->slug) }}">
                                    <h2>{{ $art->title }}</h2>
                                </a>
                                <p>{!! substr(strip_tags($art->body),0, 100 ) !!} ....</p>
                                <ul class="blog-info-link">
                                    <li><a href=""><i class="fa fa-user"></i> {{ $art->user->name }}</a></li>
                                    <li><a href="{{ url('category/post', $art->category_id) }}"><i class="fa fa-tag"></i>{{ $art->categories->nama }}</a></li>
                                </ul>
                            </div>
                        </article>
                        @endif
                        @endforeach
                    </div>
                </div>
                
                <div class="col-lg-4" style="margin-top: -30px">
                    <div class="blog_right_sidebar">
                        <aside class="single_sidebar_widget popular_post_widget">
                            <h4>Artikel Populer</h4><hr><br>
                            @foreach ($populer as $pop)
                            @if ($pop->status == 0)
                                
                            @else
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
                            @endif
                            @endforeach
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
    <!--================Blog Area =================-->
    
@endsection