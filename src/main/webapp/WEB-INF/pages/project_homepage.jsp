<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2017/12/3
  Time: 20:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>


<!-- Mirrored from www.zi-han.net/theme/hplus/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:16:41 GMT -->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <title>主页</title>
    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->

    <link rel="shortcut icon" href="<%=basePath %>/example/favicon.ico">
    <link href="<%=basePath %>/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="<%=basePath %>/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="<%=basePath %>/css/animate.min.css" rel="stylesheet">
    <link href="<%=basePath %>/css/style.min862f.css?v=4.1.0" rel="stylesheet">
</head>

<body class="fixed-sidebar full-height-layout gray-bg" style="overflow:hidden">
<div class="animated fadeInDown">
    <div class="col-md-9 form-group" style="margin-top: 20px">
        <div class="col-md-2 col-md-offset-4">
            <a href="user-jmpCurrentProjectList"><img src="<%=basePath %>/img/Home1.png" height="160px"><br/></a>
            <span style="color:#365063 ">当前项目</span><br/>
            <span style="color:black">目前有</span>
            <span style="color: #ff0000"> <s:property value="#session.countnow"/></span>
            <span style="color:black">个项目</span>
        </div>
        <div class="col-md-2">
            <a href="user-jmpCompletedProjectList"><img src="<%=basePath %>/img/Home2.jpg" height="160px"><br/></a>
            <span style="color:#365063 ">历史项目</span><br/>
            <span style="color:black">完成了</span>
            <span style="color: #ff0000"><%=session.getAttribute("counthistory") %></span>
            <span style="color:black">个项目</span>
        </div>
        <div class="col-md-2 ">
            <a href="library-get"><img src="<%=basePath %>/img/Home3.jpg" height="160px"></a><br/>
            <span style="color:#365063 ">共享知识</span><br/>
            <span style="color:black">收藏了</span>
            <a href="library-Mycollect"><span style="color: #ff0000" class="lzf_a">${sessionScope.Mycollectcount}</span></a>
            <span style="color:black">个构件库</span>
        </div>
        <div class="col-md-2 ">
            <a href="personalcenter-jmpMyprofile"><img src="<%=basePath %>/img/Home4.jpg" height="160px"><br/></a>
            <span style="color:#365063 ">个人中心</span><br/>
            <span style="color:black">收到了</span>
            <span style="color: #ff0000">0</span>
            <span style="color:black">条邀请</span>
        </div>
    </div>
    <div class="col-md-9 form-group" style="margin-top:80px">
        <span class="col-md-6 col-md-offset-4" style="font-size:15px">创建一个项目成为组长，或者接受别人的项目邀请成为组员就可以参与项目需求文档的编写啦！</span>
        <a href="user-jmpNewproject"><img class="col-md-offset-1" src="<%=basePath %>/img/u7.png"></a>
    </div>
</div>

<script src="<%=basePath %>/js/jquery.min.js?v=2.1.4"></script>
<script src="<%=basePath %>/js/bootstrap.min.js?v=3.3.6"></script>
<script src="<%=basePath %>/js/content.min.js?v=1.0.0"></script>
<script src="<%=basePath %>/js/plugins/toastr/toastr.min.js"></script>
<script src="<%=basePath %>/js/mjy.js"></script>
</body>
<script>
    $(document).ready(function () {
//        alert($(document).height())
        $(window.parent.document).find("div#content-main").height($(window).height())
    })
</script>

<!-- Mirrored from www.zi-han.net/theme/hplus/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:17:11 GMT -->
</html>
