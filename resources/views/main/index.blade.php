@extends('layout')
@section('data_content')
    <div class="container-fluid">
      <div class="row justify-content-center">
        <div class="col-12 m-2">
          <div class="form-row">
            <div class="form-group col-auto ml-4" style="display: flex; flex-direction: row; align-items: center;">
              <span style="width:80px;" for="cond_billdepart">請求先：</span>
              <select class="form-control select2 w180px" id="cond_billdepart">
                  @foreach ($billdepart_list as $data)
                  <option value="{{$data->id}}">{{$data->billdepart_name}}</option>
                  @endforeach
              </select>
            </div>
            <div class="form-group col-auto ml-5" style="display: flex; flex-direction: row; align-items: center;">
              <span style="width:100px;" for="cond_shipper">シッパー：</span>
              <select class="form-control select2 w180px" id="cond_shipper">
                  @foreach ($shipper_list as $data)
                  <option value="{{$data->id}}">{{$data->shipper_name}}</option>
                  @endforeach
              </select>
            </div>
            <div class="form-group col-auto ml-5" style="display: flex; flex-direction: row; align-items: center;">
              <span style="width:70px;" for="cond_yard">ヤード：</span>
              <select class="form-control select2 w180px" id="cond_yard">
                  @foreach ($yard_list as $data)
                  <option value="{{$data->id}}">{{$data->yard_name}}</option>
                  @endforeach
              </select>
            </div>
          </div> <!-- form-group -->
          <div class="form-row">
            <div class="card shadow w-100" style="background-color: #0008;border-radius: 0.5rem !important;">
              <div class="card-body">
                <table class="table table-hover table-sm">
                  <thead>
                    <tr>
                      <th style="border-top: unset;">メーカー</th>
                      <th style="border-top: unset;">車種名</th>
                      <th style="border-top: unset;">車台番号※</th>
                      <th style="border-top: unset;">色</th>
                      <th style="border-top: unset;">搬入予定日</th>
                      <th style="border-top: unset;">搬入日</th>
                      <th style="border-top: unset;">取引先REFNo</th>
                      <th style="border-top: unset;">船積日</th>
                      <th style="border-top: unset;">メモ</th>
                      <th style="border-top: unset;">UPLOAD</th>
                    </tr>
                  </thead>
                  <tbody>
                    @for ($i = 0; $i < 10; $i++)
                    <tr>
                      <td>
                        <select class="form-control select2 w100px" id="row{{$i}}_maker">
                            @foreach ($maker_list as $data)
                            <option value="{{$data->id}}">{{$data->maker_name}}</option>
                            @endforeach
                        </select>
                      </td>
                      <td>
                        <select class="form-control select2 w100px" id="row{{$i}}_cartype">
                            @foreach ($cartype_list as $data)
                            <option value="{{$data->id}}">{{$data->cartype}}</option>
                            @endforeach
                        </select>
                      </td>
                      <td>
                        <input type="text" id="row{{$i}}_car_body_number" class="form-control">
                      </td>
                      <td>
                        <select class="form-control select2 w100px" id="row{{$i}}_color">
                            @foreach ($color_list as $data)
                            <option value="{{$data->id}}">{{$data->color}}</option>
                            @endforeach
                        </select>
                      </td>
                      <td>
                        <input type="text" id="row{{$i}}_import_expect_date" class="form-control datepicker w100px">
                      </td>
                      <td>
                        <input type="text" id="row{{$i}}_import_date" class="form-control datepicker w100px">
                      </td>
                      <td>
                        <input type="text" id="row{{$i}}_ref_no" class="form-control">
                      </td>
                      <td>
                        <input type="text" id="row{{$i}}_shipping_date" class="form-control datepicker w100px">
                      </td>
                      <td>
                        <input type="text" id="row{{$i}}_memo" class="form-control">
                      </td>
                      <td>
                        <button type="button" class="form-control btn btn-sm btn-outline-primary">PDF</button>
                      </td>
                    </tr>
                    @endfor
                  </tbody>
                </table>
              </div>
            </div>
          </div>
          <div class="form-row mt-3 justify-content-center">
            <button type="button" class="btn ml-4 btn-outline-primary w180px">行追加</button>
            <button type="button" class="btn ml-4 btn-outline-success w180px">マスター登録</button>
            <button type="button" class="btn ml-4 btn-outline-warning w180px">車両登録後オーダー登録</button>
          </div>
        </div> <!-- .col-12 -->
      </div> <!-- .row -->
    </div> <!-- .container-fluid -->

@stop


@section('data_script')
<script type="text/javascript">
  $(document).ready(function () {
    
  });
</script>
@stop
