<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Billdepart;

class BilldepartController extends Controller
{
    public function index()
    {
        $title = "請求先マスタ";   
        $data_list =Billdepart::select('*')->get();
        return view('admin.billdepart.index', compact('title', 'data_list'));
    }
    public function saveData(Request $request)
    {
        $billdepart_id = $request->billdepart_id;

        if(empty($billdepart_id)){
            $billdepart = new Billdepart;
            $billdepart->billdepart_name = $request->billdepart_name;
            $billdepart->billdepart_short_name = $request->billdepart_short_name;
            $billdepart->save(); 
        }else{
            $billdepart = Billdepart::where('id',$billdepart_id)->get()->first();
            $billdepart->billdepart_name = $request->billdepart_name;
            $billdepart->billdepart_short_name = $request->billdepart_short_name;
            $billdepart->save(); 
        }

        return response()->json(['result'=>'success']);
    }    
    public function deleteData(Request $request)
    {
        $billdepart_id = $request->billdepart_id;
        $billdepart = Billdepart::where('id',$billdepart_id)->delete();
        return response()->json(['result'=>'success']);
    }    
}
