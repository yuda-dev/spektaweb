<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>{{ $judul }}</title>
    <meta name="keyword" content="spektaweb, spektaweb.com, sourcecode, apilikasi, malasngoding, yuda muhtar, belajar laravel, tutorial, kawankoding, internet, blog" />
    <meta name="description" content="Apa yang saya tahu, Kalian juga harus tahu !">
    <meta property="og:locale" content="id_ID">
    <meta property="og:type" content="website">
    <meta name="author" content="Yuda Muhtar" />
    <meta name="robots" content="index, follow" />
	<meta name="googlebot" content="index, follow, max-snippet:-1, max-image-preview:large" />
	<meta name="bingbot" content="index, follow, max-snippet:-1" />
	<meta property="og:title" content="SpektaWeb - Mari Belajar Bersama">
    <meta property="og:description" content="Apa yang saya tahu, Kalian juga harus tahu !">
    <meta property="og:url" content="https://www.spektaweb.com/">
    <meta property="og:site_name" content="SpektaWeb">
    <meta property="og:image" content="https://spektaweb.com/frontend/img/yuda.png">
    <meta property="og:image:secure_url" content="https://spektaweb.com/frontend/img/yuda.png">
    <meta name="twitter:card" content="summary">
    <meta name="twitter:site" content="@spektaweb">
    <meta name="twitter:creator" content="@spektaweb">
    <meta name="twitter:title" content="SpektaWeb - Mari Belajar Bersama">
    <meta name="twitter:url" content="https://spektaweb.com">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="{{asset('frontend/img/favicon.png')}}">
    <!-- Place favicon.ico in the root directory -->

    <!-- CSS here -->
    <link rel="stylesheet" href="{{ asset('frontend/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('frontend/css/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ asset('frontend/css/magnific-popup.css') }}">
    <link rel="stylesheet" href="{{ asset('frontend/css/font-awesome.min.css') }}">
    <link rel="stylesheet" href="{{ asset('frontend/css/themify-icons.css') }}">
    <link rel="stylesheet" href="{{ asset('frontend/css/nice-select.css') }}">
    <link rel="stylesheet" href="{{ asset('frontend/css/flaticon.css') }}">
    <link rel="stylesheet" href="{{ asset('frontend/css/animate.css') }}">
    <link rel="stylesheet" href="{{ asset('frontend/css/slick.css') }}">
    <link rel="stylesheet" href="{{ asset('frontend/css/slicknav.css') }}">
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css">

    <link rel="stylesheet" href="{{ asset('frontend/css/style.css') }}">
    <!-- <link rel="stylesheet" href="css/responsive.css"> -->
</head>

<body>
   @include('frontend.header')
    
    @yield('content')


    <footer class="footer">
        <div class="copy-right_text">
            <div class="container">
                <div class="footer_border"></div>
                <div class="row">
                    <div class="col-xl-12">
                        <p class="copy_right text-center"> Copyright &copy;<script>document.write(new Date().getFullYear());</script> 
                            All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> 
                            by <a href="https://colorlib.com" target="_blank">Colorlib</a> | Depeloved <i class="fa fa-user" aria-hidden="true"></i> 
                            by <a href="#" target="_blank"> Yuda Muhtar</a> | <a href="https://spektaweb.com/privacy-policy"> Privacy Policy </a>

                        </p>
                    </div>
                </div>
            </div>
        </div>
    </footer>


  <!-- Modal -->
  <form action="{{ url('search') }}" method="get">
    <div class="modal fade custom_search_pop" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
            <div class="serch_form">
                <input type="text" name="cari" placeholder="Cari Artikel" >
                <button type="submit">search</button>
            </div>
          </div>
        </div>
      </div>
  </form>
  
    @include('frontend.script')
    @yield('scripts')
</body>

</html>