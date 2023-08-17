<?php
namespace app\home\controller;
use think\Controller;
class Abc extends Controller
{
    private $value;
    protected $beforeActionList=[
        'first'
    ];
    protected function first(){
        echo "first<br>";
    }
    protected function second(){
        echo "second<br>";
    }
    public function _initialize($value="dsads")
    {
        $this->value = $value;
    }

    public function eat(){
        echo"吃";
    }
    public function arr($a,$b){
        $data = array('a'=>$a,'b'=>$b,'c'=>3);
        return json($data);
    }
    public function index(){
        if (1){
            $this->success('注册成功');
        }else $this->error("失败");
    }
    public function _empty($name)
    {
        return $name."此方法不存在";
    }
    public function demo($name){
        if($name == "a"){
            $this->success("验证成功",'home/Abc/index');
        }else{
            $this->error("验证成功",'home/Abc/demo1');
        }
    }
    public function  sum($a="",$b=""){
        $request = request()->param();
        dump($request);
        dump(input());
    }
    public function eg(){
        return $this->fetch('database/eg');
    }
}