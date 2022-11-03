<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Status;

class StatusController extends Controller
{
    public function index()
    {
        $title = "ステータスマスタ";   
        $data_list =Status::select('*')->get();
        return view('admin.status.index', compact('title', 'data_list'));
    }
    public function saveData(Request $request)
    {
        $status_id = $request->status_id;

        if(empty($status_id)){
            $status = new Status;
            $status->status_name = $request->status_name;
            $status->save(); 
        }else{
            $status = Status::where('id',$status_id)->get()->first();
            $status->status_name = $request->status_name;
            $status->save(); 
        }

        return response()->json(['result'=>'success']);
    }    
    public function deleteData(Request $request)
    {
        $status_id = $request->status_id;
        $status = Status::where('id',$status_id)->delete();
        return response()->json(['result'=>'success']);
    }    
}
