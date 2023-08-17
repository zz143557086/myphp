<?php

namespace app\prototype\controller;
use app\prototype\controller\WeeklyReport;
use app\prototype\controller\Attachment;
class Client
{
    public function deepClone(){

        $address = new Attachment('精彩的文章','奇怪的故事');
        $prototype = new WeeklyReport('张三',$address);
        $attachment = $prototype->deepClone();
        $attachment->author = '李四';
        $weekly = $prototype->shallowClone();
        echo "深度克隆下载周报附件:"."<br>";
        echo $attachment->getAddress()->download()."<br>".$attachment->getAddress()->getTitle()."<br>"
            .$attachment->getAuthor()."<br>".$attachment->getAddress()->getcontent();
        echo "<br>"."浅度克隆下载周报展示:"."<br>";
        echo $weekly->getAuthor();

    }
}