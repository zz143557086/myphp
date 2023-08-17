<?php

namespace app\prototype\controller;
use app\prototype\controller\Prototype;
class WeeklyReport implements Prototype
{
    public $author;
    public $address;
    public function __construct($author,$address){
        $this->author=$author;
        $this->address = $address;
    }

    public function shallowClone(){
        return clone $this;
    }
    public function deepClone(){
        $clone = clone $this;
        $clone->address = $this->address;
        return $clone;
    }
    public function getAddress() {
        return $this->address;
    }
    public function getAuthor(){
        return "周报作者为".$this->author;
    }
}