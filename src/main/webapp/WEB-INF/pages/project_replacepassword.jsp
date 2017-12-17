<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>


<!-- Mirrored from www.zi-han.net/theme/hplus/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:18:23 GMT -->
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%Integer a=(Integer)request.getAttribute("backMes");
        if(a==null){
    %>
    <title>修改密码</title>
    <%} %>


    <link rel="shortcut icon" href="/example/favicon.ico"> <link href="/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">

    <link href="/css/animate.min.css" rel="stylesheet">
    <link href="/css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <link href="/css/z_style.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->
    <script>if(window.top !== window.self){ window.top.location = window.location;}</script>
</head>

<body class="gray-bg loginBackground" >
<div class="middle-box text-center loginscreen  animated fadeInDown ">
    <div class="loginForm">
        <div class="text-center loginLogo" >
        </div>
            <div class="form-group col-sm-8 col-md-offset-2 loginLine">
                <input name="name" type="text" id="name" class="form-control loginLine" style="font-size:13px" placeholder="请输入帐号" required="">
            </div>
            <div class="form-group col-sm-8 col-md-offset-2 loginLine">
                <input name="password1" type="password" id="password1" class="form-control loginLine" style="font-size:13px" placeholder="请输入原密码" required="">
            </div>
            <div class="form-group col-sm-8 col-md-offset-2 loginLine">
                <input name="password2" type="password" id="password2" class="form-control loginLine" style="font-size:13px" placeholder="重置一个新密码" required="">
            </div>
            <div class="form-group col-sm-8 col-md-offset-2 loginLine">
                <input name="password3" type="password" id="password3" class="form-control loginLine" style="font-size:13px" placeholder="再次输入这个密码" required="">
            </div>
            <div class="form-group ">
                <button  id="replacepassword_button" class="btn btn-w-m btn-Bblack btn-sm">修改密码</button>
            </div>
            <div class="form-group col-md-offset-3">
                <table>
                    <tr>
                        <td>
                            <button id="registration_button" class="btn btn-w-m btn-Bblack btn-sm">注 册</button>
                            <a href="login-jmpLogin"><small>已有账号？点我登录</small></a>
                        </td>
                    </tr>
                </table>
            </div>
    </div>

</div>
<script src="js/jquery.min.js?v=2.1.4"></script>
<script src="js/bootstrap.min.js?v=3.3.6"></script>
<script src="js/content.min.js?v=1.0.0"></script>
<script src="js/plugins/toastr/toastr.min.js"></script>
<script src="js/mjy.js"></script>
</body>

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


    $("button#replacepassword_button").click(function () {
        $.ajax({
            url: "login-replacepassword",
            data: {name: $("input#name").val(),password: $("input#password1").val(),tempPassword: $("input#password2").val(),newPassword:$("input#password3").val()},
            dataType: "json",
            type: "Post",
            async: "false",
            success: function (result) {
                if(result.res===true)  {
//                    showtoast("success", "修改成功", "操作成功")
                    location.href = "login-jmpLogin";
                }
                else  showtoast("error", "修改失败", "注册失败")
                location.href = "user-jmpLogin";
            },
            error: function (result) {
                showtoast("error", "修改失败", "注册失败")
                location.href = "login-jmpLogin";
            }
        })
    })
</script>


<!-- Mirrored from www.zi-han.net/theme/hplus/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:18:23 GMT -->
</html>