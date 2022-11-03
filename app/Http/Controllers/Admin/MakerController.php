<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Maker;

class MakerController extends Controller
{
    public function index()
    {
        $title = "メーカーマスタ";   
        $data_list =Maker::select('*')->get();
        return view('admin.maker.index', compact('title', 'data_list'));
    }
    public function saveData(Request $request)
    {
        $maker_id = $request->maker_id;

        if(empty($maker_id)){
            $maker = new Maker;
            $maker->maker_name = $request->maker_name;
            $maker->save(); 
        }else{
            $maker = Maker::where('id',$maker_id)->get()->first();
            $maker->maker_name = $request->maker_name;
            $maker->save(); 
        }

        return response()->json(['result'=>'success']);
    }    
    public function deleteData(Request $request)
    {
        $maker_id = $request->maker_id;
        $maker = Maker::where('id',$maker_id)->delete();
        return response()->json(['result'=>'success']);
    }    
}
