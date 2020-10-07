@extends('frontend.master')

@section('content')
   
    <!--================Blog Area =================-->
    <section class="blog_area section-padding" style="margin-top: -80px">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 mb-5 mb-lg-0">
                    <div class="blog_left_sidebar">
                        <h4 class="widget_title">Kategory: {{ $category->nama }}</h4><hr><br>
                        <div class="recent_trip_area" style="margin-top: -150px">
                            <div class="container">
                                <div class="row">
                                    @if ($category->artikels->count() > 0 )
                                    @foreach ($category->artikels as $art)
                                    @if ($art->status == 0)
                                        
                                    @else
                                    <div class="col-lg-6 col-md-12">
                                        <div class="single_trip">
                                            <div class="thumb" style="margin-top:-25px">
                                                <img src="{{ url('artikel', $art->image) }}" alt="">
                                            </div>
                                            <div class="info">
                                                <div class="date">
                                                    <span>
                                                        <i class="fa fa-user"> {{ $art->user->name }} </i> | 
                                                        <a href="{{ url('posts', $art->slug) }}"> <i class="fa fa-eye"> {{ $art->view_count }}</i></a> |
                                                        <a href="{{ url('category/post', $art->category_id) }}"><i class="fa fa-tag"> {{ $art->categories->nama }}</i></a>
                                                    </span>
                                                </div>
                                                <a href="{{ url('posts', $art->slug) }}">
                                                    <h4>{{ $art->title }}</h4>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    @endif
                                    
                                    @endforeach
                                    @else
                                        <center><h5> Ups! {{ $category->nama }} tidak ditemukan !</h5></center>
                                    @endif
                                </div>
                            </div>

                        <nav class="blog-pagination justify-content-center d-flex">
                            <ul class="pagination">
                                <li class="page-item">
                                    {!! $category->paginate(6) !!}
                                </li>
                            </ul>
                        </nav>
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-4" style="margin-top: -30px">
                    <div class="blog_right_sidebar">
                        <aside class="single_sidebar_widget popular_post_widget">
                            <h4>Kategori Terkait</h4><hr><br>
                            @if ($related->isEmpty())
                                Category terkait tidak ada
                            @else
                            @foreach ($related as $pop)
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
                            @endif
                        </aside>
                        <aside class="single_sidebar_widget post_category_widget" style="margin-top:-30px;">
                            <h4>Kategori Artikel</h4><hr>
                                <ul class="list cat-list">
                                @foreach($categori as $ctg)
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