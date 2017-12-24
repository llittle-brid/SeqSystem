<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <title>个人中心</title>
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
    <div style="margin:16px 0px 0px -60px" class="col-md-10">
        <div class="ibox-title">
            <h5>待处理申请</h5>
        </div>
        <div class="ibox float-e-margins">
            <div class="ibox-content">
                <div class="bootstrap-table">
                    <table id="finishingTask"
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
                           data-page-size="10"
                           data-height="600"
                           data-page-list="All"
                    >
                    </table>
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
<script src="../../js/mjy.js"></script>
</body>
<script>
    $('#finishingTask').bootstrapTable({
            columns: [
                {
                    title: '申请人',
                    field: 'name',
                    align: 'center',
                    valign: 'middle'
                },
                {
                    field: 'tel',
                    title: '联系方式',
                    sortable: true,
                    align: 'center'
                }, {
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
                //finishingTask为table的id
                $('#finishingTask').bootstrapTable('load',orgList);
            },
            error:function(){
                alert("错误");
            }
        }
    )
</script>
</html>
