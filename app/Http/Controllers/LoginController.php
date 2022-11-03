<?php

namespace App\Http\Controllers;

use Session;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Models\Member;

class LoginController extends Controller
{
    public function index()
    {
        //t_member password update
        // $datas = Member::get();
        // foreach ($datas as $key => $value) {
        //     $rec = Member::where([['id',$value->id]])->get()->first();
        //     $rec->password = Hash::make($value->password);
        //     $rec->save();
        // }
        $session = Session::get('user');
        if(!empty($session)){
            return redirect('/main');
        }
        return view('login.index');
    }

    public function doLogin(Request $request)
    {
        $data = $request->all();
        // print_r($data);die;
        $result = Member::where([
                ['user_id',$data['user_id']]
            ])->get();
        if(count($result)){
            foreach ($result as $key => $value) {
                if(Hash::check($data['password'], $value->password)){
                    $request->session()->put('user',$value);
                    echo json_encode(array('result' => "success"));
                }else{
                    echo json_encode(array('result' => "error", 'msg' => "パスワードが正しくありません。"));
                }
            }
        }
        else{
            echo json_encode(array('result' => "error", 'msg' => "メールアドレスが登録されていません。"));
        }
    }
    
    public function register()
    {
        $title = 'Register';
        $subtitle = '';
        $user_country = config('global.USER_COUNTRY');

        return response()->json([
            'result' => true,
            'status' => 200,
            'data' => "" . view('user.login.register', compact('title', 'user_country')) . ""
        ]);
    }

    public function registerMember(Request $request)
    {
        $data = $request->all();

        $exist = Member::where('user_email',$data['user_email'])->get()->first();
        if(empty($exist)){
            $user = new Member;
            $user->user_email = $data['user_email'];
            $user->user_password = Hash::make($data['user_password']);
            $user->user_country = $data['user_country'];
            $user->user_profilename = $data['user_profilename'];
            $user->user_instagram = $data['user_instagram'];
            $user->user_twitter = $data['user_twitter'];
            $user->user_tiktok = $data['user_tiktok'];
            $user->user_facebook = $data['user_facebook'];
            $user->user_role = 1;
            // $user->user_status = 0;
            $user->save();
            $request->session()->put('user',$user);
            echo json_encode(array('result' => "success"));
        }else{
            echo json_encode(array('result' => "exist"));
        }
    }

    public function login(Request $request)
    {
        $credentials = $request->only(['user_id', 'password']);
        $guard = $request->guard;

        if (Auth::guard('members')->attempt($credentials)) {
            // ログインしたらトップページにリダイレクト
            return redirect()->route('index')->with([
                'login_msg' => 'ログインしました。',
            ]);
        }

        return back()->withErrors([
            'login' => ['ログインに失敗しました'],
        ]);
    }

    // public function logout(Request $request)
    // {
    //     Auth::logout();
    //     $request->session()->invalidate();
    //     $request->session()->regenerateToken();

    //     // ログアウトしたらログインフォームにリダイレクト
    //     return redirect('login.index')->with([
    //         'auth' => ['ログアウトしました'],
    //     ]);
    // }

    public function logout(\Illuminate\Http\Request $request)
    {

        // $this->guard('user')->logout();
        $request->session()->flush();
        $request->session()->regenerate();
        $request->session()->invalidate();
        return redirect('/');
    }

}