<?php

namespace app\query\model;
use think\Model;
class Course extends Model
{
    protected $table = 'course';
    public function student(){
        return $this->belongsToMany('Course','course_student','student_id');
    }

}