<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Depart;

class DepartController extends Controller
{
    public function index()
    {
        $title = "事業所マスタ";   
        $data_list =Depart::select('*')->get();
        return view('admin.depart.index', compact('title', 'data_list'));
    }
    public function saveData(Request $request)
    {
        $depart_id = $request->depart_id;

        if(empty($depart_id)){
            $depart = new Depart;
            $depart->depart = $request->depart;
            $depart->role = $request->role;
            $depart->save(); 
        }else{
            $depart = Depart::where('id',$depart_id)->get()->first();
            $depart->depart = $request->depart;
            $depart->role = $request->role;
            $depart->save(); 
        }

        return response()->json(['result'=>'success']);
    }    
    public function deleteData(Request $request)
    {
        $depart_id = $request->depart_id;
        $depart = Depart::where('id',$depart_id)->delete();
        return response()->json(['result'=>'success']);
    }    
}
