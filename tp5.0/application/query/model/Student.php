<?php

namespace app\query\model;
use think\Model;
class student extends Model
{
    protected $table = 'student';
    public function course(){
        return $this->belongsToMany('Student','course_student','course_id');
    }
}