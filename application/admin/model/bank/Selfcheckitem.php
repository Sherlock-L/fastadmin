<?php

namespace app\admin\model\bank;

use think\Model;

class Selfcheckitem extends Model
{
    // 表名
    protected $name = 'bank_selfcheckitem';
    
    // 自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';

    // 定义时间戳字段名
    protected $createTime = 'createtime';
    protected $updateTime = 'updatetime';
    
    // 追加属性
    protected $append = [
        'need_reply_text'
    ];

    

    
    public function getNeedReplyList()
    {
        return ['0' => __('Need_reply 0'),'1' => __('Need_reply 1')];
    }     


    public function getNeedReplyTextAttr($value, $data)
    {        
        $value = $value ? $value : (isset($data['need_reply']) ? $data['need_reply'] : '');
        $list = $this->getNeedReplyList();
        return isset($list[$value]) ? $list[$value] : '';
    }




    public function admin()
    {
        return $this->belongsTo('app\admin\model\Admin', 'responsible_id', 'id', [], 'LEFT')->setEagerlyType(0);
    }


    public function admin2()
    {
        return $this->belongsTo('app\admin\model\Admin', 'grouper_id', 'id', [], 'LEFT')->setEagerlyType(0);
    }


    public function dept()
    {
        return $this->belongsTo('Dept', 'dept_id', 'id', [], 'LEFT')->setEagerlyType(0);
    }


    public function group()
    {
        return $this->belongsTo('Group', 'group_id', 'id', [], 'LEFT')->setEagerlyType(0);
    }


    public function selfcheck()
    {
        return $this->belongsTo('Selfcheck', 'check_type', 'id', [], 'LEFT')->setEagerlyType(0);
    }


    public function wgtype()
    {
        return $this->belongsTo('Wgtype', 'wg_type', 'id', [], 'LEFT')->setEagerlyType(0);
    }


    public function ywtype()
    {
        return $this->belongsTo('Ywtype', 'yw_type', 'id', [], 'LEFT')->setEagerlyType(0);
    }
}
