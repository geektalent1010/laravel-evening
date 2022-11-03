<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Ordertype1;
use App\Models\Ordertype2;

class Ordertype2Controller extends Controller
{
    public function index()
    {
        $title = "オーダー区分２マスタ";  
        $data_list = Ordertype2::leftJoin('m_ordertype1', 'm_ordertype1.id', '=', 'm_ordertype2.ordertype1')
            ->select('m_ordertype2.*', 'm_ordertype1.ordertype')
            ->get(); 
        $ordertype1 =Ordertype1::select('*')->get();
        return view('admin.ordertype2.index', compact('title', 'data_list', 'ordertype1'));
    }
    public function saveData(Request $request)
    {
        $ordertype2_id = $request->ordertype2_id;

        if(empty($ordertype2_id)){
            $ordertype2 = new Ordertype2;
            $ordertype2->ordertype1 = $request->ordertype1;
            $ordertype2->ordertype2 = $request->ordertype2;
            $ordertype2->bill_name = $request->bill_name;
            $ordertype2->save(); 
        }else{
            $ordertype2 = Ordertype2::where('id',$ordertype2_id)->get()->first();
            $ordertype2->ordertype1 = $request->ordertype1;
            $ordertype2->ordertype2 = $request->ordertype2;
            $ordertype2->bill_name = $request->bill_name;
            $ordertype2->save(); 
        }

        return response()->json(['result'=>'success']);
    }    
    public function deleteData(Request $request)
    {
        $ordertype2_id = $request->ordertype2_id;
        $ordertype2 = Ordertype2::where('id',$ordertype2_id)->delete();
        return response()->json(['result'=>'success']);
    }    
}
