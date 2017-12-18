<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <title>个人中心</title>
    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->

    <link rel="shortcut icon" href="/example/favicon.ico">
    <link href="../../css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="../../css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="../../css/animate.min.css" rel="stylesheet">
    <link href="../../css/style.min862f.css?v=4.1.0" rel="stylesheet">
</head>

<body class="gray-bg">
<div id="page-wrapper" class="white-bg dashbard-1">
    <div class=" row wrapper white-bg" id="content-main">
        <ol class="breadcrumb" style="margin-left: 40px">
            <li style="font-size: 15px">
                <strong>
                    <a href="user-jmpHomepage">首页</a> >><a href="user-jmpMyprofile">我的资料</a>
                </strong>
            </li>
        </ol>
    </div>

    <div class="form-group col-md-2">
        <ul class="nav navbar">
            <li>
                <a href="user-jmpMyprofile"><button class="btn btn-w-m  btn-warning">我的资料</button></a>
            </li>
            <li>
                <a href="ogz-jmporganization"><button class="btn btn-w-m  btn-primary">我的机构</button></a>
            </li>
            <li>
                <a href="project_myInformation.html"><button class="btn btn-w-m  btn-primary">消息中心</button></a>
            </li>
        </ul>
    </div>
    <div class="col-md-9">
        <div style="margin-left: 13px;margin-bottom: 20px" class="col-xs-8 ">
                <form class="form-inline">
                    <br>
                    <label style="font-size: medium">用户名: </label>
                    <span style="width: 30px" rows="1">${sessionScope.user.name}</span>
                    <s:if test='#session.user.gender=="男"'>
                        <img src="/img/u413.png">
                    </s:if>
                    <s:elseif test='#session.user.gender=="女"'>
                        <img style="height: 30px;width: 30px" src="/img/famale.png">
                    </s:elseif>
                    <s:else>
                        <img style="height: 30px;width: 30px" src="/img/gender.png">
                    </s:else>
                </form>
        </div>
        <!--具体内容-->
        <div>
            <div>
                <div class="col-xs-8">
                    <div>
                        <div style="float: left;margin: 20px;margin-left: 0px" class="col-md-5" >
                        <table class="table table-bordered" style="text-align: center">
                            <thead>
                            <tr>
                                <th style="text-align: center;background-color: lightgray">邮箱</th>
                            </tr></thead>
                            <tr><td style="height: 35px">
                                <span rows="1">
                                    <s:if test='#session.user.mail==""'>
                                        <s:property value="" default="未填写" />
                                    </s:if>
                                    <s:else>
                                        <s:property value="#session.user.mail"/>
                                    </s:else>
                                </span>
                            </td></tr>
                        </table>
                    </div>
                        <div style="float: left;margin: 20px;margin-left: 35px" class="col-md-5">
                            <table class="table table-bordered" style="text-align: center;">
                            <thead><tr>
                                <th style="text-align: center;background-color: lightgrey">所在地</th>
                            </tr></thead>
                            <tr><td style="height: 35px">
                                <span rows="1">
                                    <s:if test='#session.user.address==""'>
                                        <s:property value="" default="未填写" />
                                    </s:if>
                                    <s:else>
                                        <s:property value="#session.user.address"/>
                                    </s:else>
                                </span>
                            </td></tr>
                        </table>
                        </div>
                        <div style="float: left;margin: 20px;margin-left: 0px" class="col-md-5">
                        <table class="table table-bordered" style="text-align: center">
                            <thead><tr><th style="text-align: center;background-color: lightgrey">QQ</th>
                            </tr></thead>
                            <tr><td style="height: 35px">
                                <span rows="1">
                                    <s:if test='#session.user.qq==""'>
                                        <s:property value="" default="未填写" />
                                    </s:if>
                                    <s:else>
                                        <s:property value="#session.user.qq"/>
                                    </s:else>
                                </span>
                            </td></tr>
                        </table>
                    </div>
                        <div style="float: left;margin: 20px;margin-left: 35px" class="col-md-5">
                        <table class="table table-bordered" style="text-align: center">
                            <thead><tr><th style="text-align: center;background-color: lightgrey">联系电话</th>
                            </tr></thead>
                            <tr><td style="height: 35px">
                                <span rows="1">
                                    <s:if test='#session.user.tel==""'>
                                        <s:property value="" default="未填写" />
                                    </s:if>
                                    <s:else>
                                        <s:property value="#session.user.tel"/>
                                    </s:else>
                                </span>
                            </td></tr>
                        </table>
                    </div>
                    </div>
                </div>
                <div style="margin: 20px;margin-left: 0px" class="col-xs-3">
                    <table class="table table-bordered" style="text-align: center">
                        <thead><tr><th style="text-align: center;background-color: lightgrey">个人简介</th>
                        </tr></thead>
                        <tr>
                            <td style="height: 164px">
                                <s:if test='#session.user.introduce==""'>
                                    <s:property value="" default="写点东西介绍自己吧!" />
                                </s:if>
                                <s:else>
                                    <s:property value="#session.user.introduce"/>
                                </s:else>
                            </td>
                        </tr>

                    </table>
                </div>
                <!--填充空白-->
                <div class="col-md-12 col-md-offset-1">
                    <br/>
                </div>

            </div>
            <div class="col-md-4 col-md-offset-4">
                <div style="margin-left: 50px">
                <button type="button" class="btn btn-w-m btn-success" data-toggle="modal" data-target="#myModal">修改资料</button>
                </div>
            </div>
        </div>
    </div>
    <div  class="modal inmodal" id="myModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated bounceInRight">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">关闭</span>
                    </button>
                    <h4 class="modal-title">修改资料</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group"><label>邮箱</label> <input id="mail" type="text" placeholder="请输入邮箱" class="form-control" required="required"></div>
                    <div class="form-group"><label>QQ</label> <input id="qq" type="text" placeholder="请输入QQ" class="form-control" required=""></div>
                    <div class="form-group"><label>所在地</label> <input id="address" type="text" placeholder="请输入所在地" class="form-control" required=""></div>
                    <div class="form-group"><label>联系电话</label> <input id="tel" type="text" placeholder="请输入联系电话" class="form-control" required=""></div>
                    <div class="form-group"><label>个人简介</label> <input id="introduce" type="text" placeholder="请输入个人简介" class="form-control" required=""></div>
                    <div class="form-group">
                        <label>性别</label>
                        <div class="form-group">
                            <select id="gender" class="form-control" name="gender">
                                <option>男</option>
                                <option>女</option>
                                <option>保密</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-white" data-dismiss="modal">取消</button>
                    <button id="edit-button" type="button" class="btn btn-primary">保存</button>
                </div>
            </div>
        </div>
    </div>
</div>


<script src="../../js/jquery.min.js?v=2.1.4"></script>
<script src="../../js/bootstrap.min.js?v=3.3.6"></script>
<script src="../../js/content.min.js?v=1.0.0"></script>
<script src="../../js/plugins/toastr/toastr.min.js"></script>
<script src="../../js/mjy.js"></script>
</body>
<script>
    $("button#edit-button").click(function (){
        $.ajax({
            url: "user-editProfile",
            data: {mail: $("input#mail").val(),qq: $("input#qq").val(),address: $("input#address").val(),tel: $("input#tel").val(),introduce: $("input#introduce").val(),gender:$("select#gender").val()},
            dataType: "json",
            type: "Post",
            async: "false",
            success: function (result) {
                if(result.res===true)  {
                    showtoast("success", "修改成功", "操作成功")
                    location.href = "user-jmpMyprofile";
                }
                else  showtoast("error", "修改失败", "操作失败")
            },
            error: function (result) {
                showtoast("error", "修改失败", "修改失败")
            }
        })
    })
</script>

</html>