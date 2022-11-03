<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Import;

class ImportController extends Controller
{
    public function index()
    {
        $title = "オーダー自動取込マスタ";   
        $data_list =Import::select('*')->get();
        return view('admin.import.index', compact('title', 'data_list'));
    }
    public function saveData(Request $request)
    {
        $import_id = $request->import_id;

        if(empty($import_id)){
            $import = new Import;
            $import->shipper = $request->shipper;
            $import->photo_shoot = $request->photo_shoot;
            $import->initial_check = $request->initial_check;
            $import->save(); 
        }else{
            $import = Import::where('id',$import_id)->get()->first();
            $import->shipper = $request->shipper;
            $import->photo_shoot = $request->photo_shoot;
            $import->initial_check = $request->initial_check;
            $import->save(); 
        }

        return response()->json(['result'=>'success']);
    }    
    public function deleteData(Request $request)
    {
        $import_id = $request->import_id;
        $import = Import::where('id',$import_id)->delete();
        return response()->json(['result'=>'success']);
    }    
}
