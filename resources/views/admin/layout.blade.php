<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>{{config('app.name', 'CMS')}}</title>
    <link rel="stylesheet" href="{{ url('admin/css/simplebar.css') }}">
    <link href="https://fonts.googleapis.com/css2?family=Overpass:ital,wght@0,100;0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="{{ url('admin/css/feather.css') }}">
    <!-- <link rel="stylesheet" href="{{ url('admin/css/bootstrap.css') }}"> -->
    <link rel="stylesheet" href="{{ url('admin/css/dataTables.bootstrap4.css') }}">
    <link rel="stylesheet" href="{{ url('admin/css/fixedColumns.dataTables.min.css') }}">
    <link rel="stylesheet" href="{{ url('admin/css/select2.css') }}">
    <link rel="stylesheet" href="{{ url('admin/css/dropzone.css') }}">
    <link rel="stylesheet" href="{{ url('admin/css/uppy.min.css') }}">
    <link rel="stylesheet" href="{{ url('admin/css/jquery.steps.css') }}">
    <link rel="stylesheet" href="{{ url('admin/css/jquery.timepicker.css') }}">
    <link rel="stylesheet" href="{{ url('admin/css/quill.snow.css') }}">
    <link rel="stylesheet" href="{{ url('admin/css/app-light.css') }}" id="lightTheme" disabled>
    <link rel="stylesheet" href="{{ url('admin/css/app-dark.css') }}" id="darkTheme">
    <!-- ========= toastr  files linkup ======== -->
    <link rel="stylesheet" href="{{ url('lib/jquery-toast-plugin/jquery.toast.css') }}" />
    
  </head>
  <body class="vertical dark  ">
    <div class="wrapper">
      <nav class="topnav navbar navbar-light">
        <button type="button" class="navbar-toggler text-muted mt-2 p-0 mr-3 collapseSidebar">
          <i class="fe fe-menu navbar-toggler-icon"></i>
        </button>
        <form class="form-inline mr-auto text-muted">
          <h2 class="page-title mt-3">{{$title}}</h2>
        </form>
        <ul class="nav">
          <li class="nav-item dropdown ml-lg-0 my-1 mt-3">
            <a class="fe fe-24 fe-log-out" href="{{url('/admin/logout')}}" style="text-decoration: none; font-size: 1.3rem;"></a>
          </li>
        </ul>
      </nav>
      <aside class="sidebar-left border-right bg-white shadow" id="leftSidebar" data-simplebar>
        <a href="#" class="btn collapseSidebar toggle-btn d-lg-none text-muted ml-2 mt-3" data-toggle="toggle">
          <i class="fe fe-x"><span class="sr-only"></span></i>
        </a>
        <nav class="vertnav navbar navbar-light">
          <!-- nav bar -->
          <div class="w-100 mb-4 d-flex">
            <a class="navbar-brand mx-auto mt-2 flex-fill text-center" href="./index.html">
              <svg version="1.1" id="logo" class="navbar-brand-img brand-sm" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 120 120" xml:space="preserve">
                <g>
                  <polygon class="st0" points="78,105 15,105 24,87 87,87  " />
                  <polygon class="st0" points="96,69 33,69 42,51 105,51   " />
                  <polygon class="st0" points="78,33 15,33 24,15 87,15  " />
                </g>
              </svg>
            </a>
          </div>
          <ul class="navbar-nav flex-fill w-100 mb-2">
            <li class="nav-item w-100 @if($title == '社員マスタ') active @endif">
              <a class="nav-link" href="{{url('/admin/index')}}">
                <i class="fe fe-chevrons-right fe-16 @if($title == '社員マスタ') left-menu-active @endif"></i>
                <span class="ml-3 item-text @if($title == '社員マスタ') left-menu-active @endif">社員マスタ</span>
              </a>
            </li>
            <li class="nav-item w-100 @if($title == '事業所マスタ') active @endif">
              <a class="nav-link" href="{{url('/admin/depart')}}">
                <i class="fe fe-chevrons-right fe-16 @if($title == '事業所マスタ') left-menu-active @endif"></i>
                <span class="ml-3 item-text @if($title == '事業所マスタ') left-menu-active @endif">事業所マスタ</span>
              </a>
            </li>
            <li class="nav-item w-100 @if($title == 'ヤードマスタ') active @endif">
              <a class="nav-link" href="{{url('/admin/yard')}}">
                <i class="fe fe-chevrons-right fe-16 @if($title == 'ヤードマスタ') left-menu-active @endif"></i>
                <span class="ml-3 item-text @if($title == 'ヤードマスタ') left-menu-active @endif">ヤードマスタ</span>
              </a>
            </li>
            <li class="nav-item w-100 @if($title == 'オーダー区分１マスタ') active @endif">
              <a class="nav-link" href="{{url('/admin/ordertype1')}}">
                <i class="fe fe-chevrons-right fe-16 @if($title == 'オーダー区分１マスタ') left-menu-active @endif"></i>
                <span class="ml-3 item-text @if($title == 'オーダー区分１マスタ') left-menu-active @endif">オーダー区分１マスタ</span>
              </a>
            </li>
            <li class="nav-item w-100 @if($title == 'オーダー区分２マスタ') active @endif">
              <a class="nav-link" href="{{url('/admin/ordertype2')}}">
                <i class="fe fe-chevrons-right fe-16 @if($title == 'オーダー区分２マスタ') left-menu-active @endif"></i>
                <span class="ml-3 item-text @if($title == 'オーダー区分２マスタ') left-menu-active @endif">オーダー区分２マスタ</span>
              </a>
            </li>
            <li class="nav-item w-100 @if($title == '請求先マスタ') active @endif">
              <a class="nav-link" href="{{url('/admin/billdepart')}}">
                <i class="fe fe-chevrons-right fe-16 @if($title == '請求先マスタ') left-menu-active @endif"></i>
                <span class="ml-3 item-text @if($title == '請求先マスタ') left-menu-active @endif">請求先マスタ</span>
              </a>
            </li>
            <li class="nav-item w-100 @if($title == 'シッパーマスタ') active @endif">
              <a class="nav-link" href="{{url('/admin/shipper')}}">
                <i class="fe fe-chevrons-right fe-16 @if($title == 'シッパーマスタ') left-menu-active @endif"></i>
                <span class="ml-3 item-text @if($title == 'シッパーマスタ') left-menu-active @endif">シッパーマスタ</span>
              </a>
            </li>
            <li class="nav-item w-100 @if($title == 'メーカーマスタ') active @endif">
              <a class="nav-link" href="{{url('/admin/maker')}}">
                <i class="fe fe-chevrons-right fe-16 @if($title == 'メーカーマスタ') left-menu-active @endif"></i>
                <span class="ml-3 item-text @if($title == 'メーカーマスタ') left-menu-active @endif">メーカーマスタ</span>
              </a>
            </li>
            <li class="nav-item w-100 @if($title == '車種マスタ') active @endif">
              <a class="nav-link" href="{{url('/admin/cartype')}}">
                <i class="fe fe-chevrons-right fe-16 @if($title == '車種マスタ') left-menu-active @endif"></i>
                <span class="ml-3 item-text @if($title == '車種マスタ') left-menu-active @endif">車種マスタ</span>
              </a>
            </li>
            <li class="nav-item w-100 @if($title == '色マスタ') active @endif">
              <a class="nav-link" href="{{url('/admin/color')}}">
                <i class="fe fe-chevrons-right fe-16 @if($title == '色マスタ') left-menu-active @endif"></i>
                <span class="ml-3 item-text @if($title == '色マスタ') left-menu-active @endif">色マスタ</span>
              </a>
            </li>
            <li class="nav-item w-100 @if($title == 'ステータスマスタ') active @endif">
              <a class="nav-link" href="{{url('/admin/status')}}">
                <i class="fe fe-chevrons-right fe-16 @if($title == 'ステータスマスタ') left-menu-active @endif"></i>
                <span class="ml-3 item-text @if($title == 'ステータスマスタ') left-menu-active @endif">ステータスマスタ</span>
              </a>
            </li>
            <li class="nav-item w-100 @if($title == '検査機関マスタ') active @endif">
              <a class="nav-link" href="{{url('/admin/checkdepart')}}">
                <i class="fe fe-chevrons-right fe-16 @if($title == '検査機関マスタ') left-menu-active @endif"></i>
                <span class="ml-3 item-text @if($title == '検査機関マスタ') left-menu-active @endif">検査機関マスタ</span>
              </a>
            </li>
            <li class="nav-item w-100 @if($title == '検査料金マスタ') active @endif">
              <a class="nav-link" href="{{url('/admin/checkfee')}}">
                <i class="fe fe-chevrons-right fe-16 @if($title == '検査料金マスタ') left-menu-active @endif"></i>
                <span class="ml-3 item-text @if($title == '検査料金マスタ') left-menu-active @endif">検査料金マスタ</span>
              </a>
            </li>
            <li class="nav-item w-100 @if($title == 'オーダー自動取込マスタ') active @endif">
              <a class="nav-link" href="{{url('/admin/import')}}">
                <i class="fe fe-chevrons-right fe-16 @if($title == 'オーダー自動取込マスタ') left-menu-active @endif"></i>
                <span class="ml-3 item-text @if($title == 'オーダー自動取込マスタ') left-menu-active @endif">オーダー自動取込マスタ</span>
              </a>
            </li>
          </ul>
        </nav>
      </aside>
      <main role="main" class="main-content">
         @yield('data_content')
      </main> <!-- main -->
      <footer role="footer" class="main-footer">
        <div class="container-fluid">
          <div class="row mb-4">
            <div class="col-md-12 order-last order-md-first">
              <div class="copyright text-center">
                <p class='text-sm'>© {{date('Y')}} GLOBALINE OPERATION SYSTEM</p>
              </div>
            </div>
          </div>
          <!-- end row -->
        </div>
        <!-- end container -->
      </footer>
    </div> <!-- .wrapper -->
    <script src="{{ url('admin/js/jquery.min.js') }}"></script>
    <script src="{{ url('admin/js/popper.min.js') }}"></script>
    <script src="{{ url('admin/js/moment.min.js') }}"></script>
    <script src="{{ url('admin/js/bootstrap.min.js') }}"></script>
    <script src="{{ url('admin/js/simplebar.min.js') }}"></script>
    <script src="{{ url('admin/js/daterangepicker.js') }}"></script>
    <script src="{{ url('admin/js/jquery.stickOnScroll.js') }}"></script>
    <script src="{{ url('admin/js/tinycolor-min.js') }}"></script>
    <script src="{{ url('admin/js/config.js') }}"></script>
    <script src="{{ url('admin/js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ url('admin/js/dataTables.bootstrap4.min.js') }}"></script>
    <script src="{{ url('admin/js/dataTables.fixedColumns.min.js') }}"></script>
    <script src="{{ url('admin/js/d3.min.js') }}"></script>
    <script src="{{ url('admin/js/topojson.min.js') }}"></script>
    <script src="{{ url('admin/js/datamaps.all.min.js') }}"></script>
    <script src="{{ url('admin/js/datamaps-zoomto.js') }}"></script>
    <script src="{{ url('admin/js/datamaps.custom.js') }}"></script>
    <script src="{{ url('admin/js/Chart.min.js') }}"></script>
    <script src="{{ url('admin/js/gauge.min.js') }}"></script>
    <script src="{{ url('admin/js/jquery.sparkline.min.js') }}"></script>
    <script src="{{ url('admin/js/jquery.mask.min.js') }}"></script>
    <script src="{{ url('admin/js/select2.min.js') }}"></script>
    <script src="{{ url('admin/js/jquery.steps.min.js') }}"></script>
    <script src="{{ url('admin/js/jquery.validate.min.js') }}"></script>
    <script src="{{ url('admin/js/jquery.timepicker.js') }}"></script>
    <script src="{{ url('admin/js/dropzone.min.js') }}"></script>
    <script src="{{ url('admin/js/uppy.min.js') }}"></script>
    <script src="{{ url('admin/js/quill.min.js') }}"></script>
    <script src="{{ url('admin/js/apps.js') }}"></script>
    <!-- ========= toastr  files linkup ======== -->
    <script src="{{ url('lib/jquery-toast-plugin/jquery.toast.js') }}"></script>
    @yield('data_script')
  </body>
</html>