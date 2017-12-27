<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
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

    <link rel="shortcut icon" href="/example/favicon.ico">
    <link href="/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="/css/animate.min.css" rel="stylesheet">
    <link href="/css/style.min862f.css?v=4.1.0" rel="stylesheet">
</head>

<body class="fixed-sidebar full-height-layout gray-bg" style="overflow:hidden">
<div id="wrapper">

    <!--右侧部分开始-->
    <div id="page-wrapper" class="white-bg dashbard-1">
        <div class="row border-bottom">
            <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header"><a  href="user-jmpTemp"><img src="/img/logo.png" style="height: 50px;margin: 10px 0px 5px 50px;"> </a></div>
                <ul class="nav navbar-top-links navbar-right">
                    <a class="dropdown J_tabClose" data-toggle="dropdown">${sessionScope.user.name}<span class="caret"></span>

                    </a>
                    <ul role="menu" class="dropdown-menu dropdown-menu-right">
                        <li class="J_tabShowActive"><a class="J_menuItem" href="user-jmpMyprofile">个人中心</a>
                        </li>
                        <li class="divider"></li>
                        <s:if test='#session.user.status=="1"'>
                            <li class="J_tabShowActive"><a href="user-jmpSysManager1">系统管理</a>
                            </li>
                            <li class="divider"></li>
                        </s:if>
                        <s:if test='#session.orgManager!="0"'>
                        <li class="J_tabShowActive"><a href="user-jmpOrgManager1">机构管理</a>
                        </li>
                        <li class="divider"></li>
                        </s:if>
                        <li class="J_tabCloseAll"><a href="login-jmpLogin">安全退出</a>
                        </li>
                    </ul>

                    <li class="dropdown hidden-xs">
                        <a class="right-sidebar-toggle" aria-expanded="false" href="login-jmpLogin">
                            <img src="/img/exit.png">
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
        <div style="height: 800px" class="row J_mainContent" id="content-main">
            <iframe class="J_iframe" name="iframe0" width="100%" height="100%" src="user-jmpHomepage" frameborder="0" data-id="" seamless></iframe>
        </div>

    </div>
    <!--右侧部分结束-->
</div>
<script src="js/jquery.min.js?v=2.1.4"></script>
<script src="js/bootstrap.min.js?v=3.3.6"></script>
<script src="js/content.min.js?v=1.0.0"></script>
<script src="js/plugins/toastr/toastr.min.js"></script>
<script src="js/mjy.js"></script>
</body>


<!-- Mirrored from www.zi-han.net/theme/hplus/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:17:11 GMT -->
</html>
