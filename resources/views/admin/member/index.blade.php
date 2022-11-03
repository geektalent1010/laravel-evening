@extends('admin/layout')
@section('data_content')
<div class="container-fluid">
  <div class="row justify-content-center">
    <div class="col-12">
      <div class="row my-4">
        <!-- Small table -->
        <div class="col-md-12">
          <div class="card shadow">
            <div class="card-body">
              <!-- table -->
              <table class="table datatables" id="myDataTable">
                <thead>
                  <tr>
                    <th>#</th>
                    <th>社員名</th>
                    <th>事業所</th>
                    <th>メールアドレス</th>
                    <th>使用者ID</th>
                    <th>パスワード</th>
                    <th>Action</th>
                  </tr>
                </thead>
                <tbody>
                  <input type="hidden" name="hid_order" value="{{$i=0}}">
                  @foreach ($data_list as $data)
                  <input type="hidden" name="hid_order" value="{{$i++}}">
                  <tr>
                    <input type="hidden" id="member_{{$data->id}}" value="{{$data}}">
                    <input type="hidden" id="password_{{$data->id}}" value="{{$data->password}}">
                    <td style="padding:0.2rem;">{{$i}}</td>
                    <td style="padding:0.2rem;">{{$data->employee_name}}</td>
                    <td style="padding:0.2rem;">{{$data->depart}}</td>
                    <td style="padding:0.2rem;">{{$data->email_address}}</td>
                    <td style="padding:0.2rem;">{{$data->user_id}}</td>
                    <td style="padding:0.2rem;">{{$data->password_str}}</td>
                    <td style="padding:0.2rem;">
                      <button type="button" class="btn btn-outline-success" data-toggle="modal" data-target="#varyModal" data-whatever="@mdo" onclick="javascript: editData('{{$data->id}}');"><i class="fe fe-edit fe-16"></i></button>
                      <button type="button" class="btn btn-outline-danger" onclick="javascript: deleteData('{{$data->id}}');"><i class="fe fe-trash-2 fe-16"></i></button>
                    </td>
                  </tr>
                  @endforeach
                </tbody>
              </table>
            </div>
          </div>
        </div> <!-- simple table -->
      </div> <!-- end section -->
    </div> <!-- .col-12 -->
  </div> <!-- .row -->
</div> <!-- .container-fluid -->

<div class="modal fade" id="varyModal" tabindex="-1" role="dialog" aria-labelledby="varyModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="varyModalLabel">社員マスタ</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <input type="hidden" id="upd_member_id">
          <div class="form-group">
            <label for="upd_employee_name" class="col-form-label">社員名:</label>
            <input type="text" class="form-control" id="upd_employee_name">
          </div>
          <div class="form-group">
            <label for="upd_employee_depart" class="col-form-label">事業所:</label>
            <select class="form-control select2" id="upd_employee_depart">
                @foreach ($depart_list as $key => $depart)
                <option value="{{$depart->id}}">{{$depart->depart}}</option>
                @endforeach
            </select>
          </div>
          <div class="form-group">
            <label for="upd_email_address" class="col-form-label">メールアドレス:</label>
            <input type="text" class="form-control" id="upd_email_address">
          </div>
          <div class="form-group">
            <label for="upd_user_id" class="col-form-label">使用者ID:</label>
            <input type="text" class="form-control" id="upd_user_id">
          </div>
          <div class="form-group">
            <label for="upd_password" class="col-form-label">パスワード:</label>
            <input type="text" class="form-control" id="upd_password">
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn mb-2 btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn mb-2 btn-primary" onclick="javascript: saveData();">保存</button>
      </div>
    </div>
  </div>
</div>
@stop
@section('data_script')
<script type="text/javascript">

  $(document).ready(function () {
    $('#myDataTable').DataTable(
    {
      autoWidth: true,
      "lengthMenu": [
        [16, 32, 64, -1],
        [16, 32, 64, "All"]
      ]
    });
    $(".dataTables_length").append('<button type="button" class="btn btn-outline-primary ml-4" data-toggle="modal" data-target="#varyModal" data-whatever="@mdo" onclick="javascript: resetModal();">追加</button>');
  });

  function addData(){

  }

  function editData(member_id){
    resetModal();
    var data = JSON.parse($("#member_"+member_id).val());
    data.password = $("#password_"+member_id).val();
    $("#upd_member_id").val(data.id);
    $("#upd_employee_name").val(data.employee_name);
    $("#upd_employee_depart").val(data.employee_depart);
    $("#upd_email_address").val(data.email_address);
    $("#upd_user_id").val(data.user_id);
    $("#upd_password").val(data.password_str);
  }

  function deleteData(record_id){
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': jQuery('meta[name="csrf-token"]').attr('content')
        }
    });
    $.ajax({
        type: "POST",
        url: 'index/deletedata',
        data: {
            member_id : record_id,
        },
        dataType: 'json',
        success: function (data) {
          window.location.href = "{{url('/admin/index')}}";
        },
        error: function (data) {
            console.log(data);
        }
    });

  }

  function saveData(){
    var member_id = $("#upd_member_id").val();
    var employee_name = $("#upd_employee_name").val();
    var employee_depart = $("#upd_employee_depart").val();
    var email_address = $("#upd_email_address").val();
    var user_id = $("#upd_user_id").val();
    var password = $("#upd_password").val();

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': jQuery('meta[name="csrf-token"]').attr('content')
        }
    });
    $.ajax({
        type: "POST",
        url: 'index/savemember',
        data: {
            member_id : member_id,
            employee_name : employee_name,
            employee_depart : employee_depart,
            email_address : email_address,
            user_id : user_id,
            password : password
        },
        dataType: 'json',
        success: function (data) {
          $.toast(
            { 
              heading: '成功', 
              text: '操作が成功しました。', 
              position: 'top-right', stack: false, icon: 'success', loaderBg: '#009102',
              hideAfter: 1000, 
              afterHidden: function () {
                window.location.href = "{{url('/admin/index')}}";
              }
            }
          ); 

        },
        error: function (data) {
            console.log(data);
        }
    });
  }

  function resetModal(){
    $("#upd_member_id").val('');
    $("#upd_employee_name").val('');
    $("#upd_employee_depart").val('');
    $("#upd_email_address").val('');
    $("#upd_user_id").val('');
    $("#upd_password").val('');
  }
</script>
@stop
