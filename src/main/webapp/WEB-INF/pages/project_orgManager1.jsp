<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <title>机构人员管理</title>
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
                    <a href="user-jmpHomepage">首页</a> >><a href="myOrganization-jmpOrgManager1">机构管理</a>>>成员机构
                </strong>
            </li>
        </ol>
    </div>
    <div class="form-group col-md-2">
        <ul class="nav navbar">
            <li>
                <a href="myOrganization-jmpOrgManager1"><button class="btn-warning btn">成员管理</button></a>
            </li>
            <li>
                <a href="myOrganization-jmpOrgManager2"><button class="btn-primary btn">查看项目</button></a>
            </li>
        </ul>
    </div>
    <div style="margin-left: -60px" class="col-md-10">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <div style="float: left;margin-left: 5px"><span><strong>当前成员</strong></span></div>
                <div style="float: left;margin-left: 10px"><button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#invite">邀请用户</button></div>
                <div style="float: right;width: 300px;margin-top: -10px">
                    <select id="gender" class="form-control" name="gender">
                        <s:iterator value="list">
                            <option class="orgName"><s:property value="NAME"/> </option>
                        </s:iterator>
                    </select>
                </div>
            </div>
            <div class="ibox-content">

                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th class="col-sm-2">姓名</th>
                        <th class="col-sm-2">职位</th>
                        <th class="col-sm-2">邮箱</th>
                        <th class="col-sm-2">电话</th>
                        <th class="col-sm-3">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td >赖菜李</td>
                        <td>组长</td>
                        <td>123@qq.com</td>
                        <td>15236456987</td>
                        <td>
                            <button type="button" class="btn btn-primary btn-xs" >委任管理</button>
                            <button type="button" class="btn btn-xs btn-danger">移除</button>
                        </td>
                    </tr>
                    <tr>
                        <td >赖菜李</td>
                        <td>组长</td>
                        <td>123@qq.com</td>
                        <td>15236456987</td>
                        <td>
                            <button type="button" class="btn btn-primary btn-xs" >委任管理</button>
                            <button type="button" class="btn btn-xs btn-danger">移除</button>
                        </td>
                    </tr>
                    <tr>
                        <td >赖菜李</td>
                        <td>组长</td>
                        <td>123@qq.com</td>
                        <td>15236456987</td>
                        <td>
                            <button type="button" class="btn btn-primary btn-xs" >委任管理</button>
                            <button type="button" class="btn btn-xs btn-danger">移除</button>
                        </td>
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
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>发出的邀请</h5>
            </div>
            <div class="ibox-content">

                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th class="col-sm-2">姓名</th>
                        <th class="col-sm-2">申请时间</th>
                        <th class="col-sm-2">状态</th>
                        <th class="col-sm-2">备注</th>
                        <th class="col-sm-3"></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td >芍药</td>
                        <td>2017-7-8 12:36</td>
                        <td>等待</td>
                        <td>无</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td >桔梗</td>
                        <td>2017-7-8 12:36</td>
                        <td>接受</td>
                        <td>无</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td >菱</td>
                        <td>2017-7-8 12:36</td>
                        <td>拒绝</td>
                        <td>无</td>
                        <td>
                            <button type="button" class="btn btn-primary btn-xs" >重发</button>
                        </td>
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

<div  class="modal inmodal" id="invite" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content animated bounceInRight">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">关闭</span>
                </button>
                <h4 class="modal-title">邀请用户</h4>
            </div>
            <div class="modal-body">
                <div class="form-group"><label>用户名</label> <input id="OrgName" type="text" placeholder="请输入邮箱" class="form-control" required="required"></div>
                <div class="form-group"><label>备注</label> <input id="others" type="text" placeholder="请输入所在地" class="form-control" required=""></div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-white" data-dismiss="modal">取消</button>
                <button id="newOrg-button" type="button" class="btn btn-primary">邀请</button>
            </div>
        </div>
    </div>
</div>
<script src="../../js/jquery.min.js?v=2.1.4"></script>
<script src="../../js/bootstrap.min.js?v=3.3.6"></script>
<script src="../../js/content.min.js?v=1.0.0"></script>
<script src="../../js/plugins/toastr/toastr.min.js"></script>
<script src="../../js/mjy.js"></script>
<script>
    $(document).ready(function(){
        $("option.orgName").click(function(){
            location.href="library-getagain?name="+$(this).html();
        });
    });
</script>
</body>
<script>
    $("button#edit-button").click(function (){
        $.ajax({
            url: "user-editProfile",
            data: {mail: $("input#mail").val(),qq: $("input#qq").val(),address: $("input#address").val(),tel: $("input#mytel").val(),introduce: $("input#introduce").val(),gender:$("select#gender").val()},
            dataType: "json",
            type: "Post",
            async: "false",
            success: function (result) {
                if(result.res==true)  {
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
