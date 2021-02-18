<?php

namespace App\Controllers\Admin;

use App\Controllers\BaseController;
use App\Models\UserModel;

class User extends BaseController
{
    protected $userModel;
    protected $db;
    public function __construct()
    {
        $this->userModel = new UserModel();
        $this->db = \Config\Database::connect();
    }

    public function index()
    {
        $data = [
            'title'  => 'User List | RH Wedding Planner',
            'users'  => $this->userModel->getUser(),
        ];
        return view('admin/user/index', $data);
    }


    public function detail($username)
    {
        $data = [
            'title'  => 'Detail User | RH Wedding Planner',
            'user'  => $this->userModel->getUser('username', $username),
        ];
        return view('admin/user/detail', $data);
    }

    public function group()
    {

        $builder = $this->db->table('auth_groups');
        $query   = $builder->get();
        $data = [
            'title'  => 'User Group | RH Wedding Planner',
            'groups'  => $query->getResultArray()
        ];
        // dd($data);
        return view('admin/user/group', $data);
    }
    
    public function userPermission()
    {
        $data['title'] = 'User Permissions';
        return view('admin/user/user_permission', $data);

    }
}
