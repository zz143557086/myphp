<?php

namespace app\home\model;
use think\Model;
class Student extends Model
{
    protected $table = 'student';
    public function cours(){
        return $this->hasMany('Course','id');
    }
}