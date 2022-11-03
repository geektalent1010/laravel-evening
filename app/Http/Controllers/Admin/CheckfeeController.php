<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Checkfee;

class CheckfeeController extends Controller
{
    public function index()
    {
        $title = "検査料金マスタ";   
        $data_list =Checkfee::select('*')->get();
        return view('admin.checkfee.index', compact('title', 'data_list'));
    }
    public function saveData(Request $request)
    {
        $checkfee_id = $request->checkfee_id;

        if(empty($checkfee_id)){
            $checkfee = new Checkfee;
            $checkfee->check_depart = $request->check_depart;
            $checkfee->yard = $request->yard;
            $checkfee->destination = $request->destination;
            $checkfee->car_category = $request->car_category;
            $checkfee->car_type = $request->car_type;
            $checkfee->type_number = $request->type_number;
            $checkfee->displacement_type = $request->displacement_type;
            $checkfee->check_fee = $request->check_fee;
            $checkfee->management_fee = $request->management_fee;
            $checkfee->gl_fee = $request->gl_fee;
            $checkfee->save(); 
        }else{
            $checkfee = Checkfee::where('id',$checkfee_id)->get()->first();
            $checkfee->check_depart = $request->check_depart;
            $checkfee->yard = $request->yard;
            $checkfee->destination = $request->destination;
            $checkfee->car_category = $request->car_category;
            $checkfee->car_type = $request->car_type;
            $checkfee->type_number = $request->type_number;
            $checkfee->displacement_type = $request->displacement_type;
            $checkfee->check_fee = $request->check_fee;
            $checkfee->management_fee = $request->management_fee;
            $checkfee->gl_fee = $request->gl_fee;
            $checkfee->save(); 
        }

        return response()->json(['result'=>'success']);
    }    
    public function deleteData(Request $request)
    {
        $checkfee_id = $request->checkfee_id;
        $checkfee = Checkfee::where('id',$checkfee_id)->delete();
        return response()->json(['result'=>'success']);
    }    
}
