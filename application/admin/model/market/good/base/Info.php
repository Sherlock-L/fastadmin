<?php

namespace app\admin\model\market\good\base;

use think\Model;
use app\admin\model\market\good\Category;
class Info extends Model
{
    // 表名
    protected $name = 'market_good_base_info';
    
    // 自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';

    // 定义时间戳字段名
    protected $createTime = 'createtime';
    protected $updateTime = 'updatetime';
    
    // 追加属性
    protected $append = [

    ];
    

    







    public function category()
    {
        return $this->belongsTo('app\admin\model\market\good\Category','good_category_id', 'id', [], 'LEFT')->setEagerlyType(0);
    }


    public function supplier()
    {
        return $this->belongsTo('app\admin\model\market\Supplier', 'supplier_id', 'id', [], 'LEFT')->setEagerlyType(0);
    }
}
