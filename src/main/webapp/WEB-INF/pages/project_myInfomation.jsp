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
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>我的消息</title>

    <meta name="viewport" content="width=devicewidth, initialscale=1.0">
    <meta name="renderer" content="webkit">
    <![if lt IE 9]>
    <meta httpequiv="refresh" content="0;ie.html" />
    <![endif]>
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/bootstrap.min14ed.css" rel="stylesheet">
    <link href="../css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="../css/animate.min.css" rel="stylesheet">
    <link href="../css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <link href="../css/xzw.css" rel="stylesheet">
</head>

<body class="gray-bg">
<!--右侧部分开始-->
<div id="page-wrapper" class="white-bg dashbard-1">
    <div class=" row wrapper white-bg">
        <ol class="breadcrumb" style="margin-left: 40px">
            <li style="font-size: 15px">
                <strong>
                    <a href="user-jmpHomepage">首页</a> >><a href="user-jmpMyprofile">个人中心</a> >><a href="" class="info-jmpmyinfomation">消息中心</a>
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
                <a href="ogz-jmporganization"><button class="btn-primary btn">我的机构</button></a>
            </li>
            <li>
                <a href="info-jmpmyinfomation"><button class="btn-warning btn">消息中心</button></a>
            </li>
        </ul>
    </div>

    <div class="col-md-8">
        <br/>
    </div>
    <div class="col-md-4 col-md-offset-1 btn-group-sm">
        <button class="btn-danger btn">删除</button>
        <button class="btn-default btn">标记为</button>
    </div>

    <div class="col-md-8">
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
    </div>

    <div class="col-md-8 col-md-offset-2"></div>

    <div class="col-md-8 col-md-offset-1 mytable">
        <table class="table table-bordered table-responsive">
            <thead>
            <tr>
                <th>邮件概述</th>
                <th>发件时间</th>
                <th>主题</th>
                <th>状态</th>
            </tr>
            </thead>

            <tbody class="table-striped">
            <tr>
                <td>系统通知</td>
                <td>2017-10-20</td>
                <td>你创建了【快易需求】机构</td>
                <td>未读</td>
            </tr>
            <tr>
                <td>系统通知</td>
                <td>2017-10-20</td>
                <td>你创建了【快易需求】机构</td>
                <td>未读</td>
            </tr>
            <tr>
                <td>系统通知</td>
                <td>2017-10-20</td>
                <td>你创建了【快易需求】机构</td>
                <td>未读</td>
            </tr>
            <tr>
                <td>系统通知</td>
                <td>2017-10-20</td>
                <td>你创建了【快易需求】机构</td>
                <td>未读</td>
            </tr>
            </tbody>
        </table>

    </div>

    <div class="btn-group col-md-2 col-md-offset-5">
        <button type="button" class="btn btn-link"><i class="fa fa-chevron-left"></i></button>
        <button class="btn btn-link active">1</button>
        <button class="btn btn-link">2</button>
        <button type="button" class="btn btn-link"><i class="fa fa-chevron-right"></i>
        </button>
    </div>
</div>
</body>
</html>
