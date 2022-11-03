<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>{{config('app.name', 'CMS')}}</title>
    <!-- Simple bar CSS -->
    <link rel="stylesheet" href="{{ url('admin/css/simplebar.css') }}">
    <!-- Fonts CSS -->
    <link href="https://fonts.googleapis.com/css2?family=Overpass:ital,wght@0,100;0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <!-- Icons CSS -->
    <link rel="stylesheet" href="{{ url('admin/css/feather.css') }}">
    <!-- Date Range Picker CSS -->
    <link rel="stylesheet" href="{{ url('admin/css/daterangepicker.css') }}">
    <!-- App CSS -->
    <link rel="stylesheet" href="{{ url('admin/css/app-light.css') }}" id="lightTheme" disabled>
    <link rel="stylesheet" href="{{ url('admin/css/app-dark.css') }}" id="darkTheme">
    <!-- ========= toastr  files linkup ======== -->
    <link rel="stylesheet" href="{{ url('lib/jquery-toast-plugin/jquery.toast.css') }}" />
  </head>
  <body class="dark ">
    <div class="wrapper vh-100">
      <div class="row align-items-center h-100">
        <form class="col-lg-3 col-md-4 col-10 mx-auto text-center">
          <a class="navbar-brand mx-auto mt-2 flex-fill text-center" href="javascript:void(0)">
            <svg version="1.1" id="logo" class="navbar-brand-img brand-md" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 120 120" xml:space="preserve">
              <g>
                <polygon class="st0" points="78,105 15,105 24,87 87,87  " />
                <polygon class="st0" points="96,69 33,69 42,51 105,51   " />
                <polygon class="st0" points="78,33 15,33 24,15 87,15  " />
              </g>
            </svg>
          </a>
          <h1 class="h2 mb-3">GLOBALINE OPERATION SYSTEM</h1>
          @error('login')
          <div class="alert alert-danger">
              &#x26A0; {{ $message }}
          </div>
          @enderror
          <div class="form-group">
            <label for="user_id" class="sr-only">使用者ID</label>
            <input type="text" id="user_id" name="user_id" class="form-control form-control-lg" placeholder="使用者ID" required="" autofocus="">
          </div>
          <div class="form-group">
            <label for="password" class="sr-only">パスワード</label>
            <input type="password" id="password" name="password" class="form-control form-control-lg" placeholder="Password" required="">
          </div>
          <a class="btn btn-lg btn-primary btn-block" href="javascript: doLogin();">ログイン</a>
          <p class="mt-5 mb-3 text-muted">© {{date('Y')}} GLOBALINE OPERATION SYSTEM</p>
        </form>
      </div>
    </div>
<script type="text/javascript">
  $(document).ready(function () {
    
  });

  function doLogin(){
    var user_id = $("#user_id").val();
    var password = $("#password").val();

    if(user_id == ''){ 
      $.toast({ heading: 'エラー', text: 'メールアドレスを正しく入力してください。', position: 'top-right', stack: false, icon: 'warning' }); 
      $("#user_id").focus(); 
      return;
    }
    if(password==""){ 
      $.toast({ heading: 'エラー', text: 'パスワードを正しく入力してください。', position: 'top-right', stack: false, icon: 'warning' }); 
      $("#password").focus(); 
      return;
    }
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': jQuery('meta[name="csrf-token"]').attr('content')
        }
    });
    // e.preventDefault();
    $.ajax({
        type: "POST",
        url: 'doLogin',
        data: {
            user_id : user_id,
            password : password,
        },
        dataType: 'json',
        success: function (data) {
          console.log(data);
          if(data.result == "success"){
            window.location.href = "{{url('/main')}}";
          }
          if(data.result == "error"){
            $.toast({ heading: 'エラー', text: data.msg, position: 'top-right', stack: false, icon: 'warning' }); 
          }
        },
        error: function (data) {
            console.log(data);
        }
    });
  }

</script>
    <script src="{{ url('admin/js/jquery.min.js') }}"></script>
    <script src="{{ url('admin/js/popper.min.js') }}"></script>
    <script src="{{ url('admin/js/moment.min.js') }}"></script>
    <script src="{{ url('admin/js/bootstrap.min.js') }}"></script>
    <script src="{{ url('admin/js/simplebar.min.js') }}"></script>
    <script src="{{ url('admin/js/jquery.stickOnScroll.js') }}"></script>
    <script src="{{ url('admin/js/tinycolor-min.js') }}"></script>
    <script src="{{ url('admin/js/apps.js') }}"></script>
    <!-- ========= toastr  files linkup ======== -->
    <script src="{{ url('lib/jquery-toast-plugin/jquery.toast.js') }}"></script>
  </body>
</html>
</body>
</html>
