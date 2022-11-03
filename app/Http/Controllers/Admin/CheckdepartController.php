<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Checkdepart;

class CheckdepartController extends Controller
{
    public function index()
    {
        $title = "検査機関マスタ";   
        $data_list =Checkdepart::select('*')->get();
        return view('admin.checkdepart.index', compact('title', 'data_list'));
    }
    public function saveData(Request $request)
    {
        $checkdepart_id = $request->checkdepart_id;

        if(empty($checkdepart_id)){
            $checkdepart = new Checkdepart;
            $checkdepart->checkdepart = $request->checkdepart;
            $checkdepart->checktype = $request->checktype;
            $checkdepart->save(); 
        }else{
            $checkdepart = Checkdepart::where('id',$checkdepart_id)->get()->first();
            $checkdepart->checkdepart = $request->checkdepart;
            $checkdepart->checktype = $request->checktype;
            $checkdepart->save(); 
        }

        return response()->json(['result'=>'success']);
    }    
    public function deleteData(Request $request)
    {
        $checkdepart_id = $request->checkdepart_id;
        $checkdepart = Checkdepart::where('id',$checkdepart_id)->delete();
        return response()->json(['result'=>'success']);
    }    
}
