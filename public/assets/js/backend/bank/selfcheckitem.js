define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'bank/selfcheckitem/index',
                    add_url: 'bank/selfcheckitem/add',
                    edit_url: 'bank/selfcheckitem/edit',
                    del_url: 'bank/selfcheckitem/del',
                    multi_url: 'bank/selfcheckitem/multi',
                    table: 'bank_selfcheckitem',
                }
            });

            var table = $("#table");

            // 初始化表格
            table.bootstrapTable({
                url: $.fn.bootstrapTable.defaults.extend.index_url,
                pk: 'id',
                sortName: 'id',
                columns: [
                    [
                        {checkbox: true},
                        {field: 'id', title: __('Id')},
                        {field: 'responsible_id', title: __('Responsible_id')},
                        {field: 'grouper_id', title: __('Grouper_id')},
                        {field: 'dept_id', title: __('Dept_id')},
                        {field: 'group_id', title: __('Group_id')},
                        {field: 'check_type', title: __('Check_type')},
                        {field: 'wg_date', title: __('Wg_date'), operate:'RANGE', addclass:'datetimerange'},
                        {field: 'check_date', title: __('Check_date'), operate:'RANGE', addclass:'datetimerange'},
                        {field: 'yw_type', title: __('Yw_type')},
                        {field: 'wg_type', title: __('Wg_type')},
                        {field: 'need_reply', title: __('Need_reply'), searchList: {"0":__('Need_reply 0'),"1":__('Need_reply 1')}, formatter: Table.api.formatter.normal},
                        {field: 'createtime', title: __('Createtime'), operate:'RANGE', addclass:'datetimerange', formatter: Table.api.formatter.datetime},
                        {field: 'updatetime', title: __('Updatetime'), operate:'RANGE', addclass:'datetimerange', formatter: Table.api.formatter.datetime},
                        {field: 'admin.id', title: __('Admin.id')},
                        {field: 'admin.username', title: __('Admin.username')},
                        {field: 'admin.nickname', title: __('Admin.nickname')},
                        {field: 'admin.password', title: __('Admin.password')},
                        {field: 'admin.salt', title: __('Admin.salt')},
                        {field: 'admin.avatar', title: __('Admin.avatar')},
                        {field: 'admin.email', title: __('Admin.email')},
                        {field: 'admin.loginfailure', title: __('Admin.loginfailure')},
                        {field: 'admin.logintime', title: __('Admin.logintime'), operate:'RANGE', addclass:'datetimerange', formatter: Table.api.formatter.datetime},
                        {field: 'admin.createtime', title: __('Admin.createtime'), operate:'RANGE', addclass:'datetimerange', formatter: Table.api.formatter.datetime},
                        {field: 'admin.updatetime', title: __('Admin.updatetime'), operate:'RANGE', addclass:'datetimerange', formatter: Table.api.formatter.datetime},
                        {field: 'admin.token', title: __('Admin.token')},
                        {field: 'admin.status', title: __('Admin.status'), formatter: Table.api.formatter.status},
                        {field: 'admin.id', title: __('Admin.id')},
                        {field: 'admin.username', title: __('Admin.username')},
                        {field: 'admin.nickname', title: __('Admin.nickname')},
                        {field: 'admin.password', title: __('Admin.password')},
                        {field: 'admin.salt', title: __('Admin.salt')},
                        {field: 'admin.avatar', title: __('Admin.avatar')},
                        {field: 'admin.email', title: __('Admin.email')},
                        {field: 'admin.loginfailure', title: __('Admin.loginfailure')},
                        {field: 'admin.logintime', title: __('Admin.logintime'), operate:'RANGE', addclass:'datetimerange', formatter: Table.api.formatter.datetime},
                        {field: 'admin.createtime', title: __('Admin.createtime'), operate:'RANGE', addclass:'datetimerange', formatter: Table.api.formatter.datetime},
                        {field: 'admin.updatetime', title: __('Admin.updatetime'), operate:'RANGE', addclass:'datetimerange', formatter: Table.api.formatter.datetime},
                        {field: 'admin.token', title: __('Admin.token')},
                        {field: 'admin.status', title: __('Admin.status'), formatter: Table.api.formatter.status},
                        {field: 'dept.id', title: __('Dept.id')},
                        {field: 'dept.name', title: __('Dept.name')},
                        {field: 'group.id', title: __('Group.id')},
                        {field: 'group.name', title: __('Group.name')},
                        {field: 'selfcheck.id', title: __('Selfcheck.id')},
                        {field: 'selfcheck.name', title: __('Selfcheck.name')},
                        {field: 'wgtype.id', title: __('Wgtype.id')},
                        {field: 'wgtype.name', title: __('Wgtype.name')},
                        {field: 'ywtype.id', title: __('Ywtype.id')},
                        {field: 'ywtype.name', title: __('Ywtype.name')},
                        {field: 'operate', title: __('Operate'), table: table, events: Table.api.events.operate, formatter: Table.api.formatter.operate}
                    ]
                ]
            });

            // 为表格绑定事件
            Table.api.bindevent(table);
        },
        add: function () {
            Controller.api.bindevent();
        },
        edit: function () {
            Controller.api.bindevent();
        },
        api: {
            bindevent: function () {
                Form.api.bindevent($("form[role=form]"));
            }
        }
    };
    return Controller;
});