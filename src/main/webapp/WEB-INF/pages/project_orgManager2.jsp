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
    <title>机构项目管理</title>
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
    <link href="<%=basePath%>/css/plugins/toastr/toastr.min.css" rel="stylesheet">
</head>

<body class="gray-bg">
<div id="page-wrapper" class="white-bg dashbard-1">
    <div class=" row wrapper white-bg" id="content-main">
        <ol class="breadcrumb" style="margin-left: 40px">
            <li style="font-size: 15px">
                <strong>
                    <a href="user-jmpHomepage">首页</a> >><a href="Organization-jmpOrgManager1">机构管理</a>>>查看项目
                </strong>
            </li>
        </ol>
    </div>
    <div class="form-group col-md-2">
        <ul class="nav navbar">
            <li>
                <a href="Organization-jmpOrgManager1"><button class="btn-primary btn">成员管理</button></a>
            </li>
            <li>
                <a href="Organization-jmpOrgManager2"><button class="btn-warning btn">查看项目</button></a>
            </li>
        </ul>
    </div>
    <div class="col-md-10" style="padding: 15px 10px 0px 0px;margin-left: -50px">
        <div class="panel">
            <div class="panel-heading">
                <div class="panel-options col-md-4">
                    <ul class="nav nav-tabs">
                        <li class="active">
                            <a href="project_detail.html#tab-1" data-toggle="tab">当前项目</a>
                        </li>
                        <li class="">
                            <a href="project_detail.html#tab-2" data-toggle="tab">历史项目</a>
                        </li>
                    </ul>
                </div>
                <div style="float: right;width: 300px" class="col-md-4">
                    <select id="gender" class="form-control" name="gender">
                        <option name="" disabled  selected="selected" >选择机构</option>
                        <s:iterator value="list">
                            <option id="displayOrg" class="orgName"><s:property value="NAME"/> </option>
                        </s:iterator>
                    </select>
                </div>
            </div>
            <div class="panel-body">
                <div class="tab-content">
                    <div class="tab-pane active" id="tab-1">
                        <div style="margin:-30px 0px 0px 0px">
                            <div class="ibox float-e-margins">
                                <div class="ibox-content">
                                    <div class="bootstrap-table">
                                        <table id="showProject"
                                               data-toggle="table"
                                               data-url="Organization-showAllProject"
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
                                    <div class="bootstrap-table">
                                        <table id="showHistoryProject"
                                               data-toggle="table"
                                               data-url="Organization-showHistoryProject"
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
<script src="<%=basePath%>/js/jquery.min.js?v=2.1.4"></script>
<script src="<%=basePath%>/js/bootstrap.min.js?v=3.3.6"></script>
<script src="<%=basePath%>/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script src="<%=basePath%>/js/content.min.js?v=1.0.0"></script>
<script src="<%=basePath%>/js/plugins/toastr/toastr.min.js"></script>
<script src="<%=basePath%>/js/mjy.js"></script>
<script src="<%=basePath%>/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>

</body>
<script>
    $(document).ready(function(){
        $("option.orgName").click(function () {
                var element = $(this).val();
                console.log(element);
                Ffive(element);
                Ffive2(element);
            }
        );
    });
    $('#showProject').bootstrapTable({
            columns: [
                {
                    title: '项目名',
                    field: 'project_name',
                    align: 'center',
                    sortable: true,
                    valign: 'middle'
                },
                {
                    field: 'intro',
                    title: '简介',
                    sortable: true,
                    align: 'center'
                },
                {
                    field: 'user_name',
                    title: '项目组长',
                    sortable: true,
                    align: 'center'
                },
                {
                    field: 'mail',
                    title: '邮箱',
                    sortable: true,
                    align: 'center'
                }
            ]
        },
        function () {
            var element = $(this).val();
            Ffive(element)
        }
    );
    $('#showHistoryProject').bootstrapTable({
            columns: [
                {
                    title: '项目名',
                    field: 'project_name',
                    align: 'center',
                    valign: 'middle'
                },
                {
                    field: 'intro',
                    title: '简介',
                    align: 'center'
                },
                {
                    field: 'user_name',
                    title: '项目组长',
                    sortable: true,
                    align: 'center'
                },
                {
                    field: 'mail',
                    title: '邮箱',
                    align: 'center'
                }
            ]
        },
        function () {
            var element = $(this).val();
            Ffive2(element)
        }
    );
    function Ffive(element) {
        $.ajax(
            {
                url:"Organization-showAllProject",
                data: {NAME: element},
                dataType:"json",
                type: "Get",
                async: "false",
                success:function(json){
                    var orgProjectList = JSON.parse(json.res);
                    //finishingTask为table的id
                    $('#showProject').bootstrapTable('load',orgProjectList);
                },
                error:function(){
                    alert(" 错误");
                }
            }
        )
    }
    function Ffive2(element) {
        $.ajax(
            {
                url:"Organization-showHistoryProject",
                data: {NAME: element},
                dataType:"json",
                type: "Get",
                async: "false",
                success:function(json){
                    var orgHisProjectList = JSON.parse(json.res);
                    //finishingTask为table的id
                    $('#showHistoryProject').bootstrapTable('load',orgHisProjectList);
                },
                error:function(){
                    alert(" 错误");
                }
            }
        )
    }

</script>
</html>
