<?php
namespace app\api\model;

use think\Model;

/**
 * 
 */
class CmsNav extends Model
{
    // 设置当前模型对应的完整数据表名称
    // protected $table = '__ADMIN_MENU__';

    // 自动写入时间戳
    protected $autoWriteTimestamp = true;

    // 将节点url转为小写
    public function setUrlValueAttr($value)
    {
        return strtolower(trim($value));
    }


    public function getLists()
    {
    	return $this
                ->field('title')
                ->paginate()
                ->each(function($item,$key){
                    $item['rand'] = rand(1,10);
                    return $item; 
                })
                ->toArray();
    }

}
