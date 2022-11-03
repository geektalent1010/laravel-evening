<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Ordertype1;

class Ordertype1Controller extends Controller
{
    public function index()
    {
        $title = "オーダー区分１マスタ";   
        $data_list =Ordertype1::select('*')->get();
        return view('admin.ordertype1.index', compact('title', 'data_list'));
    }
    public function saveData(Request $request)
    {
        $ordertype1_id = $request->ordertype1_id;

        if(empty($ordertype1_id)){
            $ordertype1 = new Ordertype1;
            $ordertype1->ordertype = $request->ordertype;
            $ordertype1->save(); 
        }else{
            $ordertype1 = Ordertype1::where('id',$ordertype1_id)->get()->first();
            $ordertype1->ordertype = $request->ordertype;
            $ordertype1->save(); 
        }

        return response()->json(['result'=>'success']);
    }    
    public function deleteData(Request $request)
    {
        $ordertype1_id = $request->ordertype1_id;
        $ordertype1 = Ordertype1::where('id',$ordertype1_id)->delete();
        return response()->json(['result'=>'success']);
    }    
}
