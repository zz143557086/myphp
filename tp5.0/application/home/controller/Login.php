<?php

namespace app\home\controller;
use think\Controller;
use think\View;
class Login extends  Controller
{
    public function login(){
        $view = new View();
        return $view->fetch('',['__STATIC__' => '/static']);
    }
    public function attr(){
        $request = $this->request->param();
        return $this->fetch('attribute',['data'=>$request]);
    }
}