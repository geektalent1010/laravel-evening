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
  </head>
  <body class="dark ">
    <div class="wrapper vh-100">
      <div class="row align-items-center h-100">
        <form method="POST" action="/admin/login" class="col-lg-3 col-md-4 col-10 mx-auto text-center">
        @csrf
          <a class="navbar-brand mx-auto mt-2 flex-fill text-center" href="javascript:void(0)">
            <svg version="1.1" id="logo" class="navbar-brand-img brand-md" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 120 120" xml:space="preserve">
              <g>
                <polygon class="st0" points="78,105 15,105 24,87 87,87  " />
                <polygon class="st0" points="96,69 33,69 42,51 105,51   " />
                <polygon class="st0" points="78,33 15,33 24,15 87,15  " />
              </g>
            </svg>
          </a>
          <h1 class="h2 mb-3">管理者ログイン</h1>
          @error('login')
          <div class="alert alert-danger">
              &#x26A0; {{ $message }}
          </div>
          @enderror
          <div class="form-group">
            <label for="userid" class="sr-only">ユーザーID</label>
            <input type="text" id="userid" name="userid" class="form-control form-control-lg" placeholder="User ID" required="" autofocus="">
          </div>
          <div class="form-group">
            <label for="password" class="sr-only">パスワード</label>
            <input type="password" id="password" name="password" class="form-control form-control-lg" placeholder="Password" required="">
          </div>
          <button class="btn btn-lg btn-primary btn-block" type="submit">ログイン</button>
          <p class="mt-5 mb-3 text-muted">© {{date('Y')}} GLOBALINE OPERATION SYSTEM</p>
        </form>
      </div>
    </div>
    <script src="{{ url('admin/js/jquery.min.js') }}"></script>
    <script src="{{ url('admin/js/popper.min.js') }}"></script>
    <script src="{{ url('admin/js/moment.min.js') }}"></script>
    <script src="{{ url('admin/js/bootstrap.min.js') }}"></script>
    <script src="{{ url('admin/js/simplebar.min.js') }}"></script>
    <script src="{{ url('admin/js/jquery.stickOnScroll.js') }}"></script>
    <script src="{{ url('admin/js/tinycolor-min.js') }}"></script>
    <script src="{{ url('admin/js/apps.js') }}"></script>
  </body>
</html>
</body>
</html>