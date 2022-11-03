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
                    <th>オーダー区分１</th>
                    <th>オーダー区分２</th>
                    <th>請求時名所</th>
                    <th>Action</th>
                  </tr>
                </thead>
                <tbody>
                  <input type="hidden" name="hid_order" value="{{$i=0}}">
                  @foreach ($data_list as $data)
                  <input type="hidden" name="hid_order" value="{{$i++}}">
                  <tr>
                    <input type="hidden" id="record_{{$data->id}}" value="{{$data}}">
                    <td style="padding:0.2rem;">{{$i}}</td>
                    <td style="padding:0.2rem;">{{$data->ordertype}}</td>
                    <td style="padding:0.2rem;">{{$data->ordertype2}}</td>
                    <td style="padding:0.2rem;">{{$data->bill_name}}</td>
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
        <h5 class="modal-title" id="varyModalLabel">オーダー区分２マスタ</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <input type="hidden" id="upd_ordertype2_id">
          <div class="form-group">
            <label for="upd_ordertype1" class="col-form-label">オーダー区分１:</label>
            <select class="form-control select2" id="upd_ordertype1">
              <option value=""></option>
              @foreach ($ordertype1 as $data)
                <option value="{{$data->id}}">{{$data->ordertype}}</option>
              @endforeach
            </select>
          </div>
          <div class="form-group">
            <label for="upd_ordertype2" class="col-form-label">オーダー区分２:</label>
            <input type="text" class="form-control" id="upd_ordertype2">
          </div>
          <div class="form-group">
            <label for="upd_bill_name" class="col-form-label">請求時名所:</label>
            <input type="text" class="form-control" id="upd_bill_name">
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

  function editData(record_id){
    resetModal();
    var data = JSON.parse($("#record_"+record_id).val());
    $("#upd_ordertype2_id").val(data.id);
    $("#upd_ordertype1").val(data.ordertype1);
    $("#upd_ordertype2").val(data.ordertype2);
    $("#upd_bill_name").val(data.bill_name);
  }

  function deleteData(record_id){
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': jQuery('meta[name="csrf-token"]').attr('content')
        }
    });
    $.ajax({
        type: "POST",
        url: 'ordertype2/deletedata',
        data: {
            ordertype2_id : record_id,
        },
        dataType: 'json',
        success: function (data) {
          window.location.href = "{{url('/admin/ordertype2')}}";
        },
        error: function (data) {
            console.log(data);
        }
    });

  }

  function saveData(){
    var ordertype2_id = $("#upd_ordertype2_id").val();
    var ordertype1 = $("#upd_ordertype1").val();
    var ordertype2 = $("#upd_ordertype2").val();
    var bill_name = $("#upd_bill_name").val();

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': jQuery('meta[name="csrf-token"]').attr('content')
        }
    });
    $.ajax({
        type: "POST",
        url: 'ordertype2/savedata',
        data: {
            ordertype2_id : ordertype2_id,
            ordertype1 : ordertype1,
            ordertype2 : ordertype2,
            bill_name : bill_name,
        },
        dataType: 'json',
        success: function (data) {
          window.location.href = "{{url('/admin/ordertype2')}}";
        },
        error: function (data) {
            console.log(data);
        }
    });
  }

  function resetModal(){
    $("#upd_ordertype2_id").val('');
    $("#upd_ordertype1").val('');
    $("#upd_ordertype2").val('');
    $("#upd_bill_name").val('');
  }
</script>
@stop
