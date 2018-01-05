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
    <link rel="shortcut icon" href="../example/favicon.ico">
    <link href="../../css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="../../css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="../../css/animate.min.css" rel="stylesheet">
    <link href="../../css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <!-- bootstrap-table -->
    <link href="../../css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="../../css/z_style.css" rel="stylesheet">
    <link href="../../css/plugins/toastr/toastr.min.css" rel="stylesheet">
    <!-- Sweet Alert -->
    <link href="../../css/plugins/sweetalert/sweetalert.css" rel="stylesheet">

</head>

<body class="gray-bg">
<div id="page-wrapper" class="white-bg dashbard-1">
    <div class=" row wrapper white-bg" id="content-main">
        <ol class="breadcrumb" style="margin-left: 40px">
            <li style="font-size: 15px">
                <strong>
                    <a href="user-jmpHomepage">首页</a> >><a href="user-jmpMyprofile">个人中心</a>
                </strong>
            </li>
        </ol>
    </div>

    <div style="padding: 20px" class="col-md-6">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <div style="float: left;margin-left: 5px"><span><strong>基本资料</strong></span></div>
                <div style="float: left;margin-left: 10px"><button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal">修改资料</button></div>
            </div>
            <div style="padding-left: 80px" class="ibox-content">
                <table class="table" style="width:400px;border-left: none;border-right: none">
                    <tbody>
                    <tr >
                        <th style="width: 150px;text-align: center">用户名:</th>
                        <th>
                            ${sessionScope.user.name}
                                <s:if test='#session.user.gender=="男"'>
                                    <img src="/img/u413.png">
                                </s:if>
                                <s:elseif test='#session.user.gender=="女"'>
                                    <img style="height: 30px;width: 30px" src="/img/famale.png">
                                </s:elseif>
                                <s:else>
                                    <img style="height: 30px;width: 30px" src="/img/gender.png">
                                </s:else>
                        </th>
                    </tr>
                    <tr >
                        <th style="width: 150px;text-align: center">QQ:</th>
                        <th>
                            <s:if test='#session.user.address==""'>
                                <s:property value="" default="未填写" />
                            </s:if>
                            <s:else>
                                <s:property value="#session.user.address"/>
                            </s:else>
                        </th>
                    </tr>
                    <tr >
                        <th style="width: 150px;text-align: center">邮箱:</th>
                        <th>
                            <s:if test='#session.user.mail==""'>
                                <s:property value="" default="未填写" />
                            </s:if>
                            <s:else>
                                <s:property value="#session.user.mail"/>
                            </s:else>
                        </th>
                    </tr>
                    <tr >
                        <th style="width: 150px;text-align: center">联系电话:</th>
                        <th>
                            <s:if test='#session.user.tel==""'>
                                <s:property value="" default="未填写" />
                            </s:if>
                            <s:else>
                                <s:property value="#session.user.tel"/>
                            </s:else>
                        </th>
                    </tr>
                    <tr >
                        <th style="width: 150px;text-align: center">所在地:</th>
                        <th>
                            <s:if test='#session.user.address==""'>
                                <s:property value="" default="未填写" />
                            </s:if>
                            <s:else>
                                <s:property value="#session.user.address"/>
                            </s:else>
                        </th>
                    </tr>
                    <tr >
                        <th style="width: 150px;text-align: center">个性签名:</th>
                        <th>
                            <s:if test='#session.user.introduce==""'>
                                <s:property value="" default="写点东西介绍自己吧!" />
                            </s:if>
                            <s:else>
                                <s:property value="#session.user.introduce"/>
                            </s:else>
                        </th>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <div style="float: left;margin-left: 5px"><span><strong>我的机构</strong></span></div>
                <div style="float: left;margin-left: 10px"><button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#newOrg">申请机构</button></div>
            </div>
            <div class="ibox-content">

                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th>机构名</th>
                        <th>机构管理员</th>
                        <th>机构编码</th>
                        <th>机构人数</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>需求编辑组一</td>
                        <td>赖菜一号</td>
                        <td>001</td>
                        <td>23</td>
                    </tr>
                    <tr>
                        <td>需求编辑组一</td>
                        <td>赖菜一号</td>
                        <td>001</td>
                        <td>23</td>
                    </tr>
                    <tr>
                        <td>需求编辑组一</td>
                        <td>赖菜一号</td>
                        <td>001</td>
                        <td>23</td>
                    </tr>
                    </tbody>
                </table>
                <div style="height: 50px;margin-left: 40%" class="btn-group">
                    <button type="button" class="btn btn-white"><i class="fa fa-chevron-left"></i>
                    </button>
                    <button class="btn btn-white">1</button>
                    <button class="btn btn-white  active">2</button>
                    <button class="btn btn-white">3</button>
                    <button class="btn btn-white">4</button>
                    <button type="button" class="btn btn-white"><i class="fa fa-chevron-right"></i>
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div style="padding: 20px 0px 0px 0px" class="col-md-6">
        <div class="ibox-title">
            <h5>消息中心</h5>
        </div>
        <div class="ibox float-e-margins">
            <div class="ibox-content">
                <div class="row">
                    <div class="col-sm-8 m-b-xs">
                        <select class="input-sm form-control input-s-sm inline">
                            <option value="0">请选择查找类型</option>
                            <option value="1">用户筛选</option>
                            <option value="2">时间筛选</option>
                            <option value="3">备注筛选</option>
                        </select>
                    </div>
                    <div class="col-sm-4">
                        <div class="input-group">
                            <input placeholder="请输入关键词" class="input-sm form-control" type="text"> <span class="input-group-btn">
                                        <button type="button" class="btn btn-sm btn-primary"> 搜索</button> </span>
                        </div>
                    </div>
                </div>
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                        <tr>

                            <th>邮件概述</th>
                            <th>发件时间</th>
                            <th>主题</th>
                            <th>状态</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                        <tr>
                            <td>系统通知</td>
                            <td>2017-10-20</td>
                            <td>你创建了【快易需求】机构</td>
                            <td>未读/<a href="" style="color: orangered">删除</a></td>
                        </tr>
                        <tr>
                            <td>系统通知</td>
                            <td>2017-10-20</td>
                            <td>你创建了【快易需求】机构</td>
                            <td>未读/<a href="" style="color: orangered">删除</a></td>
                        </tr>
                        <tr>
                            <td>系统通知</td>
                            <td>2017-10-20</td>
                            <td>你创建了【快易需求】机构</td>
                            <td>未读/<a href="" style="color: orangered">删除</a></td>
                        </tr>
                        <tr>
                            <td>系统通知</td>
                            <td>2017-10-20</td>
                            <td>你创建了【快易需求】机构</td>
                            <td>未读/<a href="" style="color: orangered">删除</a></td>
                        </tr>
                        <tr>
                            <td>系统通知</td>
                            <td>2017-10-20</td>
                            <td>你创建了【快易需求】机构</td>
                            <td>未读/<a href="" style="color: orangered">删除</a></td>
                        </tr>
                        </tr>
                        <tr>
                            <td>系统通知</td>
                            <td>2017-10-20</td>
                            <td>你创建了【快易需求】机构</td>
                            <td>未读/<a href="" style="color: orangered">删除</a></td>
                        </tr>
                        <tr>
                            <td>系统通知</td>
                            <td>2017-10-20</td>
                            <td>你创建了【快易需求】机构</td>
                            <td>未读/<a href="" style="color: orangered">删除</a></td>
                        </tr>
                        <tr>
                            <td>系统通知</td>
                            <td>2017-10-20</td>
                            <td>你创建了【快易需求】机构</td>
                            <td>未读/<a href="" style="color: orangered">删除</a></td>
                        </tr>
                        <tr>
                            <td>系统通知</td>
                            <td>2017-10-20</td>
                            <td>你创建了【快易需求】机构</td>
                            <td>未读/<a href="" style="color: orangered">删除</a></td>
                        </tr>
                        <tr>
                            <td>系统通知</td>
                            <td>2017-10-20</td>
                            <td>你创建了【快易需求】机构</td>
                            <td>未读/<a href="" style="color: orangered">删除</a></td>
                        </tr>
                        </tbody>
                    </table>
                    <div style="height: 50px;margin-left: 40%" class="btn-group">
                        <button type="button" class="btn btn-white"><i class="fa fa-chevron-left"></i>
                        </button>
                        <button class="btn btn-white">1</button>
                        <button class="btn btn-white  active">2</button>
                        <button class="btn btn-white">3</button>
                        <button class="btn btn-white">4</button>
                        <button type="button" class="btn btn-white"><i class="fa fa-chevron-right"></i>
                        </button>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div  class="modal inmodal" id="newOrg" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated bounceInRight">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">关闭</span>
                    </button>
                    <h4 class="modal-title">申请机构</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group"><label>机构名</label> <input id="org_name" type="text" placeholder="请输入机构名(必填)" class="form-control" required="required"></div>
                    <div class="form-group"><label>备注</label> <input id="message" type="text" placeholder="请输入备注" class="form-control" required="required"></div>
                </div>
                <div class="modal-footer">
                    <button id="cancel-apply" type="button" class="btn btn-white" data-dismiss="modal">取消</button>
                    <button id="newOrg-button" type="submit" class="btn btn-primary">申请</button>
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
                    <div class="form-group"><label>邮箱</label>
                        <input id="mail" type="text" maxlength="20"
                        <s:if test='#session.user.mail==""'>
                               placeholder="请输入邮箱(不超过20个字符)"
                        </s:if>
                        <s:else>
                               value="<s:property value="#session.user.mail"/>"
                        </s:else>
                               class="form-control" required="required">
                    </div>
                    <div class="form-group"><label>QQ</label>
                        <input id="qq" type="text" maxlength="20"
                        <s:if test='#session.user.qq==""'>
                               placeholder="请输入QQ(不超过20个字符)"
                        </s:if>
                        <s:else>
                               value="<s:property value="#session.user.qq"/>"
                        </s:else>
                               class="form-control" required="">
                    </div>
                    <div class="form-group"><label>所在地</label>
                        <input id="address" type="text" maxlength="40"
                        <s:if test='#session.user.address==""'>
                               placeholder="请输入所在地(不超过40个字符)"
                        </s:if>
                        <s:else>
                               value="<s:property value="#session.user.address"/>"
                        </s:else>
                               class="form-control" required="">
                    </div>
                    <div class="form-group"><label>联系电话</label>
                        <input id="mytel" type="text" maxlength="20"
                        <s:if test='#session.user.tel==""'>
                               placeholder="请输入联系电话(不超过20个字符)"
                        </s:if>
                        <s:else>
                               value="<s:property value="#session.user.tel"/>"
                        </s:else>
                               class="form-control" required="">
                        </div>
                    <div class="form-group"><label>个性签名</label>
                        <input id="introduce" type="text" maxlength="40"
                            <s:if test='#session.user.introduce==""'>
                               placeholder="请输入个人简介(不超过40个字符)"
                            </s:if>
                            <s:else>
                                value="<s:property value="#session.user.introduce"/>"
                            </s:else>
                               class="form-control" required="">
                    </div>
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
<script src="../../js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script src="../../js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="../../js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="../../js/plugins/layer/layer.min.js"></script>
<script src="../../js/hplus.min.js?v=4.1.0"></script>
<script type="text/javascript" src="../../js/contabs.min.js"></script>
<script src="../../js/plugins/pace/pace.min.js"></script>
<script src="../../js/plugins/sweetalert/sweetalert.min.js"></script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
<script src="../../js/mjy.js"></script>
<script src="../../js/plugins/suggest/bootstrap-suggest.min.js"></script>
<script src="../../js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
</body>
<script>
    $("button#edit-button").click(function (){
        swal(
            {
                title: "您确认保存本次修改吗？",
                text: "确认请点击保存",
                type: "",
                showCancelButton: true,
                confirmButtonColor: "#18a689",
                confirmButtonText: "保存",
                cancelButtonText: "取消",
                closeOnConfirm: false
            },function () {
                $.ajax({
                    url: "user-editProfile",
                    data: {
                        mail: $("input#mail").val(),
                        qq: $("input#qq").val(),
                        address: $("input#address").val(),
                        tel: $("input#mytel").val(),
                        introduce: $("input#introduce").val(),
                        gender: $("select#gender").val()
                    },
                    dataType: "json",
                    type: "Post",
                    async: "false",
                    success: function (result) {
                        if (result.res == true) {
                            swal("修改成功！", "您已成功修改个人资料。", "success");
                            location.href = "user-jmpMyprofile";
                        }
                        else swal("修改失败！", "操作失败", "success");
                    },
                    error: function () {
                        swal({
                            icon: "error"
                        });
                    }
                })
            })
    })
    $("button#newOrg-button").click(function (){
        var org_name=$("input#org_name").val();
        console.log(org_name);
        if(org_name === "" || org_name === null){
            swal("申请失败！", "请填写机构名", "error");
        }
        else {
            swal(
                {
                    title: "您确认申请该机构吗？",
                    text: "确认请点击申请",
                    type: "",
                    showCancelButton: true,
                    confirmButtonColor: "#18a689",
                    confirmButtonText: "申请",
                    cancelButtonText: "取消",
                    closeOnConfirm: false
                }, function () {
                    $.ajax({
                        url: "applyOrganization-applyOrg",
                        data: {
                            org_name: $("input#org_name").val(),
                            message: $("input#message").val(),
                        },
                        dataType: "json",
                        type: "Post",
                        async: "false",
                        success: function () {
                            swal("申请成功！", "机构申请已受理", "success");
                            $('button#cancel-apply').click();
                        },
                        error: function () {
                            swal({
                                icon: "error"
                            });
                        }
                    })
                })
        }
    })
</script>
</html>