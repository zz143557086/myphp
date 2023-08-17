<?php

namespace app\home\controller;
use think\Request;
class Error
{
    public function index(Request $name){
        return $name->controller()."控制器不存在";
    }
}