<?php

namespace Database\Seeders;

use App\Models\Admin;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class AdminSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Admin::truncate();

        $admins_data = [];
        for ($i = 1; $i <= 10; $i++) {
            $admins_data[] = [
                'userid' => sprintf('admin%03d', $i),
                'password' => sprintf('pass%04d', $i),
            ];
        }

        foreach($admins_data as $data) {
            $admin = new Admin();
            $admin->userid = $data['userid'];
            $admin->password = Hash::make($data['password']);
            $admin->save();
        }
    }
}