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

    <!-- bootstrap-table -->
    <link href="../../css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="../../css/animate.min.css" rel="stylesheet">
    <link href="../../css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <link href="../../css/z_style.css" rel="stylesheet">

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



        <div class="ibox-content">
            <div class="ibox-title">
                <div style="float: left;margin-left: 5px"><span><strong>我的机构</strong></span></div>
                <div style="float: left;margin-left: 10px"><button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#newOrg">申请机构</button></div>
            </div>
            <div class="bootstrap-table">
                <table id="finishingTask" data-toggle="table"
                       data-url="project-showList"
                       data-click-to-select="true"
                       data-search="true"
                       data-show-refresh="true"
                       data-show-toggle="true"
                       data-show-columns="true"
                       data-toolbar="#toolbar"
                       data-query-params="quefryParams"
                       data-pagination="true"
                       data-halign="center"
                       data-striped="true"
                       data-page-size="3"
                       data-height="259"
                >
                </table>
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
                    <div class="form-group"><label>机构名</label> <input id="OrgName" type="text" placeholder="请输入邮箱" class="form-control" required="required"></div>
                    <div class="form-group"><label>联系方式</label> <input id="mytel" type="text" placeholder="请输入QQ" class="form-control" required=""></div>
                    <div class="form-group"><label>备注</label> <input id="others" type="text" placeholder="请输入所在地" class="form-control" required=""></div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-white" data-dismiss="modal">取消</button>
                    <button id="newOrg-button" type="button" class="btn btn-primary">申请</button>
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
                    <div class="form-group"><label>个性签名</label> <input id="introduce" type="text" placeholder="请输入个人简介" class="form-control" required=""></div>
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
<script src="../../js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
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
<script>
    $('#finishingTask').bootstrapTable({
            columns: [
                {
                    checkbox: true,
                    align: 'center',
                    valign: 'middle'
                }, {
                    title: '机构编码',
                    field: 'ID_ORGANIZATION',
                    align: 'center',
                    valign: 'middle'
                },
                {
                    field: 'ORGANIZATIONNAME',
                    title: '机构名称',
                    sortable: true,
                    align: 'center'
                }, {
                    field: 'ADMIN_NME',
                    title: '管理员',
                    sortable: true,
                    align: 'center'
                },
                {
                    field: 'NUM_USER',
                    title: '机构人数',
                    align: 'center'
                },
                {
                    field: 'operate',
                    title: '操作',
                    align: 'center',
                    events: "actionEvents",
                    formatter: "AddFunctionAlty"
                }
            ]
        }
    );
    /**
 * @return {string}
 */

    $.ajax(
        {
            type:"GET",
            url:"personalcenter-showList",
            dataType:"json",
            success:function(json){
                var proList = JSON.parse(json.listorg);
                //finishingTask为table的id
                $('#finishingTask').bootstrapTable('load',proList);
            },
            error:function(){
                alert("错误");
            }
        }
    )
    function AddFunctionAlty(value,row,index) {
        return '<a class="mod zfont3">退出</a>'
    }
    window.actionEvents = {
        'click .mod': function(e, value, row, index) {
            //修改操作
            var id = row.ID_ORGANIZATION;
            var ID_ORGANIZATION = parseInt(id);
            location.href="personalcenter-quitorg?ID_ORGANIZATION="+ID_ORGANIZATION;
        },
        'click .delete' : function(e, value, row, index) {
            //删除操作
        }
    };
</script>

</html>