<?php
namespace app\test\controller;
use think\Controller;
class Login extends Controller
{
    public function index(){
        return $this->request->module()."模块".$this->request->controller()."控制器".$this->request->action()."操作";
    }
    public function doLogin(){
        return $this->request->module()."模块". $this->request->controller()."控制器".$this->request->action()."操作";
    }
}