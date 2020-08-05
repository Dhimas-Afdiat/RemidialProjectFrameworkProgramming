<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <title>admin</title>
    <!-- Custom CSS -->
    <link href="{!! asset('assets/libs/flot/css/float-chart.css') !!}" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="{!! asset('assets/dist/css/style.min.css') !!}" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body>
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar" data-navbarbg="skin5">
            <nav class="navbar top-navbar navbar-expand-md navbar-primary bg-success">
                <div class="navbar-header" data-logobg="skin5">
                    <!-- This is for the sidebar toggle which is visible on mobile only -->
                    <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                    <!-- ============================================================== -->
                    <!-- Logo -->
                    <!-- ============================================================== -->
                    <a class="navbar-brand bg-success" href="index.html">
                        <!-- Logo icon -->

                            <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                            <!-- Dark Logo icon -->
                            <h1 class="align-content-center">Admin</h1>

                        <!--End Logo icon -->
                         <!-- Logo text -->

                        <!-- Logo icon -->
                        <!-- <b class="logo-icon"> -->
                            <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                            <!-- Dark Logo icon -->
                            <!-- <img src="../../assets/images/logo-text.png" alt="homepage" class="light-logo" /> -->

                        <!-- </b> -->
                        <!--End Logo icon -->
                    </a>
                    <!-- ============================================================== -->
                    <!-- End Logo -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- Toggle which is visible on mobile only -->
                    <!-- ============================================================== -->
                    <a class="topbartoggler d-block d-md-none waves-effect waves-light" href="javascript:void(0)" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><i class="ti-more"></i></a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class=" bg-success navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->

                    <!-- ============================================================== -->
                    <!-- Right side toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav bg-success navbar-success float-right">
                        <!-- ============================================================== -->
                        <!-- Comment -->
                        <!-- ============================================================== -->

                        <!-- ============================================================== -->
                        <!-- End Comment -->
                        <!-- ============================================================== -->
                        <!-- ============================================================== -->
                        <!-- Messages -->
                        <!-- ============================================================== -->

                        <!-- ============================================================== -->
                        <!-- End Messages -->
                        <!-- ============================================================== -->

                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->

                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                    </ul>
                </div>
            </nav>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <aside class="left-sidebar bg-success" data-sidebarbg="skin5">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav bg-success">
                    <ul id="sidebarnav" class="p-t-30 bg-success">
                        <!-- <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="{{url('/dashboard')}}" aria-expanded="false"><i class="mdi mdi-view-dashboard"></i><span class="hide-menu">Dashboard</span></a></li> -->
                        <li class="sidebar-item bg-success"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="{{url('/kendaraan')}}" aria-expanded="false"><i class="mdi mdi-blur-linear"></i><span class="hide-menu">Kendaraan</span></a></li>
                        <li class="sidebar-item bg-success"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="{{url('/tarif')}}" aria-expanded="false"><i class="mdi mdi-blur-linear"></i><span class="hide-menu">Tarif</span></a></li>
                        <li class="sidebar-item bg-success"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="{{url('/pelanggan')}}" aria-expanded="false"><i class="mdi mdi-blur-linear"></i><span class="hide-menu">Pelanggan</span></a></li>
                        <li class="sidebar-item bg-success"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="{{url('/foto')}}" aria-expanded="false"><i class="mdi mdi-blur-linear"></i><span class="hide-menu">Foto</span></a></li>
                        <li class="sidebar-item bg-success"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="{{url('/change-password')}}" aria-expanded="false"><i class="mdi mdi-blur-linear"></i><span class="hide-menu">Rubah Password</span></a></li>
                        <li class="sidebar-item bg-success">
                            <form action="{{route('logout')}}" method="post">
                            @csrf
                                <a class="sidebar-link waves-effect waves-dark sidebar-link" href="{{ route('logout') }}" aria-expanded="false"  data-toggle="modal" data-target="#logoutModal"><i class="mdi mdi-blur-linear"></i><span class="hide-menu">Keluar</span></a>
                            </form>
                        </li>
                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                            @csrf
                        </form>
                        <!-- <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="{{url('/transaksi')}}" aria-expanded="false"><i class="mdi mdi-blur-linear"></i><span class="hide-menu">Transaksi</span></a></li> -->
                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>

            <!-- End Sidebar scroll-->
        </aside>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
             <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Dashboard</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Library</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Logout Modal-->
            <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
                <div class="modal-dialog" role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                      <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                      </button>
                    </div>
                    <div class="modal-body">
                      Select "Logout" below if you are ready to end your current session.
                    </div>
                    <div class="modal-footer">
                      <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                      <form action="/logout" method="post">
                        @csrf
                        <button type="submit" class="btn btn-primary">Logout</button>
                      </form>
                    </div>
                  </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Sales Cards  -->
                <!-- ============================================================== -->
                
                @yield('container')
                <!-- ============================================================== -->
                <!-- Sales chart -->
                <!-- ============================================================== -->



            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>

        <!-- ============================================================== -->
        <!-- End Page wrapper  -->

        <!-- ============================================================== -->
    </div>
    <br>
    <br>
    <br>
    <br>
    <footer class="footer text-center">
                All Rights Reserved by Matrix-admin. Designed and Developed by <a href="https://wrappixel.com">WrapPixel</a>.
            </footer>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="{!! asset('assets/libs/jquery/dist/jquery.min.js') !!}"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="{!! asset('assets/libs/popper.js/dist/umd/popper.min.js') !!}"></script>
    <script src="{!! asset('assets/libs/bootstrap/dist/js/bootstrap.min.js') !!}"></script>
    <script src="{!! asset('assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js') !!}"></script>
    <script src="{!! asset('assets/extra-libs/sparkline/sparkline.js') !!}"></script>
    <!--Wave Effects -->
    <script src="{!! asset('assets/dist/js/waves.js') !!}"></script>
    <!--Menu sidebar -->
    <script src="{!! asset('assets/dist/js/sidebarmenu.js') !!}"></script>
    <!--Custom JavaScript -->
    <script src="{!! asset('assets/dist/js/custom.min.js') !!}"></script>
    <!--This page JavaScript -->
    <!-- <script src="../../dist/js/pages/dashboards/dashboard1.js"></script> -->
    <!-- Charts js Files -->
    <script src="{!! asset('assets/libs/flot/excanvas.js') !!}"></script>
    <script src="{!! asset('assets/libs/flot/jquery.flot.js') !!}"></script>
    <script src="{!! asset('assets/libs/flot/jquery.flot.pie.js') !!}"></script>
    <script src="{!! asset('assets/libs/flot/jquery.flot.time.js') !!}"></script>
    <script src="{!! asset('assets/libs/flot/jquery.flot.stack.js') !!}"></script>
    <script src="{!! asset('assets/libs/flot/jquery.flot.crosshair.js') !!}"></script>
    <script src="{!! asset('assets/libs/flot.tooltip/js/jquery.flot.tooltip.min.js') !!}"></script>
    <script src="{!! asset('assets/dist/js/pages/chart/chart-page-init.js') !!}"></script>

</body>

</html>
