<?php
namespace app\home\controller;

use app\common\model\Config;
use app\home\model\Course;
use app\home\model\Student;
use app\home\model\User;
use think\Controller;
use think\Db;
use think\View;
class Database extends Controller
{
    public function index(){

        dump(\think\Config::get());
    }
    public function data(){
        $data = Db::table('course')->where('name','王五')->select();
        $data = json_encode($data);
        $data = json_decode($data);
        return json($data);
    }
    public function addOne(){
        $data = [
            'eid' => 'dsa',
            'ename' => '123',
            'password' => '123456'
        ];
        $t = Db::table('Course')->insert($data);
        if($t) return "成功";
    }
    public function findone(){
        $data = Db::table('course')->where('name','王五')->value('id');
        $data = json_encode($data);
        $data = json_decode($data);
        return json($data);
    }
    public function findones(){
        $data = Db::table('course')->where('name','王五')->select();
        $data = json_encode($data);
        $data = json_decode($data);
        return json($data);
    }
    public function modify(){
        $data = [
            'eid' => '5'
        ];
        Db::table('Course')->where('eid','辉夜')->inc('eid',5)->update();
    }
    public function delete(){
       $t =  Db::table('Course')->where('eid','05')->delete();
       return $t;
    }
    public function like(){
        $data = Db::table('course')->where('name','like','王%')->select();
        return json($data);
    }
    public function in(){
        $data = Db::table('course')->where('name','in',['王五',6])->limit(0,2)->select();
        return json($data);
    }
    public function field(){
        $data = Db::table('course')->field('name')->select();
        return json($data);
    }
    public function exp(){ //使用 exp 可以自定义字段后的 SQL 语句
        $data = Db::table('course')->where('id','exp','In(6)');



        return json($data);
    }
    public function save(){
        $user = new Course();
        $user->name = '张三';
        $user->course_name = '数学';
        $user->id = '115';
        $user->save();
        return $user;
    }
    public function de(){
        $user = Course::get("001");
        return $user;
    }
    public function fullOder(){
        return $this->fetch('home@Abc/full_oder',['name'=>'小明','id'=>'linko','__static__'=>'/static']);
    }
    public function status(){
        $user = new Course();
        $data = $user->get("001");
        return $data->result;
    }
    public function viewOne(){
        $this->view->assign(['id'=>'22','name'=>'boy']);
        return $this->display('dsada{$id}',['id'=>'das']);
        return $this->fetch();
    }
    public function eg(){
        return $this->fetch('home/@Database/eg');
    }
    public function each(){
        $data = [['id'=>'123','name'=>'小明'],['id'=>'456','name'=>'q小明'],['name'=>" "]];
        dump($data);
    }
    public function dbTest(){
        $link = Db::connect();
        $data = Db::table('user')->select();
        return json($data);
    }
    public function add(){

        $user = new User;
        $user->username = '插不进';
        $user->uid = '9';
        $user->save();


    }
    public function sele(){
        $user = User::get(1);
        $data = $user->de;
        return json($data);
    }
    // 关联查询
    public function correlation(){
        $data = Db::table('course')->alias('c')->join('student s','c.id=s.id','left')->select();
        return json($data);
    }
}