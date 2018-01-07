<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2017/11/28
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>用户登录</title>
    <link rel="shortcut icon" href="example/favicon.ico"> <link href="css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">

    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <link href="css/z_style.css" rel="stylesheet">

    <link href="css/plugins/toastr/toastr.min.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->
    <script>if(window.top !== window.self){ window.top.location = window.location;}</script>
</head>

<body class="gray-bg loginBackground" >
<div class="middle-box text-center loginscreen  animated fadeInDown ">
    <div class="loginForm" >
        <div class="text-center loginLogo m-t" >
        </div>
        <form class="cmxform" id="signupForm">
            <div class="form-group col-sm-8 col-md-offset-2 loginLine">
                <input name="name" id="name" type="username" class="form-control loginLine" style="font-size:13px" placeholder="请输入账号（邮箱/手机/用户名）" required="">
            </div>
            <div class="form-group col-sm-8 col-md-offset-2 loginLine">
                <input name="password" id="password"  type="password" class="form-control loginLine" style="font-size:13px" placeholder="请输入密码" required="">
            </div>
            <div class="form-group">
                <button id="login_button" class="btn btn-w-m btn-Bblack btn-sm" onclick="verification()">登 录</button>

            </div>
            <div class="form-group" >
                <p class="text-muted text-center" > <a href="login-jmpReplacepassword"><small>找回密码</small></a> | <a href="login-jmpRegistration"><small>注册账号</small></a>
                </p></div>
        </form>
    </div>

</div>
<script src="js/jquery.min.js?v=2.1.4"></script>
<script src="js/bootstrap.min.js?v=3.3.6"></script>
<script src="js/content.min.js?v=1.0.0"></script>
<script src="js/plugins/toastr/toastr.min.js"></script>
<script src="js/mjy.js"></script>
<script src="http://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script>
<script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
<script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>
</body>
<script>
    //表单验证
    $.validator.setDefaults({
        submitHandler: function() {
        }
    });
    $().ready(function() {
// 在键盘按下并释放及提交后验证提交表单
        $("#signupForm").validate({
            rules: {
                name: {
                    required: true,
                    minlength: 2
                },
                password: {
                    required: true,
                    minlength: 6
                }
            },messages: {
                name: {
                    required: "请输入用户名",
                    minlength: "用户名长度不能小于 3 位"
                },
                password: {
                    required: "请输入密码",
                    minlength: "密码长度不能小于 6 位"
                }
            }
        });
    });
    //以上为表单验证
    function verification() {
    $.ajax({
        url: "login-login",
        data: {name: $("input#name").val(),password: $("input#password").val()},
        dataType: "json",
        type: "Post",
        async: "false",
        success: function (result) {
            if(result.res===true)  {
                    showtoast("success", "登录成功", "操作成功")
                location.href = "user-jmpTemp";
            }
            else  showtoast("error", "登录失败", "用户名或密码错误")
        },
        error: function (result) {
            showtoast("error", "登录失败", "请检查你的网络")
        }
    })
}
</script>

</html>

