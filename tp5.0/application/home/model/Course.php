<?php
namespace app\home\model;
use think\Model;
class Course extends Model
{
    protected $table = 'course';
    protected $pk = 'id';
    protected static function init()
    {

    }
    public function getCreditAttr($value)
    {
        $result = [-1=>'删除', 0=>'禁用', 1=>'正常', 2=>'待审核',""=>"未知","3"=>"结果"];
        return $result[$value];
    }
    public function getNothingAttr($value, $data)
    {
        $myGet = [-1=>'删除', 0=>'禁用', 1=>'正常', 2=>'待审核',"3"=>"结果"];
        return $myGet[$data['credit']];
    }
    public function student()
    {
        return $this->belongsTo('Student');
    }

}