<?php
namespace app\api\controller;

use think\Request;   /* Request*/

use think\Cache;     /* Cache */
use think\Session;   /* Session */
use \think\Validate; /* 验证器 */


class Demo 
{
    public function index()
    {
    	
    }

    public function testget()
    {
        // 是否为 GET 请求
        if (Request::instance()->isGet()){

            $json['code'] = 1;
            $json['msg']  = 'success';

            $json['data'] = Request::instance()->param();

            return json($json);
        }else{
            return json(array('code'=>0,'msg'=>'请使用GET请求'));
        }
    }

    public function testpost()
    {
        // 是否为 GET 请求
        if (Request::instance()->isPost()){

            $json['code'] = 1;
            $json['msg']  = 'success';

            $json['data'] = Request::instance()->param();

            return json($json);
        }else{
            return json(array('code'=>0,'msg'=>'请使用POST请求'));
        }
    }


}
