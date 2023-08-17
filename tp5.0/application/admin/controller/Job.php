<?php
namespace app\admin\api;
use think\controller;
class Job
{
    public function work()
    {
        dump(\think\Config::get());
    }
}