<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <title>已有机构</title>
    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->

    <link rel="shortcut icon" href="<%=basePath%>/example/favicon.ico">
    <link href="<%=basePath%>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=basePath%>/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="<%=basePath%>/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="<%=basePath%>/css/animate.min.css" rel="stylesheet">
    <link href="<%=basePath%>/css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <link href="<%=basePath%>/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="<%=basePath%>/css/z_style.css" rel="stylesheet">
</head>

<body class="gray-bg">
<div id="page-wrapper" class="white-bg dashbard-1">
    <div class=" row wrapper white-bg" id="content-main">
        <ol class="breadcrumb" style="margin-left: 40px">
            <li style="font-size: 15px">
                <strong>
                    <a href="user-jmpHomepage">首页</a> >><a href="user-jmpSysManager1">系统管理</a>>>已有机构
                </strong>
            </li>
        </ol>
    </div>


    <div class="form-group col-md-2">
        <ul class="nav">
            <li>
                <a href="user-jmpSysManager1"><button class="btn-primary btn">机构申请</button></a>
            </li>
            <li>
                <a href="user-jmpSysManager2"><button class="btn-warning btn">已有机构</button></a>
            </li>
        </ul>
    </div>
    <div style="margin:16px 0px 0px -60px" class="col-md-10">
        <div class="ibox-title">
            <h5>当前机构</h5>
        </div>
        <div class="ibox float-e-margins">
            <div class="ibox-content">
                <div class="bootstrap-table">
                    <table id="finishingTask"
                           data-toggle="table"
                           data-url="showExitOrg-showList"
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
<script src="<%=basePath%>/js/jquery.min.js?v=2.1.4"></script>
<script src="<%=basePath%>/js/bootstrap.min.js?v=3.3.6"></script>
<script src="<%=basePath%>/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script src="<%=basePath%>/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
<script src="<%=basePath%>/js/content.min.js?v=1.0.0"></script>
<script src="<%=basePath%>/js/plugins/toastr/toastr.min.js"></script>
<script src="<%=basePath%>/js/mjy.js"></script>
</body>
<script>
    $('#finishingTask').bootstrapTable({
            columns: [
                {
                    title: '机构名',
                    field: 'name',
                    align: 'center',
                    sortable: true,
                    valign: 'middle'
                },
                {
                    field: 'user_name',
                    title: '机构管理员',
                    sortable: true,
                    align: 'center'
                }, {
                    field: 'id_organization',
                    title: '机构编码',
                    sortable: true,
                    align: 'center'
                },{
                    field: 'time',
                    title: '成立时间',
                    sortable: true,
                    align: 'center'
                },
                {
                    field: 'num_user',
                    title: '机构人数',
                    sortable: true,
                    align: 'center',
                }, {
                    field: 'num_project',
                    title: '项目数',
                    sortable: true,
                    align: 'center'
                }
            ]
        }
    )
    $.ajax(
        {
            type:"GET",
            url:"showExitOrg-showList",
            dataType:"json",
            success:function(json){
                var exitOrgList = JSON.parse(json.res);
                //finishingTask为table的id
                $('#finishingTask').bootstrapTable('load',exitOrgList);
            },
            error:function(){
                alert("错误");
            }
        }
    )
</script>
</html>
