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
<div id="wrapper">

    <!--右侧部分开始-->
    <div id="page-wrapper" class="white-bg dashbard-1">
        <div  class="row border-bottom">
            <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header"><a  href="user-jmpTemp"><img src="<%=basePath %>/img/logo.png" style="height: 50px;margin: 10px 0px 5px 50px;"> </a></div>
                <ul class="nav navbar-top-links navbar-right">
                    <a id="yourName" class="dropdown J_tabClose" data-toggle="dropdown">${sessionScope.user.name}<span class="caret"></span>
                    </a>
                    <ul  role="menu" class="dropdown-menu dropdown-menu-right">
                        <li  class="J_tabShowActive"><a id="test1"  class="J_menuItem" href="user-jmpMyprofile">个人中心</a>
                        </li>
                        <li class="divider"></li>
                        <s:if test='#session.sysManager!="0"'>
                            <li class="J_tabShowActive"><a id="test2" class="J_menuItem" href="user-jmpSysManager1">系统管理</a>
                            </li>
                            <li class="divider"></li>
                        </s:if>
                        <s:if test='#session.orgManager!="0"'>
                        <li class="J_tabShowActive"><a id="test3" class="J_menuItem" href="Organization-jmpOrgManager1">机构管理</a>
                        </li>
                        <li class="divider"></li>
                        </s:if>
                        <li class="J_tabCloseAll"><a class="J_menuItem" href="login-jmpLogin">安全退出</a>
                        </li>
                    </ul>

                    <li class="dropdown hidden-xs">
                        <a class="right-sidebar-toggle" aria-expanded="false" href="login-jmpLogin"">
                            <img src="<%=basePath %>/img/exit.png">
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
        <div style="height: 1000px" class="row J_mainContent" id="content-main">
            <iframe class="J_iframe" name="iframe0" width="100%" height="100%" src="user-jmpHomepage" frameborder="0" data-id="" seamless></iframe>
        </div>

    </div>
    <!--右侧部分结束-->
</div>
<script src="<%=basePath %>/js/jquery.min.js?v=2.1.4"></script>
<script src="<%=basePath %>/js/bootstrap.min.js?v=3.3.6"></script>
<script src="<%=basePath %>/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="<%=basePath %>/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="<%=basePath %>/js/plugins/layer/layer.min.js"></script>
<script src="<%=basePath %>/js/hplus.min.js?v=4.1.0"></script>
<script type="text/javascript" src="<%=basePath %>/js/contabs.min.js"></script>
<script src="<%=basePath %>/js/plugins/pace/pace.min.js"></script>
<script src="<%=basePath %>/js/plugins/toastr/toastr.min.js"></script>
<script src="<%=basePath %>/js/mjy.js"></script>

</body>
<script>
    $("#test1").click(function (){
        var oDiv = document.getElementById('yourName');
        oDiv.onclick = function(){
        };
        oDiv.click();
    })
    $("#test2").click(function (){
        var oDiv = document.getElementById('yourName');
        oDiv.onclick = function(){
        };
        oDiv.click();
    })
    $("#test3").click(function (){
        var oDiv = document.getElementById('yourName');
        oDiv.onclick = function(){
        };
        oDiv.click();
    })
</script>
<!-- Mirrored from www.zi-han.net/theme/hplus/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:17:11 GMT -->
</html>
