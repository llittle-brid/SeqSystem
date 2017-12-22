<%--
  Created by IntelliJ IDEA.
  User: zhiweixu
  Date: 17/12/2017
  Time: 19:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>当前项目</title>
    <link rel="shortcut icon" href="../example/favicon.ico">
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
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
                    <a href="user-jmpHomepage"><span class="lzf_b">首页</span></a> >><a href="user-jmpCurrentProjectList"><span class="lzf_b">当前项目</span></a>
                </strong>
            </li>
        </ol>
    </div>

    <div class="ibox-content">
            <div class="bootstrap-table">
                <table id="finishingTask"
                       data-toggle="table"
                       data-url="project-showList"
                       data-click-to-select="true"
                       data-search="true"
                       data-show-refresh="true"
                       data-show-toggle="true"
                       data-show-columns="true"
                       data-toolbar="#toolbar"
                       data-query-params="queryParams"
                       data-pagination="true"
                       data-halign="center"
                       data-striped="true"
                       data-page-size="5"
                >
                    <thead>
                    <tr>
                        <th data-field="id_Project">项目ID</th>
                        <th data-field="name">项目名称</th>
                        <th data-field="date">创建日期</th>
                        <th data-field="document_Name">文档名称</th>
                        <th data-field="Version">当前版本</th>
                        <th data-field="id_Organization">所属机构</th>
                        <th data-field="intro">简介</th>
                        <th>操作</th>
                    </tr>
                    </thead>
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
    $.ajax(
        {
            type:"GET",
            url:"project-showList",
            dataType:"json",
            success:function(json){
                var proList = JSON.parse(json.res);
//                var data = JSON.parse('{"value": ' + proList + ', "defaults": "10000000000"}');
                //finishingTask为table的id
                $('#finishingTask').bootstrapTable('load',proList);
            },
            error:function(){
                alert("错误");
            }
        }
    )
</script>

<!-- Mirrored from www.zi-han.net/theme/hplus/404.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:52 GMT -->
</html>
