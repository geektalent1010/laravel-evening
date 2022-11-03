<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Color;

class ColorController extends Controller
{
    public function index()
    {
        $title = "色マスタ";   
        $data_list =Color::select('*')->get();
        return view('admin.color.index', compact('title', 'data_list'));
    }
    public function saveData(Request $request)
    {
        $color_id = $request->color_id;

        if(empty($color_id)){
            $color = new Color;
            $color->color = $request->color;
            $color->save(); 
        }else{
            $color = Color::where('id',$color_id)->get()->first();
            $color->color = $request->color;
            $color->save(); 
        }

        return response()->json(['result'=>'success']);
    }    
    public function deleteData(Request $request)
    {
        $color_id = $request->color_id;
        $color = Color::where('id',$color_id)->delete();
        return response()->json(['result'=>'success']);
    }    
}
