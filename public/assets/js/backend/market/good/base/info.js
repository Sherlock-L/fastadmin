define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'market/good/base/info/index',
                    add_url: 'market/good/base/info/add',
                    edit_url: 'market/good/base/info/edit',
                    del_url: 'market/good/base/info/del',
                    multi_url: 'market/good/base/info/multi',
                    table: 'market_good_base_info',
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
                        {field: 'num', title: __('Num')},
                        {field: 'name', title: __('Name')},
                        //{field: 'good_category_id', title: __('Good_category_id')},
                        {field: 'image', title: __('Image'), formatter: Table.api.formatter.image},
                        {field: 'supplier_id', title: __('Supplier_id')},
                        {field: 'sale_price', title: __('Sale_price'), operate:'BETWEEN'},
                        {field: 'stock', title: __('Stock')},
                        {field: 'category.name', title: __('Category.name')},
                        {field: 'supplier.company', title: __('Supplier.company')},
                        {field: 'createtime', title: __('Createtime'), operate:'RANGE', addclass:'datetimerange', formatter: Table.api.formatter.datetime},
                        {field: 'updatetime', title: __('Updatetime'), operate:'RANGE', addclass:'datetimerange', formatter: Table.api.formatter.datetime},
                        //{field: 'category.id', title: __('Category.id')},
                        //{field: 'supplier.id', title: __('Supplier.id')},
                        //{field: 'supplier.num', title: __('Supplier.num')},
                        //{field: 'supplier.name', title: __('Supplier.name')},
                        //{field: 'supplier.tel', title: __('Supplier.tel')},
                        //{field: 'supplier.address', title: __('Supplier.address')},
                        //{field: 'supplier.createtime', title: __('Supplier.createtime'), operate:'RANGE', addclass:'datetimerange', formatter: Table.api.formatter.datetime},
                        //{field: 'supplier.updatetime', title: __('Supplier.updatetime'), operate:'RANGE', addclass:'datetimerange', formatter: Table.api.formatter.datetime},
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