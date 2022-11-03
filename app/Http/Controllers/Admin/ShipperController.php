<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Shipper;

class ShipperController extends Controller
{
    public function index()
    {
        $title = "シッパーマスタ";   
        $data_list =Shipper::select('*')->get();
        return view('admin.shipper.index', compact('title', 'data_list'));
    }
    public function saveData(Request $request)
    {
        $shipper_id = $request->shipper_id;

        if(empty($shipper_id)){
            $shipper = new Shipper;
            $shipper->shipper_name = $request->shipper_name;
            $shipper->shipper_short_name = $request->shipper_short_name;
            $shipper->save(); 
        }else{
            $shipper = Shipper::where('id',$shipper_id)->get()->first();
            $shipper->shipper_name = $request->shipper_name;
            $shipper->shipper_short_name = $request->shipper_short_name;
            $shipper->save(); 
        }

        return response()->json(['result'=>'success']);
    }    
    public function deleteData(Request $request)
    {
        $shipper_id = $request->shipper_id;
        $shipper = Shipper::where('id',$shipper_id)->delete();
        return response()->json(['result'=>'success']);
    }    
}
