<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2017/12/3
  Time: 20:15
  To change this template use File | Settings | File Templates.
--%>
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

    <link rel="shortcut icon" href="example/favicon.ico">
    <link href="css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/style.min862f.css?v=4.1.0" rel="stylesheet">
</head>
<body class="fixed-sidebar full-height-layout gray-bg" style="overflow:hidden">
<div id="wrapper">
    <div id="page-wrapper" class="white-bg dashbard-1">
        <div class="row border-bottom">
            <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header"><a  href="#"><img src="img/logo.png" style="height: 50px;margin: 10px 0px 5px 50px;"> </a>
                </div>

                <ul class="nav navbar-top-links navbar-right">
                    <a class="dropdown J_tabClose" data-toggle="dropdown">${sessionScope.username}<span class="caret"></span>

                    </a>
                    <ul role="menu" class="dropdown-menu dropdown-menu-right">
                        <li class="J_tabShowActive"><a>修改个人信息</a>
                        </li>
                        <li class="divider"></li>
                        <li class="J_tabShowActive"><a>系统管理</a>
                        </li>
                        <li class="divider"></li>
                        <li class="J_tabShowActive"><a>机构管理</a>
                        </li>
                        <li class="divider"></li>
                        <li class="J_tabCloseAll"><a href="example/login.html">安全退出</a>
                        </li>
                    </ul>

                    <li class="dropdown hidden-xs">
                        <a class="right-sidebar-toggle" aria-expanded="false" href="example/login.html">
                            <img src="img/退出.png">
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="row J_mainContent" id="content-main">
            <iframe class="J_iframe" name="iframe0" width="100%" height="100%" src="" frameborder="0" data-id="" seamless></iframe>
        </div>
    </div>
</div>
<script src="js/jquery.min.js?v=2.1.4"></script>
<script src="js/bootstrap.min.js?v=3.3.6"></script>
<script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="js/plugins/layer/layer.min.js"></script>
<script src="js/hplus.min.js?v=4.1.0"></script>
<script type="text/javascript" src="js/contabs.min.js"></script>
<script src="js/plugins/pace/pace.min.js"></script>
</body>


<!-- Mirrored from www.zi-han.net/theme/hplus/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:17:11 GMT -->
</html>
