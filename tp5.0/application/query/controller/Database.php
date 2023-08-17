<?php
namespace app\query\controller;
use app\query\model\Course;
use app\query\model\Student;
use think\Controller;
use think\Db;
class database extends Controller
{
    public function oneToMany(){

        $article = Article::get(1);
        $data = $article->comment()->select();
        foreach ($data as $item) {
            echo $item . "<br>";
        }
    }
    public function manyToMany(){
        $course= Course::get(1);
        $data = $course->student()->where('id=1')->select();
        foreach ($data as $item) {
            echo $item . "<br>";
        }
        $student= Student::get(1);
        $data = $student->course()->select();
        foreach ($data as $item) {
            echo $item . "<br>";
        }
    }
}