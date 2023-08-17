<?php

namespace app\query\model;
use think\Model;
class comment extends Model
{
    protected $table = 'comment';
    public function article()
    {
        return $this->belongsTo('Article', 'Article_id','id');
    }
}
