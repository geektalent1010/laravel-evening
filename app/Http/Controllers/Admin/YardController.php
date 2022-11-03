<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Yard;

class YardController extends Controller
{
    public function index()
    {
        $title = "ヤードマスタ";   
        $data_list =Yard::select('*')->get();
        return view('admin.yard.index', compact('title', 'data_list'));
    }
    public function saveData(Request $request)
    {
        $yard_id = $request->yard_id;

        if(empty($yard_id)){
            $yard = new Yard;
            $yard->yard_name = $request->yard_name;
            $yard->depart = $request->depart;
            $yard->alias1 = $request->alias1;
            $yard->alias2 = $request->alias2;
            $yard->alias3 = $request->alias3;
            $yard->alias4 = $request->alias4;
            $yard->alias5 = $request->alias5;
            $yard->alias6 = $request->alias6;
            $yard->alias7 = $request->alias7;
            $yard->alias8 = $request->alias8;
            $yard->alias9 = $request->alias9;
            $yard->alias10 = $request->alias10;
            $yard->save(); 
        }else{
            $yard = Yard::where('id',$yard_id)->get()->first();
            $yard->yard_name = $request->yard_name;
            $yard->depart = $request->depart;
            $yard->alias1 = $request->alias1;
            $yard->alias2 = $request->alias2;
            $yard->alias3 = $request->alias3;
            $yard->alias4 = $request->alias4;
            $yard->alias5 = $request->alias5;
            $yard->alias6 = $request->alias6;
            $yard->alias7 = $request->alias7;
            $yard->alias8 = $request->alias8;
            $yard->alias9 = $request->alias9;
            $yard->alias10 = $request->alias10;
            $yard->save(); 
        }

        return response()->json(['result'=>'success']);
    }    
    public function deleteData(Request $request)
    {
        $yard_id = $request->yard_id;
        $yard = Yard::where('id',$yard_id)->delete();
        return response()->json(['result'=>'success']);
    }    
}
