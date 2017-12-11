<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>创建项目</title>
    <meta name="viewport" content="width=devicewidth, initialscale=1.0">
    <meta name="renderer" content="webkit">
    <meta httpequiv="refresh" content="0;ie.html" />
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/bootstrap.min14ed.css" rel="stylesheet">
    <link href="../../css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="../../css/animate.min.css" rel="stylesheet">
    <link href="../../css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <link href="../../css/xzw.css" rel="stylesheet">

    <link href="../../css/plugins/toastr/toastr.min.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->
    <script>if(window.top !== window.self){ window.top.location = window.location;}</script>
</head>
<body class="gray-bg">

<div id="page-wrapper" class="white-bg dashbard-1">
    <div class="row border-bottom">
        <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header"><a  href="../../html/project_homepage.html"><img src="../../img/logo.png" style="height: 50px;margin: 10px 0px 5px 50px;"> </a>
            </div>

            <ul class="nav navbar-top-links navbar-right">
                <a class="dropdown J_tabClose" data-toggle="dropdown">王二狗<span class="caret"></span>

                </a>
                <ul role="menu" class="dropdown-menu dropdown-menu-right">
                    <li class="J_tabShowActive"><a>修改个人信息</a>
                    </li>
                    <li class="divider"></li>
                    <li class="J_tabShowActive"><a>系统管理</a>
                    </li>
                    <li class="divider"></li>
                    <li class="J_tabShowActive"><a href="../../html/project_myOrganization.html">机构管理</a>
                    </li>
                    <li class="divider"></li>
                    <li class="J_tabCloseAll"><a href="../../html/project_homepage.html">安全退出</a>
                    </li>
                </ul>

                <li class="dropdown hidden-xs">
                    <a class="right-sidebar-toggle" aria-expanded="false" href="jmpLogin">
                        <img src="../../img/退出.png">
                    </a>
                </li>
            </ul>
        </nav>
    </div>
    <div class=" row J_mainContent white-bg" id="content-main">
        <ol class="breadcrumb" style="margin-left: 50px">
            <li style="font-size: 15px">
                <strong>
                    <a href="../../html/project_homepage.html">首页</a> >><a href="project_newproject.jsp">创建项目</a>
                </strong>
            </li>
        </ol>
    </div>
</div>

<div class="col-xs-12">
    <br/>
    <br/>
</div>

<div class="form-horizontal col-md-offset-3 ">
    <div class="form-group">

        <label class="control-label col-sm-3"><button class="btn-circle btn-default"><img src="../../img/u11.png" style="height: 18px;width: 20px"></button>　项目名称：</label>
        <div class="col-sm-4">
            <input type="text"  id="proName" class="form-control my_input1 " placeholder="请输入项目名称">
            <div class="help-block help-block-error "></div>
        </div>
    </div>

    <div class="form-group">
        <br/>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-3"><button class="btn-circle btn-default"><img src="../../img/u12.png" style="height: 18px;width: 20px"></button>　文档名称：</label>
        <div class="col-sm-4">
            <input type="text"  id="docName" class="form-control my_input1" placeholder="请输入文档名称">
            <div class="help-block help-block-error "></div>
        </div>
    </div>

    <div class="form-group">
        <br/>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-3"><button class="btn-circle btn-default"><img src="../../img/u13.png" style="height: 18px;width: 20px"></button>　机构名称：</label>
        <div class="col-sm-4" style="display: table">
            <input type="text" id="orgName" class="form-control my_input1" autocomplete="off" placeholder="请输入机构名称">
            <div class="input-group-btn">
                <button type="button" class="btn btn-white dropdown-toggle" data-toggle="">
                    <span class="caret"></span>
                </button>
                <ul class="dropdown-menu dropdown-menu-right" role="menu" style="padding-top: 0px; max-height: 375px; max-width: 800px; overflow: auto; width: auto; transition: 0.5s; min-width: 400px; left: -367px; right: auto;">
                </ul>
            </div>
            <!-- /btn-group -->
        </div>
    </div>

    <div class="form-group">
        <br/>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-3"><button class="btn-circle btn-default"><img src="../../img/u14.png" style="height: 18px;width: 20px"></button>　项目简介：</label>
        <div class="col-sm-4">
            <textarea type="text"  id="intro" class="form-control" placeholder="输入项目的基本介绍" rows="6"></textarea>
            <div class="help-block help-block-error "></div>
        </div>
    </div>

    <div class="form-group">
        <br/>
    </div>

    <div class="col-xs-10 col-xs-offset-1">
        <label id="mylabel" style="font-size: 13px;margin-left: 50px">请确认项目的相关信息，组员后续可以继续添加信息，若信息无误请点击确认创建按钮</label>
    </div>


    <div class="col-md-12">
        <br/><br/><br/>
    </div>

    <div class="col-md-5 col-xs-offset-2">
        <span class="col-md-2 col-xs-offset-2">
            <button id="create_button" class="btn-danger btn">确认创建</button>
        </span>
        <span class="col-md-2 col-xs-offset-2">
            <button class="btn-default btn">取消创建</button>
        </span>
    </div>
</div>

</body>

<script src="../../js/jquery.min.js?v=2.1.4"></script>
<script src="../../js/bootstrap.min.js?v=3.3.6"></script>
<script src="../../js/content.min.js?v=1.0.0"></script>
<script src="../../js/plugins/toastr/toastr.min.js"></script>
<script src="../../js/mjy.js"></script>
<script>
    function showtoast(type, title, msg) {
        var $showDuration = "3000";
        var $hideDuration = "1000";
        var $timeOut = "5000";
        var $extendedTimeOut = "1000";
        var $showEasing = "swing";
        var $hideEasing = "linear";
        var $showMethod = "fadeIn";
        var $hideMethod = "fadeOut";
        toastr.options = {
            closeButton: true,
            debug: false,
            progressBar: true,
            positionClass: "toast-top-right",
            onclick: null
        };
        if ($showDuration) {
            toastr.options.showDuration = $showDuration
        }
        if ($hideDuration) {
            toastr.options.hideDuration = $hideDuration
        }
        if ($timeOut) {
            toastr.options.timeOut = $timeOut
        }
        if ($extendedTimeOut) {
            toastr.options.extendedTimeOut = $extendedTimeOut
        }
        if ($showEasing) {
            toastr.options.showEasing = $showEasing
        }
        if ($hideEasing) {
            toastr.options.hideEasing = $hideEasing
        }
        if ($showMethod) {
            toastr.options.showMethod = $showMethod
        }
        if ($hideMethod) {
            toastr.options.hideMethod = $hideMethod
        }
        if (!msg) {
            msg = getMessage()
        }
        var $toast = toastr[type](msg, title);
    }


    $("button#create_button").click(function () {
        $.ajax({
            url: "project-create",
            data: {ProName: $("input#proName").val(), DocName: $("input#docName").val(), OrgName: $("input#orgName").val(), Intro: $("textarea#intro").val()},
            dataType: "json",
            type: "Post",
            async: "false",
            success: function (result) {
                if(result.res===true)  {
                    showtoast("success", "创建成功", "操作成功")
                    location.href = "project-create"
                }
                else  showtoast("error", "创建失败", "操作失败")
            },
            error: function (result) {
                showtoast("error", "创建失败", "操作失败")
            }
        })
    })
</script>

</html>