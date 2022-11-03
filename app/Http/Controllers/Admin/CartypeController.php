<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Cartype;

class CartypeController extends Controller
{
    public function index()
    {
        $title = "車種マスタ";   
        $data_list =Cartype::select('*')->get();
        return view('admin.cartype.index', compact('title', 'data_list'));
    }
    public function saveData(Request $request)
    {
        $cartype_id = $request->cartype_id;

        if(empty($cartype_id)){
            $cartype = new Cartype;
            $cartype->maker = $request->maker;
            $cartype->cartype = $request->cartype;
            $cartype->save(); 
        }else{
            $cartype = Cartype::where('id',$cartype_id)->get()->first();
            $cartype->maker = $request->maker;
            $cartype->cartype = $request->cartype;
            $cartype->save(); 
        }

        return response()->json(['result'=>'success']);
    }    
    public function deleteData(Request $request)
    {
        $cartype_id = $request->cartype_id;
        $cartype = Cartype::where('id',$cartype_id)->delete();
        return response()->json(['result'=>'success']);
    }    
}
