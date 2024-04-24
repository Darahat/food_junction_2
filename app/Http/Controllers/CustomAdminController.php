<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Hash;
use Session;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class CustomAdminController extends Controller
{
    public function admin_home(){
        return view('dashboard.admin.admin_home');
    }
    public function add_form(){
        return view('dashboard.admin.add_product');
    }
    
    public function show_product(){
        return view('dashboard.admin.show_product');
    }
}
