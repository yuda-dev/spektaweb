@php
    $comment = \DB::table('tb_comment')->orderBy('created_at','desc')->where('role_id', 0)->take(10)->get();
@endphp

<!-- Navbar -->
<nav class="main-header navbar navbar-expand navbar-dark navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
        </li>
        <li class="nav-item d-none d-sm-inline-block">
            <a href="index3.html" class="nav-link">Home</a>
        </li>
        <li class="nav-item d-none d-sm-inline-block">
            <a href="#" class="nav-link">Contact</a>
        </li>
    </ul>

    <!-- SEARCH FORM -->
    <form class="form-inline ml-3">
        <div class="input-group input-group-sm">
            <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
            <div class="input-group-append">
                <button class="btn btn-navbar" type="submit">
                    <i class="fas fa-search"></i>
                </button>
            </div>
        </div>
    </form>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
        <!-- Messages Dropdown Menu -->
        <li class="nav-item dropdown">
            <a class="nav-link" data-toggle="dropdown" href="#">
                <i class="far fa-comments"></i>
                <span class="badge badge-danger navbar-badge">{{ count($comment) }}</span>
            </a>
            <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right"><br>
                <a href="#" class="dropdown-item">
                    @foreach ($comment as $ncom)
                    @if ($ncom->role_id == 1)
                         
                    @else
                       <!-- Message Start -->
                       <div class="media">
                        <img src="{{asset('frontend/img/comment/avatar.png') }} " alt="User Avatar" class="img-size-50 mr-3 img-circle">
                        <div class="media-body">
                            <h3 class="dropdown-item-title">
                                {{ $ncom->nama }}
                            </h3>
                            <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> {{ \Carbon\Carbon::parse($ncom->created_at)->diffForHumans() }}</p>
                        </div>
                    </div><hr>
                    <!-- Message End -->
                    @endif
                    @endforeach
                </a>
                <div class="dropdown-divider"></div>
                <a href="{{ url('comment') }}" class="dropdown-item dropdown-footer">See All Comment</a>
            </div>
        </li>
    </ul>
</nav>
<!-- /.navbar -->