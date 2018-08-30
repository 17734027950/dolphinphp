<?php
namespace app\api\controller;

use think\Cache;     /* Cache */
use think\Session;   /* Session */
use \think\Validate; /* 验证器 */
use \think\Request;  /* Request */

use app\api\model\CmsLink as cmslink;
use app\api\model\CmsNav  as cmsnav;

class Requestdata
{
    public function index()
    {
        Request::instance()->cache('requestdata/index',3600);

        echo rand(1,10).'<br/>';

    	$request = Request::instance();
    	// 获取当前域名
        echo 'domain: ' . $request->domain() . '<br/>';
        // 获取当前入口文件
        echo 'file: ' . $request->baseFile() . '<br/>';
        // 获取当前URL地址 不含域名
        echo 'url: ' . $request->url() . '<br/>';
        // 获取包含域名的完整URL地址
        echo 'url with domain: ' . $request->url(true) . '<br/>';
        // 获取当前URL地址 不含QUERY_STRING
        echo 'url without query: ' . $request->baseUrl() . '<br/>';
        // 获取URL访问的ROOT地址
        echo 'root:' . $request->root() . '<br/>';
        // 获取URL访问的ROOT地址
        echo 'root with domain: ' . $request->root(true) . '<br/>';
        // 获取URL地址中的PATH_INFO信息
        echo 'pathinfo: ' . $request->pathinfo() . '<br/>';
        // 获取URL地址中的PATH_INFO信息 不含后缀
        echo 'pathinfo: ' . $request->path() . '<br/>';
        // 获取URL地址中的后缀信息
        echo 'ext: ' . $request->ext() . '<br/>';

        die;

    	$cmsnav = new cmsnav;

    	$cmsnav = $cmsnav->getLists();
    	// var_dump($cmsnav);die;


    	$cmslink = new cmslink();

    	$cmslink = $cmslink->select();
    	// var_dump($cmslink);die;

    	$user = db('admin_user')->select();
    	// var_dump($user);die;
        
    	$cache_name = 'cmsnav';

        if(Cache::get($cache_name)){
        	$data = Cache::get($cache_name);
        }else{
        	Cache::set($cache_name,$cmsnav,10);
        	$data = $cmsnav;
        }

        return ['code'=>1,'message'=>'操作完成','data'=>$data];
    }
}
