<?php
namespace app\api\controller;

use think\Request;   /* Request*/
use think\Log;       /** Log */

use think\Cache;     /* Cache */
use think\Session;   /* Session */
use \think\Validate; /* 验证器 */


class Logs 
{
    public function index()
    {
    	Log::init([
            'type'  =>  'File',
            'path'  =>  APP_PATH.'logs/',
            'apart_level'   =>  ['error','sql'],
            'max_files'	=> 30
        ]);
        Log::record('测试日志信息');

    }

}
