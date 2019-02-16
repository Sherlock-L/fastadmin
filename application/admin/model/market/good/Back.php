<?php

namespace app\admin\model\market\good;

use think\Model;

class Back extends Model
{
    // 表名
    protected $name = 'market_good_back';
    
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
}
