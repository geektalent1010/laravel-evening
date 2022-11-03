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
                    <th>ヤード名</th>
                    <th>事業所</th>
                    <th>ALIAS1</th>
                    <th>ALIAS2</th>
                    <th>ALIAS3</th>
                    <th>ALIAS4</th>
                    <th>ALIAS5</th>
                    <th>ALIAS6</th>
                    <th>ALIAS7</th>
                    <th>ALIAS8</th>
                    <th>ALIAS9</th>
                    <th>ALIAS10</th>
                    <th>Action</th>
                  </tr>
                </thead>
                <tbody>
                  <input type="hidden" name="hid_order" value="{{$i=0}}">
                  @foreach ($data_list as $data)
                  <input type="hidden" name="hid_order" value="{{$i++}}">
                  <tr>
                    <td style="padding:0.2rem;"><input type="hidden" id="record_{{$data->id}}" value="{{$data}}">{{$i}}</td>
                    <td style="padding:0.2rem;">{{$data->yard_name}}</td>
                    <td style="padding:0.2rem;">{{$data->depart}}</td>
                    <td style="padding:0.2rem;">{{$data->alias1}}</td>
                    <td style="padding:0.2rem;">{{$data->alias2}}</td>
                    <td style="padding:0.2rem;">{{$data->alias3}}</td>
                    <td style="padding:0.2rem;">{{$data->alias4}}</td>
                    <td style="padding:0.2rem;">{{$data->alias5}}</td>
                    <td style="padding:0.2rem;">{{$data->alias6}}</td>
                    <td style="padding:0.2rem;">{{$data->alias7}}</td>
                    <td style="padding:0.2rem;">{{$data->alias8}}</td>
                    <td style="padding:0.2rem;">{{$data->alias9}}</td>
                    <td style="padding:0.2rem;">{{$data->alias10}}</td>
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
        <h5 class="modal-title" id="varyModalLabel">ヤードマスタ</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <input type="hidden" id="upd_yard_id">
          <div class="form-group">
            <label for="upd_yard_name" class="col-form-label">ヤード名:</label>
            <input type="text" class="form-control" id="upd_yard_name">
          </div>
          <div class="form-group">
            <label for="upd_depart" class="col-form-label">事業所:</label>
            <input type="text" class="form-control" id="upd_depart">
          </div>
          <div class="form-group">
            <label for="upd_alias1" class="col-form-label">ALIAS1:</label>
            <input type="text" class="form-control" id="upd_alias1">
          </div>
          <div class="form-group">
            <label for="upd_alias2" class="col-form-label">ALIAS2:</label>
            <input type="text" class="form-control" id="upd_alias2">
          </div>
          <div class="form-group">
            <label for="upd_alias3" class="col-form-label">ALIAS3:</label>
            <input type="text" class="form-control" id="upd_alias3">
          </div>
          <div class="form-group">
            <label for="upd_alias4" class="col-form-label">ALIAS4:</label>
            <input type="text" class="form-control" id="upd_alias4">
          </div>
          <div class="form-group">
            <label for="upd_alias5" class="col-form-label">ALIAS5:</label>
            <input type="text" class="form-control" id="upd_alias5">
          </div>
          <div class="form-group">
            <label for="upd_alias6" class="col-form-label">ALIAS6:</label>
            <input type="text" class="form-control" id="upd_alias6">
          </div>
          <div class="form-group">
            <label for="upd_alias7" class="col-form-label">ALIAS7:</label>
            <input type="text" class="form-control" id="upd_alias7">
          </div>
          <div class="form-group">
            <label for="upd_alias8" class="col-form-label">ALIAS8:</label>
            <input type="text" class="form-control" id="upd_alias8">
          </div>
          <div class="form-group">
            <label for="upd_alias9" class="col-form-label">ALIAS9:</label>
            <input type="text" class="form-control" id="upd_alias9">
          </div>
          <div class="form-group">
            <label for="upd_alias10" class="col-form-label">ALIAS10:</label>
            <input type="text" class="form-control" id="upd_alias10">
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
    $("#upd_yard_id").val(record_id);
    $("#upd_yard_name").val(data.yard_name);
    $("#upd_depart").val(data.depart);
    $("#upd_alias1").val(data.alias1);
    $("#upd_alias2").val(data.alias2);
    $("#upd_alias3").val(data.alias3);
    $("#upd_alias4").val(data.alias4);
    $("#upd_alias5").val(data.alias5);
    $("#upd_alias6").val(data.alias6);
    $("#upd_alias7").val(data.alias7);
    $("#upd_alias8").val(data.alias8);
    $("#upd_alias9").val(data.alias9);
    $("#upd_alias10").val(data.alias10);
  }

  function deleteData(record_id){
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': jQuery('meta[name="csrf-token"]').attr('content')
        }
    });
    $.ajax({
        type: "POST",
        url: 'yard/deletedata',
        data: {
            yard_id : record_id,
        },
        dataType: 'json',
        success: function (data) {
          window.location.href = "{{url('/admin/yard')}}";
        },
        error: function (data) {
            console.log(data);
        }
    });

  }

  function saveData(){
    var yard_id = $("#upd_yard_id").val();
    var yard_name = $("#upd_yard_name").val();
    var depart = $("#upd_depart").val();
    var alias1 = $("#upd_alias1").val();
    var alias2 = $("#upd_alias2").val();
    var alias3 = $("#upd_alias3").val();
    var alias4 = $("#upd_alias4").val();
    var alias5 = $("#upd_alias5").val();
    var alias6 = $("#upd_alias6").val();
    var alias7 = $("#upd_alias7").val();
    var alias8 = $("#upd_alias8").val();
    var alias9 = $("#upd_alias9").val();
    var alias10 = $("#upd_alias10").val();

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': jQuery('meta[name="csrf-token"]').attr('content')
        }
    });
    $.ajax({
        type: "POST",
        url: 'yard/savedata',
        data: {
            yard_id : yard_id,
            yard_name : yard_name,
            depart : depart,
            alias1 : alias1,
            alias2 : alias2,
            alias3 : alias3,
            alias4 : alias4,
            alias5 : alias5,
            alias6 : alias6,
            alias7 : alias7,
            alias8 : alias8,
            alias9 : alias9,
            alias10 : alias10
        },
        dataType: 'json',
        success: function (data) {
          window.location.href = "{{url('/admin/yard')}}";
        },
        error: function (data) {
            console.log(data);
        }
    });
  }

  function resetModal(){
    $("#upd_yard_id").val('');
    $("#upd_yard_name").val('');
    $("#upd_depart").val('');
    $("#upd_alias1").val('');
    $("#upd_alias2").val('');
    $("#upd_alias3").val('');
    $("#upd_alias4").val('');
    $("#upd_alias5").val('');
    $("#upd_alias6").val('');
    $("#upd_alias7").val('');
    $("#upd_alias8").val('');
    $("#upd_alias9").val('');
    $("#upd_alias10").val('');
  }
</script>
@stop
