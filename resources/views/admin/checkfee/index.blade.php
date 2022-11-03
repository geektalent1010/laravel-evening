@extends('admin/layout')
@section('data_content')
<style type="text/css">
    th, td { white-space: nowrap; }
    div.dataTables_wrapper {
        margin: 0 auto;
    }
</style>
<div class="container-fluid">
  <div class="row justify-content-center">
    <div class="col-12">
      <div class="row my-4">
        <!-- Small table -->
        <div class="col-md-12">
          <div class="card shadow">
            <div class="card-body">
              <!-- table -->
              <table class="table datatables stripe row-border" id="myDataTable" style="width:100%">
                <thead>
                  <tr>
                    <th>#</th>
                    <th>検査機関</th>
                    <th>ヤード</th>
                    <th>仕向地</th>
                    <th>車両カテゴリー</th>
                    <th>検査種類</th>
                    <th>分類番号</th>
                    <th>排気量区分</th>
                    <th>検査料金</th>
                    <th>管理料</th>
                    <th>管理料</th>
                    <th>Action</th>
                  </tr>
                </thead>
                <tbody>
                  <input type="hidden" name="hid_order" value="{{$i=0}}">
                  @foreach ($data_list as $data)
                  <input type="hidden" name="hid_order" value="{{$i++}}">
                  <tr>
                    <td style="padding:0.2rem;"><input type="hidden" id="record_{{$data->id}}" value="{{$data}}">{{$i}}</td>
                    <td style="padding:0.2rem;">{{$data->check_depart}}</td>
                    <td style="padding:0.2rem;">{{$data->yard}}</td>
                    <td style="padding:0.2rem;">{{$data->destination}}</td>
                    <td style="padding:0.2rem;">{{$data->car_category}}</td>
                    <td style="padding:0.2rem;">{{$data->car_type}}</td>
                    <td style="padding:0.2rem;">{{$data->type_number}}</td>
                    <td style="padding:0.2rem;">{{$data->displacement_type}}</td>
                    <td style="padding:0.2rem;">{{$data->check_fee}}</td>
                    <td style="padding:0.2rem;">{{$data->management_fee}}</td>
                    <td style="padding:0.2rem;">{{$data->gl_fee}}</td>
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
        <h5 class="modal-title" id="varyModalLabel">検査料金マスタ</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <input type="hidden" id="upd_checkfee_id">
          <div class="form-group">
            <label for="upd_check_depart" class="col-form-label">検査機関:</label>
            <input type="text" class="form-control" id="upd_check_depart">
          </div>
          <div class="form-group">
            <label for="upd_yard" class="col-form-label">ヤード:</label>
            <input type="text" class="form-control" id="upd_yard">
          </div>
          <div class="form-group">
            <label for="upd_destination" class="col-form-label">仕向地:</label>
            <input type="text" class="form-control" id="upd_destination">
          </div>
          <div class="form-group">
            <label for="upd_car_category" class="col-form-label">車両カテゴリー:</label>
            <input type="text" class="form-control" id="upd_car_category">
          </div>
          <div class="form-group">
            <label for="upd_car_type" class="col-form-label">検査種類:</label>
            <input type="text" class="form-control" id="upd_car_type">
          </div>
          <div class="form-group">
            <label for="upd_type_number" class="col-form-label">分類番号:</label>
            <input type="text" class="form-control" id="upd_type_number">
          </div>
          <div class="form-group">
            <label for="upd_displacement_type" class="col-form-label">排気量区分:</label>
            <input type="text" class="form-control" id="upd_displacement_type">
          </div>
          <div class="form-group">
            <label for="upd_check_feemanagement_fee" class="col-form-label">検査料金:</label>
            <input type="text" class="form-control" id="upd_check_feemanagement_fee">
          </div>
          <div class="form-group">
            <label for="upd_management_fee" class="col-form-label">管理料:</label>
            <input type="text" class="form-control" id="upd_management_fee">
          </div>
          <div class="form-group">
            <label for="upd_gl_fee" class="col-form-label">GL手数料:</label>
            <input type="text" class="form-control" id="upd_gl_fee">
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
      scrollX:        true,
      scrollCollapse: true,
      fixedColumns:   { left: 3, right: 1 },
      "columnDefs": [ {
        "targets": '_all',
        "createdCell": function (td, cellData, rowData, row, col) {
          $(td).css('padding', '0px 20px')
        }
      } ],
      "lengthMenu": [
        [16, 32, 64, -1],
        [16, 32, 64, "All"]
      ]
    });
    $(".dataTables_length").append('<button type="button" class="btn btn-outline-primary ml-4" data-toggle="modal" data-target="#varyModal" data-whatever="@mdo" onclick="javascript: resetModal();">追加</button>');
  });

  function addData(){

  }

  function editData(record_id){
    resetModal();
    var data = JSON.parse($("#record_"+record_id).val());
    $("#upd_checkfee_id").val(record_id);
    $("#upd_check_depart").val(data.check_depart);
    $("#upd_yard").val(data.yard);
    $("#upd_destination").val(data.destination);
    $("#upd_car_category").val(data.car_category);
    $("#upd_car_type").val(data.car_type);
    $("#upd_type_number").val(data.type_number);
    $("#upd_displacement_type").val(data.displacement_type);
    $("#upd_check_fee").val(data.check_fee);
    $("#upd_management_fee").val(data.management_fee);
    $("#upd_gl_fee").val(data.gl_fee);
  }

  function deleteData(record_id){
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': jQuery('meta[name="csrf-token"]').attr('content')
        }
    });
    $.ajax({
        type: "POST",
        url: 'checkfee/deletedata',
        data: {
            checkfee_id : record_id,
        },
        dataType: 'json',
        success: function (data) {
          window.location.href = "{{url('/admin/checkfee')}}";
        },
        error: function (data) {
            console.log(data);
        }
    });

  }

  function saveData(){
    var checkfee_id       = $("#upd_checkfee_id").val();
    var check_depart      = $("#upd_check_depart").val();
    var yard              = $("#upd_yard").val();
    var destination       = $("#upd_destination").val();
    var car_category      = $("#upd_car_category").val();
    var car_type          = $("#upd_car_type").val();
    var type_number       = $("#upd_type_number").val();
    var displacement_type = $("#upd_displacement_type").val();
    var check_fee         = $("#upd_check_fee").val();
    var management_fee    = $("#upd_management_fee").val();
    var gl_fee            = $("#upd_gl_fee").val();

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': jQuery('meta[name="csrf-token"]').attr('content')
        }
    });
    $.ajax({
        type: "POST",
        url: 'checkfee/savedata',
        data: {
            checkfee_id       : checkfee_id,
            check_depart      : check_depart,
            yard              : yard,
            destination       : destination,
            car_category      : car_category,
            car_type          : car_type,
            type_number       : type_number,
            displacement_type : displacement_type,
            check_fee         : check_fee,
            management_fee    : management_fee,
            gl_fee            : gl_fee,
        },
        dataType: 'json',
        success: function (data) {
          window.location.href = "{{url('/admin/checkfee')}}";
        },
        error: function (data) {
            console.log(data);
        }
    });
  }

  function resetModal(){
    $("#upd_checkfee_id").val('');
    $("#upd_check_depart").val('');
    $("#upd_yard").val('');
    $("#upd_destination").val('');
    $("#upd_car_category").val('');
    $("#upd_car_type").val('');
    $("#upd_type_number").val('');
    $("#upd_displacement_type").val('');
    $("#upd_check_fee").val('');
    $("#upd_management_fee").val('');
    $("#upd_gl_fee").val('');
  }
</script>
@stop
