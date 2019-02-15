<?php

namespace app\admin\model\market\stock;

use think\Model;
use app\admin\model\Admin;
class Add extends Model
{
    // 表名
    protected $name = 'market_stock_add';
    
    // 自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';

    // 定义时间戳字段名
    protected $createTime = 'createtime';
    protected $updateTime = false;
    
    // 追加属性
    protected $append = [

    ];
    

    







    public function admin()
    {
        return $this->belongsTo('app\admin\model\Admin', 'admin_id', 'id', [], 'LEFT')->setEagerlyType(0);
    }


    public function category()
    {
        return $this->belongsTo('app\admin\model\market\good\Category', 'good_category_id', 'id', [], 'LEFT')->setEagerlyType(0);
    }


    public function supplier()
    {
        return $this->belongsTo('app\admin\model\market\Supplier', 'supplier_id', 'id', [], 'LEFT')->setEagerlyType(0);
    }
}
