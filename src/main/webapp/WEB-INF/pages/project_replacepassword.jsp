<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>


<!-- Mirrored from www.zi-han.net/theme/hplus/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:18:23 GMT -->
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>修改密码</title>
    <link rel="shortcut icon" href="../example/favicon.ico">
    <link href="../../css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="../../css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="../../css/animate.min.css" rel="stylesheet">
    <link href="../../css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <link href="../../css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="../../css/z_style.css" rel="stylesheet">
    <link href="../../css/plugins/toastr/toastr.min.css" rel="stylesheet">
    <link href="../../css/plugins/sweetalert/sweetalert.css" rel="stylesheet">
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
                <input name="name" type="text" id="name" class="form-control loginLine" style="font-size:13px" placeholder="请输入用户名" required="">
            </div>
            <div class="form-group col-sm-8 col-md-offset-2 loginLine">
                <input name="email" id="email" type="email" class="form-control loginLine" style="font-size:13px" placeholder="请输入邮箱" required="">
            </div>
            <div class="form-group col-sm-8 col-md-offset-2 loginLine">
                <input name="password1" type="password" id="password1" class="form-control loginLine" style="font-size:13px" placeholder="重置一个新密码" required="">
            </div>
            <div class="form-group col-sm-8 col-md-offset-2 loginLine">
                <input name="password2" type="password" id="password2" class="form-control loginLine" style="font-size:13px" placeholder="确认新密码" required="">
            </div>
            <div class="form-group col-sm-5 col-md-offset-2 loginLine">
                <input name="verification" id="verification"  type="verification" class="form-control loginLine" style="font-size:12px" placeholder="请填写验证码" required="">
            </div>
            <div class="form-group">
                <button id="replacepassword_email" type="button" class="btn btn-w-m btn-default" style="color:#333333;margin-left:-30px;margin-top:4px;height: 30px;width: 15px;font-size:12px">获取邮箱验证码</button>
            </div>
            <div class="form-group ">
                <button  id="replacepassword_button" class="btn btn-w-m btn-Bblack btn-sm">修改密码</button>
            </div>
    </div>

</div>
<script src="../../js/jquery.min.js?v=2.1.4"></script>
<script src="../../js/bootstrap.min.js?v=3.3.6"></script>
<script src="../../js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script src="../../js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="../../js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="../../js/plugins/layer/layer.min.js"></script>
<script src="../../js/hplus.min.js?v=4.1.0"></script>
<script type="text/javascript" src="../../js/contabs.min.js"></script>
<script src="../../js/plugins/pace/pace.min.js"></script>
<script src="../../js/plugins/sweetalert/sweetalert.min.js"></script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
<script src="../../js/plugins/toastr/toastr.min.js"></script>
<script src="../../js/mjy.js"></script>
<script src="../../js/plugins/suggest/bootstrap-suggest.min.js"></script>
<script src="../../js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
</body>

<script>

    $("button#replacepassword_button").click(function () {
        var password1=$("#password1").val();
        var password2=$("#password2").val();
        var verification=$("#verification").val();
        if(password1 !== password2){
            swal("密码输入不符合要求！", "输入的两次密码不一致", "error");
        }else if(password1.length < 6){
            swal("密码长度不符要求！", "密码长度请在6-22字符之间", "error");
        }else if(verification === "" || verification ===null) {
            swal("验证码未填写", "请输入验证码", "error");
        }
        else {
            $.ajax({
                url: "login-replacepassword",
                data: {
                    name: $("input#name").val(),
                    mail: $("input#email").val(),
                    tempPassword: $("input#password1").val(),
                    newPassword: $("input#password2").val(),
                    verification: $("input#verification").val()
                },
                dataType: "json",
                type: "Post",
                async: "false",
                success: function (result) {
                    if(result.consequence === "error"){
                        swal("验证码错误！", "请检查您的验证码输入是否正确", "error");
                    }
                    else if (result.res === true) {
                        swal("修改密码成功！", "即将跳转到登陆页面(未跳转请点击下方按钮)", "success");
                        location.href="login-jmpLogin"
                    }
                    else if(result.res === false)
                        swal("修改密码失败！", "未知错误请检查。", "error");
                },
                error: function () {
                    swal("修改密码失败！", "请求未发出，请先获取验证码并保证网络通畅。", "error");
                }
            })
        }
    })
    //发送验证码
    $("button#replacepassword_email").click(function () {
        $.ajax({
            url: "login-postReplacepassword",
            data: {mail: $("input#email").val(),name: $("input#name").val()},
            dataType: "json",
            type: "Post",
            async: "false",
            success: function (result) {
                if(result.res===true)  {
                    showtoast("success", "发送成功", "验证码已发送至邮箱")
                }
                else  showtoast("error", "发送失败", "发送失败")
            },
            error: function (result) {
                showtoast("error", "发送失败", "发送失败")
            }
        })
    })
</script>


<!-- Mirrored from www.zi-han.net/theme/hplus/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:18:23 GMT -->
</html>