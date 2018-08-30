<?php
// +----------------------------------------------------------------------
// | 海豚PHP框架 [ DolphinPHP ]
// +----------------------------------------------------------------------
// | 版权所有 2016~2017 河源市卓锐科技有限公司 [ http://www.zrthink.com ]
// +----------------------------------------------------------------------
// | 官方网站: http://dolphinphp.com
// +----------------------------------------------------------------------
// | 开源协议 ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------

namespace app\api\model;

use app\user\model\Role as RoleModel;
use think\Model;
use think\Exception;
use util\Tree;

/**
 * 节点模型
 * @package app\admin\model
 */
class CmsLink extends Model
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
}
