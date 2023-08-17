<?php

namespace app\prototype\controller;
use app\prototype\controller\WeeklyReport;
class Attachment
{
    public $content;
    public $title;
    public function __construct($content,$title){
        $this->content = $content;
        $this->title = $title;
    }
    public function download(){
        return "附件开始下载";
    }
    public function getContent(){
        return "周报内容为:".$this->content;
    }
    public function getTitle(){
        return "周报标题为:".$this->title;
    }
}