<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: zhiweixu
  Date: 17/12/2017
  Time: 19:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>历史项目</title>
    <link rel="shortcut icon" href="../example/favicon.ico"> <link href="../css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="../../css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <!-- bootstrap-table -->
    <link href="../../css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="../../css/animate.min.css" rel="stylesheet">
    <link href="../../css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <link href="../../css/z_style.css" rel="stylesheet">

</head>

<body class="gray-bg animated fadeInDown">
<div id="page-wrapper" class="gray-bg dashbard-1">
    <div class=" row wrapper white-bg">
        <ol class="breadcrumb" style="margin-left: 40px">
            <li style="font-size: 15px">
                <strong>
                    <a href="user-jmpHomepage"><span class="lzf_b">首页</span></a> >><a href="user-jmpCompletedProjectList"><span class="lzf_b">历史项目</span></a>
                </strong>
            </li>
        </ol>
    </div>
    <div class="ibox-content">
        <div class="bootstrap-table">
            <table id="finishingTask" data-toggle="table"
                   data-classes="table table-no-bordered"
                   data-click-to-select="true"
                   data-search="true"
                   data-show-refresh="true"
                   data-show-toggle="true"
                   data-show-columns="true"
                   data-toolbar="#toolbar"
                   data-query-params="quefryParams"
                   data-search-align="left"
                   data-buttons-align="left"
                   data-pagination="true"
                   data-halign="center"
                   data-striped="true"
                   data-page-size="5"
                   data-height="600"
            >
            </table>
        </div>
    </div>
</div>
</body>
<script src="../../js/jquery.min.js?v=2.1.4"></script>
<script src="../../js/bootstrap.min.js?v=3.3.6"></script>
<script src="../../js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
<script>
    $('#finishingTask').bootstrapTable({
            columns: [
                {
                    title: '项目ID',
                    field: 'id_Project',
                    align: 'center',
                    valign: 'middle'
                },
                {
                    field: 'name',
                    title: '项目名称',
                    sortable: true,
                    align: 'center'
                }, {
                    field: 'date',
                    title: '创建日期',
                    sortable: true,
                    align: 'center'
                },
                {
                    field: 'document_Name',
                    title: '文档名称',
                    align: 'center'
                }, {
                    field: 'release_date',
                    title: '发布日期',
                    sortable: true,
                    align: 'center'
                }, {
                    field: 'id_Organization',
                    title: '所属机构',
                    sortable: true,
                    align: 'center'
                },{
                    field: 'operate',
                    title: '操作',
                    align: 'center',
                    formatter: AddFunctionAlty
                }
            ]
        }
    );
    function AddFunctionAlty(value,row,index) {
        return[
            '<a href="project-jmp"><button id="discuss" class="btn btn-success text-center btn-xs">讨论区<sup>&nbsp;●</sup></button></a>',
            '<a href="project-jmpFinishedProjectInfo" style="padding-left: 20px"><button href="user-jmpHomepage" class="btn btn-info text-center btn-xs " >查看项目</button></a>'
        ].join('');
    }
    $.ajax(
        {
            type:"GET",
            url:"project-showCompletedList",
            dataType:"json",
            success:function(json){
                var proList = JSON.parse(json.res);
                //finishingTask为table的id
                $('#finishingTask').bootstrapTable('load',proList);
            },
            error:function(){
                alert("错误");
            }
        }
    )
</script>

</html>
