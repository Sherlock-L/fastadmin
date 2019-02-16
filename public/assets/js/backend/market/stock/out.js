define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'market/stock/out/index',
                    add_url: 'market/stock/out/add',
                    edit_url: 'market/stock/out/edit',
                    del_url: 'market/stock/out/del',
                    multi_url: 'market/stock/out/multi',
                    table: 'market_stock_out',
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
                        {field: 'customer.name', title: __('Customer.name')},

                        //{field: 'good_id', title: __('Good_id')},
                        {field: 'info.name', title: __('Info.name')},
                        {field: 'num', title: __('Num')},
                        {field: 'buy_price', title: __('Buy_price'), operate:'BETWEEN'},
                        {field: 'add_stock', title: __('Add_stock')},
                        {field: 'admin.username', title: __('Admin.username')},
                        //{field: 'admin_id', title: __('Admin_id')},
                        {field: 'createtime', title: "操作时间", operate:'RANGE', addclass:'datetimerange', formatter: Table.api.formatter.datetime},
                        //{field: 'info.id', title: __('Info.id')},
                        //{field: 'info.num', title: __('Info.num')},

                        //{field: 'info.good_category_id', title: __('Info.good_category_id')},
                        //{field: 'info.image', title: __('Info.image'), formatter: Table.api.formatter.image},
                        //{field: 'info.supplier_id', title: __('Info.supplier_id')},
                        //{field: 'info.sale_price', title: __('Info.sale_price'), operate:'BETWEEN'},
                        //{field: 'info.stock', title: __('Info.stock')},
                        //{field: 'info.createtime', title: __('Info.createtime'), operate:'RANGE', addclass:'datetimerange', formatter: Table.api.formatter.datetime},
                        //{field: 'info.updatetime', title: __('Info.updatetime'), operate:'RANGE', addclass:'datetimerange', formatter: Table.api.formatter.datetime},
                        //{field: 'customer.id', title: __('Customer.id')},

                        //{field: 'customer.genderdata', title: __('Customer.genderdata')},
                        //{field: 'customer.birthdate', title: __('Customer.birthdate'), operate:'RANGE', addclass:'datetimerange'},
                        //{field: 'customer.tel', title: __('Customer.tel')},
                        //{field: 'customer.address', title: __('Customer.address')},
                        //{field: 'customer.createtime', title: __('Customer.createtime'), operate:'RANGE', addclass:'datetimerange', formatter: Table.api.formatter.datetime},
                        //{field: 'admin.id', title: __('Admin.id')},

                        //{field: 'admin.nickname', title: __('Admin.nickname')},
                        //{field: 'admin.password', title: __('Admin.password')},
                        //{field: 'admin.salt', title: __('Admin.salt')},
                        //{field: 'admin.avatar', title: __('Admin.avatar')},
                        //{field: 'admin.email', title: __('Admin.email')},
                        //{field: 'admin.loginfailure', title: __('Admin.loginfailure')},
                        //{field: 'admin.logintime', title: __('Admin.logintime'), operate:'RANGE', addclass:'datetimerange', formatter: Table.api.formatter.datetime},
                        //{field: 'admin.createtime', title: __('Admin.createtime'), operate:'RANGE', addclass:'datetimerange', formatter: Table.api.formatter.datetime},
                        //{field: 'admin.updatetime', title: __('Admin.updatetime'), operate:'RANGE', addclass:'datetimerange', formatter: Table.api.formatter.datetime},
                        //{field: 'admin.token', title: __('Admin.token')},
                        //{field: 'admin.status', title: __('Admin.status'), formatter: Table.api.formatter.status},
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