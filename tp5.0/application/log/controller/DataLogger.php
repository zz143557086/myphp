<?php

namespace app\log\controller;
use app\log\controller\DataLogFactor;
use app\log\controller\Logger;
class DataLogger implements Logger
{
    public function writeLogger(){
        return "正在书写数据库日志";
    }
}