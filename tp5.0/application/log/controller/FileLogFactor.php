<?php
namespace app\log\controller;
use app\log\controller\LogFactor;
use app\log\controller\FileLogger;
class FileLogFactor implements LogFactor
{
    public function createLogger(){
        return new FileLogger();
    }

}