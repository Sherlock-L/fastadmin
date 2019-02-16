<?php

namespace app\admin\model\market\stock;

use think\Model;

class Out extends Model
{
    // 表名
    protected $name = 'market_stock_out';
    
    // 自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';

    // 定义时间戳字段名
    protected $createTime = 'createtime';
    protected $updateTime = false;
    
    // 追加属性
    protected $append = [

    ];
    

    







    public function info()
    {
        return $this->belongsTo('app\admin\model\market\good\base\Info', 'good_id', 'id', [], 'LEFT')->setEagerlyType(0);
    }


    public function customer()
    {
        return $this->belongsTo('app\admin\model\market\Customer', 'customer_id', 'id', [], 'LEFT')->setEagerlyType(0);
    }


    public function admin()
    {
        return $this->belongsTo('app\admin\model\Admin', 'admin_id', 'id', [], 'LEFT')->setEagerlyType(0);
    }
}
