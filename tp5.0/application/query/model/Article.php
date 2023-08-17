<?php
namespace app\query\model;
use think\Model;
class Article extends Model
{
    protected $table = 'article';
    public function comment()
    {
        return $this->hasMany('Comment', 'article_id','id');
    }
}
