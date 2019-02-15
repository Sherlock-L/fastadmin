define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'market/stock/add/index',
                    add_url: 'market/stock/add/add',
                    edit_url: 'market/stock/add/edit',
                    del_url: 'market/stock/add/del',
                    multi_url: 'market/stock/add/multi',
                    table: 'market_stock_add',
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
                        {field: 'good_id', title: __('Good_id')},
                        {field: 'num', title: __('Num')},
                        {field: 'name', title: __('Name')},
                        {field: 'good_category_id', title: __('Good_category_id')},
                        {field: 'buy_price', title: __('Buy_price'), operate:'BETWEEN'},
                        {field: 'add_stock', title: __('Add_stock')},
                        // {field: 'supplier_id', title: __('Supplier_id')},
                        // {field: 'admin_id', title: __('Admin_id')},
                        // {field: 'createtime', title: __('Createtime'), operate:'RANGE', addclass:'datetimerange', formatter: Table.api.formatter.datetime},
                        // {field: 'admin.id', title: __('Admin.id')},
                        // {field: 'admin.username', title: __('Admin.username')},
                        // {field: 'admin.nickname', title: __('Admin.nickname')},
                        // {field: 'admin.password', title: __('Admin.password')},
                        // {field: 'admin.salt', title: __('Admin.salt')},
                        // {field: 'admin.avatar', title: __('Admin.avatar')},
                        // {field: 'admin.email', title: __('Admin.email')},
                        // {field: 'admin.loginfailure', title: __('Admin.loginfailure')},
                        // {field: 'admin.logintime', title: __('Admin.logintime'), operate:'RANGE', addclass:'datetimerange', formatter: Table.api.formatter.datetime},
                        // {field: 'admin.createtime', title: __('Admin.createtime'), operate:'RANGE', addclass:'datetimerange', formatter: Table.api.formatter.datetime},
                        // {field: 'admin.updatetime', title: __('Admin.updatetime'), operate:'RANGE', addclass:'datetimerange', formatter: Table.api.formatter.datetime},
                        // {field: 'admin.token', title: __('Admin.token')},
                        // {field: 'admin.status', title: __('Admin.status'), formatter: Table.api.formatter.status},
                        // {field: 'category.id', title: __('Category.id')},
                        // {field: 'category.name', title: __('Category.name')},
                        // {field: 'supplier.id', title: __('Supplier.id')},
                        // {field: 'supplier.num', title: __('Supplier.num')},
                        // {field: 'supplier.company', title: __('Supplier.company')},
                        // {field: 'supplier.name', title: __('Supplier.name')},
                        // {field: 'supplier.tel', title: __('Supplier.tel')},
                        // {field: 'supplier.address', title: __('Supplier.address')},
                        // {field: 'supplier.createtime', title: __('Supplier.createtime'), operate:'RANGE', addclass:'datetimerange', formatter: Table.api.formatter.datetime},
                        // {field: 'supplier.updatetime', title: __('Supplier.updatetime'), operate:'RANGE', addclass:'datetimerange', formatter: Table.api.formatter.datetime},
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