<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
        <a href="{{url('/')}}" class="brand-link">
            <img src="{{asset('AdminLTELogo.png')}}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
                 style="opacity: .8">
            <span class="brand-text font-weight-light">pektaWeb.com</span>
        </a>
    @php
        $category = DB::select('SELECT*FROM tb_category');
        $post = DB::select('SELECT*FROM tb_post');
    @endphp

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="{{url('uploads/',\Auth::user()->photo)}}" style="height:40px;width:40px" class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="info">
                <a href="#" class="d-block">{{ Auth::user()->name }}</a>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
                     with font-awesome or any other icon font library -->
                <li class="nav-item has-treeview menu-open">
                    <a href="{{url('dashboard')}}" class="nav-link active">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                            Dashboard
                        </p>
                    </a>
                </li>
                <li class="nav-header">MANAGE DATA</li>

                <li class="nav-item">
                    <a href="{{url('post')}}" class="nav-link">
                        <i class="nav-icon fas fa-edit"></i>
                        <p> Artikel</p> 
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{url('category')}}" class="nav-link">
                        <i class="nav-icon fas fa-tag"></i>
                        <p> Category</p> 
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{url('comment')}}" class="nav-link">
                        <i class="nav-icon fas fa-comment"></i>
                        <p> Comment</p> 
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{url('contact')}}" class="nav-link">
                        <i class="nav-icon fas fa-address-card"></i>
                        <p> Kontak</p> 
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{url('subscriber')}}" class="nav-link">
                        <i class="nav-icon fas fa-star"></i>
                        <p> Subscriber</p> 
                    </a>
                </li>

                <li class="nav-header">OTHER</li>
                <li class="nav-item">
                    <a href="{{url('users')}}" class="nav-link">
                        <i class="nav-icon fas fa-users"></i>
                        <p>Users</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{url('keluar')}}" class="nav-link">
                        <i class="nav-icon fas fa-arrow-alt-circle-right"></i>
                        <p>Keluar</p>
                    </a>
                </li>
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>