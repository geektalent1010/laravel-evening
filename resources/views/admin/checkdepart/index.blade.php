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
                    <th>検査機関</th>
                    <th>検索区分</th>
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
                    <td style="padding:0.2rem;">{{$data->checkdepart}}</td>
                    <td style="padding:0.2rem;">{{$data->checktype}}</td>
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
        <h5 class="modal-title" id="varyModalLabel">検査機関マスタ</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <input type="hidden" id="upd_checkdepart_id">
          <div class="form-group">
            <label for="upd_checkdepart" class="col-form-label">検査機関:</label>
            <input type="text" class="form-control" id="upd_checkdepart">
          </div>
          <div class="form-group">
            <label for="upd_checktype" class="col-form-label">検索区分:</label>
            <select class="form-control select2" id="upd_checktype">
                <option value=""></option>
                <option value="1">ヤード、仕向地</option>
                <option value="2">ヤード、仕向地、車両カテゴリー</option>
                <option value="3">ヤード、仕向地、検査種類、分類番号</option>
                <option value="4">ヤード、仕向地、検査種類、排気量区分</option>
            </select>
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
    $("#upd_checkdepart_id").val(data.id);
    $("#upd_checkdepart").val(data.checkdepart);
    $("#upd_checktype").val(data.checktype);
  }

  function deleteData(record_id){
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': jQuery('meta[name="csrf-token"]').attr('content')
        }
    });
    $.ajax({
        type: "POST",
        url: 'checkdepart/deletedata',
        data: {
            checkdepart_id : record_id,
        },
        dataType: 'json',
        success: function (data) {
          window.location.href = "{{url('/admin/checkdepart')}}";
        },
        error: function (data) {
            console.log(data);
        }
    });

  }

  function saveData(){
    var checkdepart_id = $("#upd_checkdepart_id").val();
    var checkdepart = $("#upd_checkdepart").val();
    var checktype = $("#upd_checktype").val();

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': jQuery('meta[name="csrf-token"]').attr('content')
        }
    });
    $.ajax({
        type: "POST",
        url: 'checkdepart/savedata',
        data: {
            checkdepart_id : checkdepart_id,
            checkdepart : checkdepart,
            checktype : checktype,
        },
        dataType: 'json',
        success: function (data) {
          window.location.href = "{{url('/admin/checkdepart')}}";
        },
        error: function (data) {
            console.log(data);
        }
    });
  }

  function resetModal(){
    $("#upd_checkdepart_id").val('');
    $("#upd_checkdepart").val('');
    $("#upd_checktype").val('');
  }
</script>
@stop
