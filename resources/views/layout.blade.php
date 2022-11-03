<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- <link rel="icon" href="favicon.ico"> -->
    <title>{{config('app.name', 'CMS')}}</title>
    <link rel="stylesheet" href="{{ url('user/css/simplebar.css') }}">
    <link rel="stylesheet" href="{{ url('user/css/feather.css') }}">
    <!-- <link rel="stylesheet" href="{{ url('user/css/bootstrap.css') }}"> -->
    <link rel="stylesheet" href="{{ url('user/css/dataTables.bootstrap4.css') }}">
    <link rel="stylesheet" href="{{ url('user/css/fixedColumns.dataTables.min.css') }}">
    <link rel="stylesheet" href="{{ url('user/css/select2.css') }}">
    <link rel="stylesheet" href="{{ url('user/css/dropzone.css') }}">
    <link rel="stylesheet" href="{{ url('user/css/uppy.min.css') }}">
    <link rel="stylesheet" href="{{ url('user/css/bootstrap-datepicker.css') }}" />
    <link rel="stylesheet" href="{{ url('user/css/jquery.steps.css') }}">
    <link rel="stylesheet" href="{{ url('user/css/jquery.timepicker.css') }}">
    <link rel="stylesheet" href="{{ url('user/css/quill.snow.css') }}">
    <link rel="stylesheet" href="{{ url('user/css/app-light.css') }}" id="lightTheme" disabled>
    <link rel="stylesheet" href="{{ url('user/css/app-dark.css') }}" id="darkTheme">
    <!-- ========= toastr  files linkup ======== -->
    <link rel="stylesheet" href="{{ url('lib/jquery-toast-plugin/jquery.toast.css') }}" />
    <script src="{{ url('user/js/jquery.min.js') }}"></script>
    
  </head>
  <body class="horizontal dark  ">
    <div class="wrapper">
      <nav class="navbar navbar-expand-lg navbar-light bg-white flex-row border-bottom shadow" style="position: sticky; top: 0px; z-index: 1;">
        <div class="container-fluid">
          <a class="navbar-brand mx-lg-1 mr-0" href="./index.html">
            <svg version="1.1" id="logo" class="navbar-brand-img brand-sm" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 120 120" xml:space="preserve">
              <g>
                <polygon class="st0" points="78,105 15,105 24,87 87,87  " />
                <polygon class="st0" points="96,69 33,69 42,51 105,51   " />
                <polygon class="st0" points="78,33 15,33 24,15 87,15  " />
              </g>
            </svg>
          </a>
          <button class="navbar-toggler mt-2 mr-auto toggle-sidebar text-muted">
            <i class="fe fe-menu navbar-toggler-icon"></i>
          </button>
          <div class="navbar-slide bg-white ml-lg-4" id="navbarSupportedContent">
            <a href="#" class="btn toggle-sidebar d-lg-none text-muted ml-2 mt-3" data-toggle="toggle">
              <i class="fe fe-x"><span class="sr-only"></span></i>
            </a>
            <ul class="navbar-nav mr-auto">
              <li class="nav-item @if($title == '車両新規登録') active @endif">
                <a class="nav-link" href="{{url('/main')}}">
                  <i class="fe fe-chevrons-right fe-16 @if($title == '車両新規登録') left-menu-active @endif"></i>
                  <span class="@if($title == '車両新規登録') left-menu-active @endif">車両新規登録</span>
                </a>
              </li>
              <li class="ml-3 nav-item @if($title == '車両一括登録') active @endif">
                <a class="nav-link" href="{{url('/carreg')}}">
                  <i class="fe fe-chevrons-right fe-16 @if($title == '車両一括登録') left-menu-active @endif"></i>
                  <span class="@if($title == '車両一括登録') left-menu-active @endif">車両一括登録</span>
                </a>
              </li>
              <li class="ml-3 nav-item @if($title == '検索') active @endif">
                <a class="nav-link" href="{{url('/search')}}">
                  <i class="fe fe-chevrons-right fe-16 @if($title == '検索') left-menu-active @endif"></i>
                  <span class="@if($title == '検索') left-menu-active @endif">検索</span>
                </a>
              </li>
              <li class="ml-3 nav-item @if($title == '請求データ処理') active @endif">
                <a class="nav-link" href="{{url('/billdata')}}">
                  <i class="fe fe-chevrons-right fe-16 @if($title == '請求データ処理') left-menu-active @endif"></i>
                  <span class="@if($title == '請求データ処理') left-menu-active @endif">請求データ処理</span>
                </a>
              </li>
              <li class="ml-3 nav-item @if($title == '仕入データ処理') active @endif">
                <a class="nav-link" href="{{url('/buydata')}}">
                  <i class="fe fe-chevrons-right fe-16 @if($title == '仕入データ処理') left-menu-active @endif"></i>
                  <span class="@if($title == '仕入データ処理') left-menu-active @endif">仕入データ処理</span>
                </a>
              </li>
              <li class="ml-3 nav-item @if($title == '業務画面') active @endif">
                <a class="nav-link" href="{{url('/business')}}">
                  <i class="fe fe-chevrons-right fe-16 @if($title == '業務画面') left-menu-active @endif"></i>
                  <span class="@if($title == '業務画面') left-menu-active @endif">業務画面</span>
                </a>
              </li>
            </ul>
          </div>
          <form class="form-inline ml-md-auto d-none d-lg-flex text-muted">
          </form>
          <ul class="navbar-nav d-flex flex-row">
            <li class="nav-item mr-5">
              <span class="nav-link text-muted my-2" style="background: #111; border-radius: 0.2rem; font-size: 1.1rem;">
                <span>ID：</span>
                <span>黑場 羅院</span>
              </span>
            </li>
            <li class="nav-item mr-5">
              <span class="nav-link text-muted my-2" style="background: #111; border-radius: 0.2rem; font-size: 1.1rem;">
                <span>所属：</span>
                <span>神戶営業所</span>
              </span>
            </li>
            <li class="nav-item dropdown ml-lg-0 my-1 mt-3">
              <a class="fe fe-24 fe-log-out" href="{{url('/logout')}}" style="text-decoration: none; font-size: 1.3rem;"></a>
            </li>
          </ul>
        </div>
      </nav>
      <main role="main" class="main-content">
      @yield('data_content')
      </main> <!-- main -->
      <footer role="footer" class="main-footer mt-3">
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
    <script type="text/javascript">
      $(document).ready(function(){
          setMainContentHeight();
          // var footer_div_h = window.innerHeight*0.1;
          // $('#footer_div').css('height', footer_div_h+'px');
          // $('.datepicker').datepicker();
      });
      function setMainContentHeight() {
        vpw = $(window).width();
        vph = $(window).height();
        $('.main-content').css({'min-height': (vph-200) + 'px'});
      }
    </script>
    <script src="{{ url('user/js/popper.min.js') }}"></script>
    <script src="{{ url('user/js/moment.min.js') }}"></script>
    <script src="{{ url('user/js/bootstrap.min.js') }}"></script>
    <script src="{{ url('user/js/bootstrap-datepicker.min.js') }}"></script>
    <script src="{{ url('user/js/simplebar.min.js') }}"></script>
    <script src="{{ url('user/js/daterangepicker.js') }}"></script>
    <script src="{{ url('user/js/jquery.stickOnScroll.js') }}"></script>
    <script src="{{ url('user/js/tinycolor-min.js') }}"></script>
    <script src="{{ url('user/js/config.js') }}"></script>
    <script src="{{ url('user/js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ url('user/js/dataTables.bootstrap4.min.js') }}"></script>
    <script src="{{ url('user/js/dataTables.fixedColumns.min.js') }}"></script>
    <script src="{{ url('user/js/d3.min.js') }}"></script>
    <script src="{{ url('user/js/topojson.min.js') }}"></script>
    <script src="{{ url('user/js/datamaps.all.min.js') }}"></script>
    <script src="{{ url('user/js/datamaps-zoomto.js') }}"></script>
    <script src="{{ url('user/js/datamaps.custom.js') }}"></script>
    <script src="{{ url('user/js/Chart.min.js') }}"></script>
    <script src="{{ url('user/js/gauge.min.js') }}"></script>
    <script src="{{ url('user/js/jquery.sparkline.min.js') }}"></script>
    <script src="{{ url('user/js/jquery.mask.min.js') }}"></script>
    <script src="{{ url('user/js/select2.min.js') }}"></script>
    <script src="{{ url('user/js/jquery.steps.min.js') }}"></script>
    <script src="{{ url('user/js/jquery.validate.min.js') }}"></script>
    <script src="{{ url('user/js/jquery.timepicker.js') }}"></script>
    <script src="{{ url('user/js/dropzone.min.js') }}"></script>
    <script src="{{ url('user/js/uppy.min.js') }}"></script>
    <script src="{{ url('user/js/quill.min.js') }}"></script>
    <script src="{{ url('user/js/apps.js') }}"></script>
    <!-- ========= toastr  files linkup ======== -->
    <script src="{{ url('lib/jquery-toast-plugin/jquery.toast.js') }}"></script>
    @yield('data_script')
    <script type="text/javascript">
      $('.select2').select2({
        theme: 'bootstrap4',
      });
      $(".select2").val('').trigger('change');
      $('.datepicker').datepicker({
        format: "yyyy-mm-dd"
      });
    </script>
  </body>
</html>