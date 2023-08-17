<?php
namespace app\log\controller;
use app\log\controller\LogFactor;
use app\log\controller\DataLogger;
class  DataLogFactor implements LogFactor{
    public function createLogger(){
        return new DataLogger();
    }
}

