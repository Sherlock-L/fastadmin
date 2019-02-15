<?php

namespace app\admin\model\market;

use think\Model;

class Supplier extends Model
{
    // 表名
    protected $name = 'market_supplier';
    
    // 自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';

    // 定义时间戳字段名
    protected $createTime = 'createtime';
    protected $updateTime = 'updatetime';
    
    // 追加属性
    protected $append = [

    ];
    

    







}
