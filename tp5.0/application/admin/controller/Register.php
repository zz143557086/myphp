<?php
namespace app\admin\controller;
use think\Controller;
class Register extends Controller
{
    public function index(){
       echo $this->request->module()."模块". $this->request->controller()."控制器".$this->request->action()."操作";
    }
    public function doRegister(){
        echo $this->request->module()."模块".$this->request->controller()."控制器".$this->request->action()."操作";
    }

}