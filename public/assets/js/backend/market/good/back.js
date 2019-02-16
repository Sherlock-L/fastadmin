define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'market/good/back/index',
                    add_url: 'market/good/back/add',
                    edit_url: 'market/good/back/edit',
                    del_url: 'market/good/back/del',
                    multi_url: 'market/good/back/multi',
                    table: 'market_good_back',
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
                        //{field: 'good_id', title: __('Good_id')},
                        {field: 'info.name', title: __('Info.name')},
                        {field: 'info.image', title: __('Info.image'), formatter: Table.api.formatter.image},
                        {field: 'num', title: __('Num')},
                        {field: 'backdate', title: __('Backdate'), operate:'RANGE', addclass:'datetimerange'},
                        {field: 'back_stock', title: __('Back_stock')},
                        {field: 'remark', title: "备注"},
                        //{field: 'createtime', title: __('Createtime'), operate:'RANGE', addclass:'datetimerange', formatter: Table.api.formatter.datetime},
                        //{field: 'info.id', title: __('Info.id')},
                        //{field: 'info.num', title: __('Info.num')},
                        //{field: 'info.good_category_id', title: __('Info.good_category_id')},
                        //{field: 'info.supplier_id', title: __('Info.supplier_id')},
                        //{field: 'info.sale_price', title: __('Info.sale_price'), operate:'BETWEEN'},
                        //{field: 'info.stock', title: __('Info.stock')},
                        //{field: 'info.createtime', title: __('Info.createtime'), operate:'RANGE', addclass:'datetimerange', formatter: Table.api.formatter.datetime},
                        //{field: 'info.updatetime', title: __('Info.updatetime'), operate:'RANGE', addclass:'datetimerange', formatter: Table.api.formatter.datetime},
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