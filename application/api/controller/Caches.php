<?php
namespace app\api\controller;

use think\Request;   /* Request*/
use think\Log;       /** Log */

use think\Cache;     /* Cache */
use think\Session;   /* Session */
use \think\Validate; /* 验证器 */


class Caches 
{
    public function index()
    {
        $options = [
            // 缓存类型为File
            'type'  =>  'File', 
            // 缓存有效期为永久有效
            'expire'=>  0, 
            //缓存前缀
            'prefix'=>  'think',
            // 指定缓存目录
            'path'  =>  APP_PATH.'runtime/cache/',
        ];
        Cache::connect($options);

        $value = '1';

        Cache::set('name',$value,3600);

    }

}
