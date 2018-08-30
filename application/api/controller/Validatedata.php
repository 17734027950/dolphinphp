<?php
namespace app\api\controller;

use think\Cache;     /* Cache */
use think\Session;   /* Session */
use \think\Validate; /* 验证器 */

use app\api\model\CmsLink as cmslink;
use app\api\model\CmsNav  as cmsnav;

class Validatedata
{
    public function index()
    {

    	$validate = new Validate([
		    'name'  => 'require|max:25',
		    'email' => 'email'
		]);
		$data = [
		    'name'  => 'thinkphp',
		    'email' => 'thinkphp@qq.com'
		];
		if (!$validate->check($data)) {
		    dump($validate->getError());
		}
    	

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
