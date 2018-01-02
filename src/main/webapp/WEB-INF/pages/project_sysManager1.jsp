<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <title>系统管理</title>
    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->

    <link rel="shortcut icon" href="/example/favicon.ico">
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="../../css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="../../css/animate.min.css" rel="stylesheet">
    <link href="../../css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <link href="../../css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="../../css/z_style.css" rel="stylesheet">
    <link href="../../css/plugins/toastr/toastr.min.css" rel="stylesheet">

</head>

<body class="gray-bg">
<div id="page-wrapper" class="white-bg dashbard-1">
    <div class=" row wrapper white-bg">
        <ol class="breadcrumb" style="margin-left: 40px">
            <li style="font-size: 15px">
                <strong>
                    <a href="user-jmpHomepage">首页</a> >><a href="user-jmpSysManager1">系统管理</a>>>机构申请
                </strong>
            </li>
        </ol>
    </div>


    <div class="form-group col-md-2">
        <ul class="nav navbar">
            <li>
                <a href="user-jmpSysManager1"><button class="btn-warning btn">机构申请</button></a>
            </li>
            <li>
                <a href="user-jmpSysManager2"><button class="btn-primary btn">已有机构</button></a>
            </li>
        </ul>
    </div>
    <div class="col-md-10" style="padding: 15px 30px 0px 0px">
        <div class="panel">
            <div class="panel-heading">
                <div class="panel-options">
                    <ul class="nav nav-tabs">
                        <li>
                            <a href="project_detail.html#tab-1" data-toggle="tab">待处理申请</a>
                        </li>
                        <li class="">
                            <a href="project_detail.html#tab-2" data-toggle="tab">已处理申请</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="panel-body">
                <div class="tab-content">
                    <div class="tab-pane active" id="tab-1">
                        <div style="margin:-30px 0px 0px 0px">
                            <div class="ibox float-e-margins">
                                <div class="ibox-content">
                                    <div class="bootstrap-table" >
                                        <table id="showOrgApply"
                                               data-toggle="table"
                                               data-url="showApplyOrg-showList"
                                               data-click-to-select="true"
                                               data-search="true"
                                               data-show-refresh="true"
                                               data-show-toggle="true"
                                               data-show-columns="true"
                                               data-toolbar="#toolbar"
                                               data-query-params="quefryParams"
                                               data-pagination="true"
                                               data-halign="center"
                                               data-striped="true"
                                               data-page-size="6"
                                               data-height="410"
                                               data-page-list="All"
                                        >
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" id="tab-2">
                        <div style="margin:-30px 0px 0px 0px">
                            <div class="ibox float-e-margins">
                                <div class="ibox-content">
                                    <div class="bootstrap-table" >
                                        <table id="showOthersTable"
                                               data-toggle="table"
                                               data-url="showApplyOrg-showOthers"
                                               data-click-to-select="true"
                                               data-search="true"
                                               data-show-refresh="true"
                                               data-show-toggle="true"
                                               data-show-columns="true"
                                               data-toolbar="#toolbar"
                                               data-query-params="quefryParams"
                                               data-pagination="true"
                                               data-halign="center"
                                               data-striped="true"
                                               data-page-size="6"
                                               data-height="410"
                                               data-page-list="All"
                                        >
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<script src="../../js/jquery.min.js?v=2.1.4"></script>
<script src="../../js/bootstrap.min.js?v=3.3.6"></script>
<script src="../../js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script src="../../js/content.min.js?v=1.0.0"></script>
<script src="../../js/plugins/toastr/toastr.min.js"></script>
<script src="../../js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
<script src="../../js/mjy.js"></script>
</body>
<script>
    $('#showOrgApply').bootstrapTable({
            columns: [
                {
                    title: '申请人',
                    field: 'name',
                    align: 'center',
                    valign: 'middle'
                },
                {
                    field: 'org_name',
                    title: '申请机构名',
                    sortable: true,
                    align: 'center'
                },
                {
                    field: 'date',
                    title: '申请时间',
                    align: 'center'
                }, {
                    field: 'message',
                    title: '备注',
                    sortable: true,
                    align: 'center'
                },{
                    field: 'operate',
                    title: '操作',
                    align: 'center',
                    events: "actionEvents",
                    formatter: "operateFormatter"
                }
            ]
        }
    )
    $.ajax(
        {
            type:"GET",
            url:"showApplyOrg-showList",
            dataType:"json",
            success:function(json){
                var orgList = JSON.parse(json.res);
                //showOrgApply为table的id
                $('#showOrgApply').bootstrapTable('load',orgList);
            },
            error:function(){
                alert("错误");
            }
        }
    )
    function operateFormatter(value,row,index) {
        return[
            '<a class="agree" style="padding-left: 10px"><button class="btn btn-info text-center btn-xs " >同意</button></a>',
            '<a class="refuse" style="padding-left: 10px"><button class="btn btn-info text-center btn-xs " >拒绝</button></a>'
        ].join('');
    }
    window.actionEvents = {
        'click .agree': function(e, value, row, index) {
            //同意操作
            var id_org_apply = parseInt(row.id_org_apply);
            $.ajax({
                type: "GET",
                url: "showApplyOrg-agreeOrg",
                data: {id_org_apply:id_org_apply},
                dataType: "json",
                success: function (json) {
                        showtoast("success", "同意成功", "操作成功")
                        var orgList = JSON.parse(json.res);
                        $('#showOrgApply').bootstrapTable('load',orgList);
                        var otherList = JSON.parse(json.res2);
                        $('#showOthersTable').bootstrapTable('load',otherList);
                },
                error: function (result) {
                    showtoast("error", "同意失败", "操作失败")
                }
            })
        },
        'click .refuse' : function(e, value, row, index) {
            //拒绝操作
            var id_org_apply = parseInt(row.id_org_apply);
            $.ajax({
                type: "GET",
                url: "showApplyOrg-refuseOrg",
                data: {id_org_apply:id_org_apply},
                dataType: "json",
                success: function (json) {
                        showtoast("success", "拒绝成功", "操作成功")
                        var orgList = JSON.parse(json.res);
                        $('#showOrgApply').bootstrapTable('load',orgList);
                        var otherList = JSON.parse(json.res2);
                        $('#showOthersTable').bootstrapTable('load',otherList);

                },
                error: function (result) {
                    showtoast("error", "拒绝失败", "拒绝失败")
                }
            })
        }
    };
</script>
<script>
    $('#showOthersTable').bootstrapTable({
            columns: [
                {
                    title: '申请人',
                    field: 'name',
                    align: 'center',
                    valign: 'middle'
                },
                {
                    field: 'org_name',
                    title: '申请机构名',
                    sortable: true,
                    align: 'center'
                },
                {
                    field: 'date',
                    title: '申请时间',
                    align: 'center'
                }, {
                    field: 'state',
                    title: '状态',
                    sortable: true,
                    align: 'center',
                    events: "actionEvents2",
                    formatter: "rename"
                }
            ]
        }
    )
    $.ajax(
        {
            type:"GET",
            url:"showApplyOrg-showOthers",
            dataType:"json",
            success:function(json){
                var orgList = JSON.parse(json.res);
                //showOthersTable为table的id
                $('#showOthersTable').bootstrapTable('load',orgList);
            },
            error:function(){
                alert("错误");
            }
        }
    )
    function rename(value,row,index) {
        var state=parseInt(row.state);
        if(state==1)
            return '已同意';
        else if(state==-1)
            return ['已拒绝',
    '<a class="reAgree" style="padding-left: 10px"><button class="btn btn-info text-center btn-xs " >重新同意</button></a>'].join('');
    }
    window.actionEvents2 = {
        'click .reAgree': function(e, value, row, index) {
            //同意操作
            var id_org_apply = parseInt(row.id_org_apply);
            $.ajax({
                type: "GET",
                url: "showApplyOrg-agreeOrg",
                data: {id_org_apply:id_org_apply},
                dataType: "json",
                success: function (json) {
                    showtoast("success", "同意成功", "操作成功")
                    var orgList = JSON.parse(json.res);
                    $('#showOrgApply').bootstrapTable('load',orgList);
                    var otherList = JSON.parse(json.res2);
                    $('#showOthersTable').bootstrapTable('load',otherList);
                },
                error: function (result) {
                    showtoast("error", "同意失败", "操作失败")
                }
            })
        }
    };
</script>
</html>
