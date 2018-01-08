<%--
  Created by IntelliJ IDEA.
  User: wwc
  Date: 2017/12/15 0015
  Time: 21:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="entity.UserEntity" %>
<%@ page import="java.util.List" %>
<%@ page import="dao.UserDao" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="entity.OrganizationEntity" %>
<%@ page import="daoImp.UserDaoImp" %>
<%@ page import="daoImp.OrganizationDaoImp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>我的机构</title>

    <meta name="viewport" content="width=devicewidth, initialscale=1.0">
    <meta name="renderer" content="webkit">
    <![if lt IE 9]>
    <meta httpequiv="refresh" content="0;ie.html" />
    <![endif]>

    <link href="<%=basePath %>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=basePath %>/css/bootstrap.min14ed.css" rel="stylesheet">
    <link href="<%=basePath %>/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="<%=basePath %>/css/animate.min.css" rel="stylesheet">
    <link href="<%=basePath %>/css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <link href="<%=basePath %>/css/xzw.css" rel="stylesheet">

</head>

<body class="gray-bg">
<!--右侧部分开始-->
<div id="page-wrapper" style="min-height: 0px" class="white-bg dashbard-1">
    <div class=" row wrapper white-bg" id="content-main">
        <ol class="breadcrumb" style="margin-left: 40px">
            <li style="font-size: 15px">
                <strong>
                    <a href="user-jmpHomepage">首页</a> >><a href="user-jmpMyprofile">个人中心</a> >><a href="#" class="ogz-jmporganization">我的机构</a>
                </strong>
            </li>
        </ol>
    </div>


    <div class="form-group col-md-1">
        <ul class="nav navbar">
            <li>
                <a href="user-jmpMyprofile"><button class="btn-primary btn">个人中心</button></a>
            </li>
            <li>
                <a href="ogz-jmporganization"><button class="btn-warning btn">我的机构</button></a>
            </li>
            <li>
                <a href="info-jmpmyinfomation"><button class="btn-primary btn">消息中心</button></a>
            </li>
        </ul>
    </div>

    <div class="col-md-8">
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
    </div>
    <form class="col-md-3 col-md-offset-8">
            <input class="col-md-5" type="search" name="q" value="" class="form-control" placeholder="搜索成员"><img height="25" width="25" src="/img/搜索.png">
    </form>

    <div class="col-md-2 col-md-offset-7">
        <br/>
    </div>
    <div class="col-md-9 col-md-offset-1 mytable">
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>机构名</th>
                <th>机构管理员</th>
                <th>机构编码</th>
                <th>机构人数</th>
                <th>机构项目数</th>
                <th>操作</th>
            </tr>
            </thead>

            <tbody>
            <s:iterator value="list" >
            <tr>
                <td><s:property value="NAME"/></td>
                <td><s:property value="ID_USER"/></td>
                <td><s:property value="ID_ORGANIZATION"/></td>
                <td><s:property value="ID_USER"/></td>
                <td><s:property value="ID_USER"/> </td>
                <td><a href="" style="color: grey">管理</a>/<a href="" style="color: orangered">退出</a></td>
            </s:iterator>
            </tr>
            </tbody>
        </table>

    </div>

</div>

</body>
</html>