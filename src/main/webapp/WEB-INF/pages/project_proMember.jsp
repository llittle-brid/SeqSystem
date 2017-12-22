<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: zhiweixu
  Date: 11/12/2017
  Time: 21:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- Mirrored from www.zi-han.net/theme/hplus/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:16:41 GMT -->
<head>
    <meta charset="UTF8">
    <title>创建项目</title>
    <meta name="viewport" content="width=devicewidth, initialscale=1.0">
    <meta name="renderer" content="webkit">
    <meta httpequiv="refresh" content="0;ie.html" />
    <link href="../../css/bootstrap.min14ed.css" rel="stylesheet">
    <!-- bootstrap-table -->
    <link href="../../css/plugins/bootstrap-table/bootstrap-table.min.css">
    <link href="../../css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="../../css/animate.min.css" rel="stylesheet">
    <link href="../../css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <link href="../../css/xzw.css" rel="stylesheet">
    <link href="../../css/plugins/toastr/toastr.min.css" rel="stylesheet">
    <!-- Sweet Alert -->
    <link href="../../css/plugins/sweetalert/sweetalert.css" rel="stylesheet">
</head>

<body class="gray-bg animated fadeInDown">
<div class="animated fadeInDown">
    <div class=" row wrapper white-bg">
        <ol class="breadcrumb" style="margin-left: 40px">
            <li style="font-size: 15px">
                <strong>
                    <a href="user-jmpHomepage"><span class="lzf_b">首页</span></a> >><a href="user-jmpCurrentProjectList"><span class="lzf_b">当前项目</span></a>
                    >><a href="project-jmpProjectInfo"><span class="lzf_b">项目信息</span></a>
                    >><a href="project-jmpProjectMember"><span class="lzf_b">项目成员</span></a>
                </strong>
            </li>
        </ol>
    </div>

    <div id="page-wrapper" class="dashbard-1">

        <div>
            <div class="form-group col-sm-1" style="margin-left: 30px; margin-top: 100px">
                <button type="button" class="btn btn-w-m btn-success">成员邀请</button>
                <button type="button" class="btn btn-w-m btn-success" style="margin-top: 30px">组长转移</button>
                <button type="button" class="btn btn-w-m btn-success" style="margin-top: 30px">任命副组长</button>
            </div>

            <div class="form-group col-sm-10">
                <label class="col-md-offset-1 col-sm-10 control-label zFont2"style="margin-top: 50px">组员管理</label>
                <label class="col-md-offset-1 col-sm-10 control-label zFont2"style="margin-top: 15px">当前组员</label>
                <div class="col-md-offset-1 col-md-6">
                    <div class="fixed-table-header" style="margin-right: 0px;">
                        <table class="table table-hover" style="width: 664px;">
                            <thead>
                            <tr>
                                <th style="" data-field="Tid" tabindex="0">
                                    <div class="th-inner ">姓名</div>
                                    <div class="fht-cell" style="width: 100px;">

                                    </div>
                                </th>
                                <th style="" data-field="First" tabindex="0">
                                    <div class="th-inner ">角色</div>
                                    <div class="fht-cell" style="width: 274px;">

                                    </div>
                                </th>
                                <th style="" data-field="sex" tabindex="0">
                                    <div class="th-inner ">邮箱</div>
                                    <div class="fht-cell" style="width: 143px;"></div>
                                </th>
                                <th style="" data-field="Score" tabindex="0">
                                    <div class="th-inner ">电话</div>
                                    <div class="fht-cell" style="width: 144px;"></div>
                                </th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr data-index="0">
                                <td>奔波儿灞</td>
                                <td>组长</td>
                                <td>2333@gmail.com</td>
                                <td>4008118118</td>
                                <td>
                                    <button type="button" onclick="warning()" class="btn btn-xs btn-danger">移除</button>
                                </td>
                            </tr>
                            <tr data-index="0">
                                <td>奔波儿灞</td>
                                <td>组长</td>
                                <td>2333@gmail.com</td>
                                <td>4008118118</td>
                                <td>
                                    <button type="button" onclick="warning()" class="btn btn-xs btn-danger">移除</button>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="col-md-offset-1 col-md-6">
                    <label class="col-sm-10 control-label zFont2"style="margin-top: 15px">发出的邀请</label>
                    <div class="bootstrap-table">
                        <div class="fixed-table-container" style="height: 250px; padding-bottom: 36px;">

                            <div class="fixed-table-body">
                                <%--<div class="fixed-table-loading" style="top: 37px; display: none;">正在努力地加载数据中，请稍候……</div>--%>
                                <%--<table data-toggle="table" data-url="js/demo/table_base.json" data-height="250" data-mobile-responsive="true" class="table table-hover" style="margin-top: -36px;">--%>
                                    <%--<thead>--%>
                                    <%--<tr>--%>
                                        <%--<th style="" data-field="Tid" tabindex="0">--%>
                                            <%--<div class="th-inner ">姓名</div>--%>
                                            <%--<div class="fht-cell" style="width: 100px;">--%>

                                            <%--</div>--%>
                                        <%--</th>--%>
                                        <%--<th style="" data-field="First" tabindex="0">--%>
                                            <%--<div class="th-inner ">申请时间</div>--%>
                                            <%--<div class="fht-cell" style="width: 274px;">--%>

                                            <%--</div>--%>
                                        <%--</th>--%>
                                        <%--<th style="" data-field="sex" tabindex="0">--%>
                                            <%--<div class="th-inner ">状态</div>--%>
                                            <%--<div class="fht-cell" style="width: 143px;"></div>--%>
                                        <%--</th>--%>
                                        <%--<th style="" data-field="Score" tabindex="0">--%>
                                            <%--<div class="th-inner ">备注</div>--%>
                                            <%--<div class="fht-cell" style="width: 144px;"></div>--%>
                                        <%--</th>--%>
                                    <%--</tr>--%>
                                    <%--</thead>--%>
                                    <%--<tbody>--%>
                                    <%--<tr data-index="0">--%>
                                        <%--<td>奔波儿灞</td>--%>
                                        <%--<td>2017-10-10</td>--%>
                                        <%--<td>未读</td>--%>
                                        <%--<td>无</td>--%>
                                        <%--<td>--%>
                                            <%--<button type="button" id="resend_button" class="btn btn-xs btn-info">重发</button>--%>
                                        <%--</td>--%>
                                    <%--</tr>--%>
                                    <%--</tbody>--%>
                                <%--</table>--%>
                                <table id="table"
                                       data-toggle="table"
                                       data-toolbar="#toolbar"
                                       data-height="460"
                                       data-url="">
                                    <thead>
                                    <tr>
                                        <th data-field="id">ID</th>
                                        <th data-field="name">Item Name</th>
                                        <th data-field="price">Item Price</th>
                                    </tr>
                                    </thead>
                                </table>
                            </div>
                            <div class="fixed-table-footer" style="display: none;">
                                <table>
                                    <tbody>
                                    <tr>

                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="fixed-table-pagination" style="display: none;">

                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <div class="col-sm-6">

                <div class="example">

                    <div class="clearfix">

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--右侧部分结束-->
</div>
</body>

<script src="../../js/jquery.min.js?v=2.1.4"></script>
<script src="../../js/bootstrap.min.js?v=3.3.6"></script>
<script src="../../js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="../../js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="../../js/plugins/layer/layer.min.js"></script>
<script src="../../js/hplus.min.js?v=4.1.0"></script>
<script type="text/javascript" src="../../js/contabs.min.js"></script>
<script src="../../js/plugins/pace/pace.min.js"></script>
<script src="../../js/plugins/toastr/toastr.min.js"></script>
<script src="../../js/plugins/sweetalert/sweetalert.min.js"></script>
<script src="../../js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
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
    function freeze() {
        var teacherId = $("input.hiddenFormId").val();
        $.ajax({
            url: "teacher-freeze",
            data: {teacherId: teacherId},
            dataType: "json",
            type: "Post",
            async: "false",
            success: function (result) {
                showtoast("success", "删除老师成功", "操作成功")
                $("button#search_button").click();

            },
            error: function (result) {
                showtoast("error", "删除老师失败", "操作失败")
            }
        })
    }


    function warning() {
        swal(
            {
                title: "您确定要移除这95名成员吗",
                text: "请谨慎操作！",
                type: "warning", showCancelButton: true,
                confirmButtonColor: "red",
                confirmButtonText: "移除",
                cancelButtonText: "取消",
                closeOnConfirm: true
            }
//            freeze
        )
    }
    $('#table').bootstrapTable('togglePagination');
</script>

</html>
