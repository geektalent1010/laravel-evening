<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Member;
use App\Models\Depart;
use App\Models\Billdepart;
use App\Models\Shipper;
use App\Models\Yard;
use App\Models\Maker;
use App\Models\Cartype;
use App\Models\Color;

class BusinessController extends Controller
{
    public function index()
    {
        $title = "業務画面";
        $billdepart_list = Billdepart::select('*')->get();
        $shipper_list = Shipper::select('*')->get();
        $yard_list = Yard::select('*')->get();
        $maker_list = Maker::select('*')->get();
        $cartype_list = Cartype::select('*')->get();
        $color_list = Color::select('*')->get();

        // $data_list = Member::leftJoin('m_depart', 'm_member.employee_depart', '=', 'm_depart.id')
        //     ->select('m_member.*', 'm_depart.depart')
        //     ->get();
        // $depart_list = Depart::select('*')->get();
        return view('business.index', compact('title', 'billdepart_list', 'shipper_list', 'yard_list', 'maker_list', 'cartype_list', 'color_list'));
    }
}
