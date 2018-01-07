<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>


<!-- Mirrored from www.zi-han.net/theme/hplus/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:18:23 GMT -->
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>修改密码</title>
    <link rel="shortcut icon" href="<%=basePath%>/example/favicon.ico">
    <link href="<%=basePath%>/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="<%=basePath%>/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="<%=basePath%>/css/animate.min.css" rel="stylesheet">
    <link href="<%=basePath%>/css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <link href="<%=basePath%>/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="<%=basePath%>/css/z_style.css" rel="stylesheet">
    <link href="<%=basePath%>/css/plugins/toastr/toastr.min.css" rel="stylesheet">
    <link href="<%=basePath%>/css/plugins/sweetalert/sweetalert.css" rel="stylesheet">
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
            <form class="cmxform" id="signupForm">
                <div class="form-group col-sm-8 col-md-offset-2 loginLine">
                    <label for="name"></label>
                    <input name="name" type="text" id="name" class="form-control loginLine valiadate" style="font-size:13px" placeholder="请输入用户名" required="">
                </div>
                <div class="form-group col-sm-8 col-md-offset-2 loginLine">
                    <label for="email"></label>
                    <input name="email" id="email" type="email" class="form-control loginLine valiadate" style="font-size:13px" placeholder="请输入邮箱" required="">
                </div>
                <div class="form-group col-sm-8 col-md-offset-2 loginLine ">
                    <label for="password1"></label>
                    <input name="password1" type="password" id="password1" class="form-control loginLine valiadate" style="font-size:13px" placeholder="重置一个新密码" required="">
                </div>
                <div class="form-group col-sm-8 col-md-offset-2 loginLine">
                    <label for="password2"></label>
                    <input name="password2" type="password" id="password2" class="form-control loginLine valiadate" style="font-size:13px" placeholder="确认新密码" required="">
                </div>
                <div class="form-group col-sm-5 col-md-offset-2 loginLine">
                    <label for="verification"></label>
                    <input name="verification" id="verification"  type="verification" class="form-control loginLine valiadate" style="font-size:12px" placeholder="请填写验证码" required="">
                </div>
                <div class="form-group">
                    <input id="replacepassword_email" type="button" class="btn btn-w-m btn-default" style="color:#333333;margin-left:-30px;margin-top:22px;height: 30px;width: 15px;font-size:12px"  onclick="sendCode(this)" value="获取邮箱验证码"/>
                </div>
                <div style="width: 300px" class="form-group col-sm-8  col-md-offset-2 loginLine">
                    <button  id="replacepassword_button" class="btn btn-w-m btn-Bblack btn-sm">修改密码</button><a href="login-jmpLogin"><small>取消修改，点我登录</small></a>
                </div>
            </form>
        </div>
    </div>
<script src="<%=basePath%>/js/jquery.min.js?v=2.1.4"></script>
<script src="<%=basePath%>/js/bootstrap.min.js?v=3.3.6"></script>
<script src="<%=basePath%>/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script src="<%=basePath%>/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="<%=basePath%>/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="<%=basePath%>/js/plugins/layer/layer.min.js"></script>
<script src="<%=basePath%>/js/hplus.min.js?v=4.1.0"></script>
<script type="text/javascript" src="<%=basePath%>/js/contabs.min.js"></script>
<script src="<%=basePath%>/js/plugins/pace/pace.min.js"></script>
<script src="<%=basePath%>/js/plugins/sweetalert/sweetalert.min.js"></script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
<script src="<%=basePath%>/js/plugins/toastr/toastr.min.js"></script>
<script src="<%=basePath%>/js/mjy.js"></script>
<script src="<%=basePath%>/js/plugins/suggest/bootstrap-suggest.min.js"></script>
<script src="<%=basePath%>/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
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
                password1: {
                    required: true,
                    minlength: 6
                },
                password2: {
                    required: true,
                    minlength: 6,
                    equalTo: "#password1"
                },
                email: {
                    required: true,
                    email: true
                },
                verification: {
                    required: true,
                    minlength: 6
                }
            },messages: {
                name: {
                    required: "请输入用户名",
                    minlength: "用户名长度不能小于 2 位"
                },
                password1: {
                    required: "请输入密码",
                    minlength: "密码长度不能小于 6 位"
                },
                password2: {
                    required: "请输入密码",
                    minlength: "密码长度不能小于 6 位",
                    equalTo: "两次密码输入不一致"
                },
                verification: {
                    required: "请输入验证码",
                    minlength: "验证码不符合要求，请输入正确的验证码",
                    maxlength: "验证码不符合要求，请输入正确的验证码"
                },
                email: "请输入一个正确的邮箱",
            }
        });
    });
    //以上为表单验证
    var state="true";
    $("button#replacepassword_button").click(function () {
        $(".valiadate").each(function(){
            if(($(this).attr("aria-invalid")==="undefined")||$(this).attr("aria-invalid")==="true") {
                alert($(this).val())
                state="false";
                return;
            }
        });
        if(state==="false") {
            swal("输入有误", "请根据提示修改您的输入的信息", "error");
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
                    if (result.consequence === "error") {
                        swal("验证码错误！", "请检查您的验证码输入是否正确", "error");
                    }
                    else if (result.res === true) {
                        swal({
                            title: "修改成功!",
                            text: "点击下方按钮回登陆页面",
                            type: "success",
                            confirmButtonColor: "#18a689",
                            confirmButtonText: "OK"
                        }, function () {
                            location.href = "login-jmpLogin"
                        })
                    }
                    else if (result.res === false)
                        swal("修改密码失败！", "未知错误请检查。", "error");
                },
                error: function () {
                    swal("修改密码失败！", "请先获取验证码并保证网络通畅。", "error");
                }
            })
        }
    })
    var clock = '';
    var nums = 60;
    var btn;
    function sendCode(thisBtn)
    {
        btn = thisBtn;
        btn.disabled = true; //将按钮置为不可点击
        btn.value = nums+'秒后可重新获取';
        clock = setInterval(doLoop, 1000); //一秒执行一次
    }
    function doLoop()
    {
        nums--;
        if(nums > 0){
            btn.value = nums+'秒后可重新获取';
        }else{
            clearInterval(clock); //清除js定时器
            btn.disabled = false;
            btn.value = '点击发送验证码';
            nums = 60; //重置时间
        }
    }

    //发送验证码
    $("input#replacepassword_email").click(function () {
        $.ajax({
            url: "login-postReplacepassword",
            data: {mail: $("input#email").val(),name: $("input#name").val()},
            dataType: "json",
            type: "Post",
            async: "false",
            success: function (result) {
                if (result.res === true) {
                    showtoast("success", "发送成功", "操作成功")
                }
                else if(result.consequence === false )
                    showtoast("error", "发送失败", "请检查输入的邮箱是否有效并保证网络通畅")
                else
                    showtoast("error", "发送失败", "服务器异常")

            },
            error: function (result) {
                showtoast("error", "发送失败", "请检查输入的邮箱与用户名是否正确并保证网络通畅")
            }
        })
    })
</script>


<!-- Mirrored from www.zi-han.net/theme/hplus/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:18:23 GMT -->
</html>