@php
    $category = \DB::select("SELECT*FROM tb_category WHERE jenis='artikel' ORDER BY nama ASC");
@endphp
<header>
    <div class="header-area ">
        <div id="sticky-header" class="main-header-area">
            <div class="container-fluid">
                <div class="header_bottom_border">
                    <div class="row align-items-center">
                        <div class="col-xl-2 col-lg-2">
                            <div class="logo">
                                <a href="{{ url('/') }}">
                                    <img src="{{ asset('frontend/img/yuda.png') }}" alt="">
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6">
                            <div class="main-menu  d-none d-lg-block">
                                <nav>
                                    <ul id="navigation">
                                        <li><a class="active" href="{{ url('/') }}">home</a></li>
                                        <li><a href="{{ url('blog') }}">Blog</a></li>
                                        <li><a href="#">Kategori <i class="ti-angle-down"></i></a>
                                            <ul class="submenu">
                                                @foreach ($category as $cat)
                                                    <li><a href="{{ url('category/post', $cat->slug) }}"> {{ $cat->nama }}</a></li>
                                                @endforeach
                                            </ul>
                                        </li>
                                        <li><a href="{{ url('portofolio') }}">Portofolio</a></li>
                                         <li><a href="https://www.youtube.com/channel/UCtJgeoErowzSoAAd64xPzvQ"target="_blank">Youtube</a></li>
                                        <li><a href="{{ url('contactme') }}">Kontak</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 d-none d-lg-block">
                            <div class="social_wrap d-flex align-items-center justify-content-end">
                                <div class="social_links d-none d-xl-block">
                                    <ul>
                                        <li><a href="https://www.instagram.com/yudamuhtar/"> <i class="fa fa-instagram"></i> </a></li>
                                        <li><a href="https://web.facebook.com/yuda.muhtar/"> <i class="fa fa-facebook"></i> </a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="seach_icon">
                            <a data-toggle="modal" data-target="#exampleModalCenter" href="#">
                                <i class="fa fa-search"></i>
                            </a>
                        </div>
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</header>
<!-- header-end -->