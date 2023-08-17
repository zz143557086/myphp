<?php
namespace app\log\controller;
use app\log\controller\DataLogFactor;
use app\log\controller\FileLogFactor;
class Log{
    public function logClie(){
        $factor1 = new FilelogFactor();
        $log1 = $factor1->createLogger();
        $factor2 = new DatalogFactor();
        $log2 = $factor2->createLogger();

        return $log1->writeLogger()."<br>".$log2->writeLogger();
    }
    public function index(){
        return 1;
    }
}