<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Models\Member;
use App\Models\Depart;

class IndexController extends Controller
{
    public function index()
    {
        $title = "社員マスタ";
        $data_list = Member::leftJoin('m_depart', 'm_member.employee_depart', '=', 'm_depart.id')
            ->select('m_member.*', 'm_depart.depart')
            ->get();
        $depart_list = Depart::select('*')->get();
        return view('admin.member.index', compact('title', 'data_list', 'depart_list'));
    }
    public function saveData(Request $request)
    {
        $member_id = $request->member_id;

        if(empty($member_id)){
            $member = new Member;
            $member->employee_depart = $request->employee_depart;
            $member->employee_name = $request->employee_name;
            $member->email_address = $request->email_address;
            $member->user_id = $request->user_id;
            $member->password = Hash::make($request->password);
            $member->password_str = $request->password;
            $member->save(); 
        }else{
            $member = Member::where('id',$member_id)->get()->first();
            $member->employee_depart = $request->employee_depart;
            $member->employee_name = $request->employee_name;
            $member->email_address = $request->email_address;
            $member->user_id = $request->user_id;
            $member->password = Hash::make($request->password);
            $member->password_str = $request->password;
            $member->save(); 
        }

        return response()->json(['result'=>'success']);
    }    
    public function deleteData(Request $request)
    {
        $member_id = $request->member_id;
        Member::where('id',$member_id)->delete();
        return response()->json(['result'=>'success']);
    }    
}
