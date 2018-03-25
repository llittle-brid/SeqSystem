<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
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
    <link rel="shortcut icon" href="<%=basePath %>/example/favicon.ico">
    <link href="<%=basePath%>/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="<%=basePath%>/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="<%=basePath%>/css/animate.min.css" rel="stylesheet">
    <link href="<%=basePath%>/css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <!-- bootstrap-table -->
    <link href="<%=basePath%>/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="<%=basePath%>/css/z_style.css" rel="stylesheet">
    <link href="<%=basePath%>/css/plugins/toastr/toastr.min.css" rel="stylesheet">
    <!-- Sweet Alert -->
    <link href="<%=basePath%>/css/plugins/sweetalert/sweetalert.css" rel="stylesheet">

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
                                    <img src="<%=basePath%>/img/u413.png">
                                </s:if>
                                <s:elseif test='#session.user.gender=="女"'>
                                    <img style="height: 30px;width: 30px" src="<%=basePath%>/img/famale.png">
                                </s:elseif>
                                <s:else>
                                    <img style="height: 30px;width: 30px" src="<%=basePath%>/img/doublesex.png">
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
                        <th style="width: 150px;text-align: center">QQ:</th>
                        <th>
                            <s:if test='#session.user.qq==""'>
                                <s:property value="" default="未填写" />
                            </s:if>
                            <s:else>
                                <s:property value="#session.user.qq"/>
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
            <div class="bootstrap-table  ibox-content">
                <table id="finishingTask" data-toggle="table"
                       data-classes="table table-no-bordered"
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
                       data-page-size="5"
                       data-height="400"
                       data-sort-order="desc"
                       data-pagination-v-align="top"
                       data-sort-stable="true"
                >
                </table>
            </div>
        </div>
    </div>
    <div style="padding: 20px" class="col-md-6 float-e-margins">
        <div class="ibox-title">
            <div style="float: left;margin-left: 5px"><div style="float: left;margin-left: 5px"><span><strong>当前消息</strong></span></div></div>
        </div>
        <div class="bootstrap-table ibox-content">
            <table id="info" data-toggle="table"
                   data-classes="table table-no-bordered"
                   data-sort-order="desc"
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
                   data-page-size="5"
                   data-height="400"
                   data-pagination-v-align="top"
                   data-sort-stable="true"
                   data-page-list="[8]"
            >
            </table>
        </div>
        <br>
        <div class="ibox-title">
            <div style="float: left;margin-left: 5px"><span><strong>历史消息</strong></span></div>
        </div>
        <div class="bootstrap-table ibox-content">
            <table id="info1" data-toggle="table"
                   data-classes="table table-no-bordered"
                   data-sort-order="desc"
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
                   data-height="320"
                   data-pagination-v-align="top"
                   data-sort-stable="true"
            >
            </table>
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
                    <div class="form-group"><label>机构名</label> <input id="org_name" type="text" placeholder="请输入机构名(必填，不超过30字符)" maxlength="30" class="form-control" required="required"></div>
                    <div class="form-group"><label>备注</label> <input id="message" type="text" placeholder="请输入备注(可不填，不超过60字符)"  maxlength="60" class="form-control" required="required"></div>
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
                                <option>保密</option>
                                <option>男</option>
                                <option>女</option>
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
<script src="<%=basePath%>/js/mjy.js"></script>
<script src="<%=basePath%>/js/plugins/suggest/bootstrap-suggest.min.js"></script>
<script src="<%=basePath%>/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
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
                        if (result.res == true){
                            swal({
                                title: "修改成功",
                                type:"success",
                                confirmButtonColor: "#18a689",
                                confirmButtonText: "OK"
                            },function(){
                                location.href = "user-jmpMyprofile";
                            })
                    }
                        else swal("修改失败！", "操作失败", "success");
                    },
                    error: function () {
                            swal("修改失败！", "请检查你的网络", "success");
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
<script>
    $('#finishingTask').bootstrapTable({
            columns: [
                {
                    title: '机构编码',
                    field: 'ID_ORGANIZATION',
                    align: 'center',
                    sortable: true,
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
                    sortable: true,
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
    $('#info').bootstrapTable({
            columns: [
                {
                    field: 'MESSAGE',
                    title: '消息',
                    sortable: true,
                    align: 'center',
                },
                {
                    field: 'DATE',
                    title: '时间',
                    sortable: true,
                    align: 'center'
                },
                {
                    field: 'operate',
                    title: '操作',
                    align: 'right',
                    events: "NewActionEvents",
                    formatter: "operateFormatter"
                }
            ]
        }
    );
    $('#info1').bootstrapTable({
            columns: [
                {
                    field: 'CONTENT',
                    title: '消息',
                    sortable: true,
                    align: 'center'
                },
                {
                    field: 'DATE',
                    title: '时间',
                    sortable: true,
                    align: 'center'
                },
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

    $.ajax(
        {
            type:"GET",
            url:"infomation-showInfo",
            dataType:"json",
            success:function(json){
                var infolist = JSON.parse(json.listinfo);
                //finishingTask为table的id
                $('#info').bootstrapTable('load',infolist);
            },
            error:function(){
                alert("错误");
            }
        }
    )

    $.ajax(
        {
            type:"GET",
            url:"history-showHistory",
            dataType:"json",
            success:function(json){
                var History = JSON.parse(json.listHistory);
                //finishingTask为table的id
                $('#info1').bootstrapTable('load',History);
            },
            error:function(){
                alert("错误");
            }
        }
    )
    /**
     *个人机构
     * */
    function AddFunctionAlty(value,row,index) {
        return '<a class="exit zfont3">退出</a>'
    }
    window.actionEvents = {
        'click .exit': function (e, value, row, index) {
            swal({
                title: "您确定要退出这个机构吗",
                text: "点击确定后讲退出机构，请谨慎操作！",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "确定",
                cancelButtonText: "取消",
                closeOnConfirm: false
            }, function () {
                var id = row.ID_ORGANIZATION;
                var ID_ORGANIZATION = parseInt(id);
                $.ajax({
                    url: "personalcenter-quitorg?ID_ORGANIZATION=" + ID_ORGANIZATION,
                    dataType: "json",
                    type: "Post",
                    async: "false",
                    success: function (result) {
                        if (result.res === true){
                            swal({
                                title: "退出成功",
                                type: "success",
                                confirmButtonColor: "#18a689",
                                confirmButtonText: "OK"
                            },function(){
                                location.href = "user-jmpMyprofile";
                            })
                        }
                        else swal("退出失败！", "机构管理员不能退出自己的机构", "error");
                    }, error: function () {
                        swal("退出！", "请检查你的网络", "error");
                    }
                })
            })
            //修改操作
        }
    };

    /**
     * 消息中心
     * @param value
     * @param row
     * @param index
     * @returns {string}
     */
    function operateFormatter(value,row,index) {
        return[
            '<a class="agree" style="padding-left: 10px"><button class="btn btn-info text-center btn-xs " >同意</button></a>',
            '<a class="refuse" style="padding-left: 10px"><button class="btn btn-info text-center btn-xs " >拒绝</button></a>'
        ].join('');
    }
    window.NewActionEvents = {
        'click .agree': function (e, value, row, index) {
            //修改操作
            swal({
                title: "您确定要接受这个邀请吗",
                text: "点击确定将接受这个邀请！",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#18a689",
                confirmButtonText: "确定",
                cancelButtonText: "取消",
                closeOnConfirm: false
            }, function () {
                var id_ORG = row.ID_ORGANIZATION;
                var ID_ORGANIZATION = parseInt(id_ORG);
                var ID_PROJECT = parseInt(row.ID_PROJECT);
                if (isNaN(ID_ORGANIZATION)) {
                    $.ajax({
                        url: "infomation-Accept?ID_PROJECT=" + ID_PROJECT,
                        dataType: "json",
                        type: "Post",
                        async: "false",
                        success: function (result) {
                            if (result.res === true) {
                                swal({
                                    title: "同意成功",
                                    type: "success",
                                    confirmButtonColor: "#18a689",
                                    confirmButtonText: "OK"
                                }, function () {
                                    location.href = "user-jmpMyprofile";
                                })
                            }
                            else swal("接受失败！", "接受失败", "failed");
                        }, error: function () {
                            swal("接收失败！", "请检查你的网络", "failed");
                        }
                    })
                }
                else if (isNaN(ID_PROJECT)) {
                    $.ajax({
                        url: "infomation-Accept?ID_ORGANIZATION=" + ID_ORGANIZATION,
                        dataType: "json",
                        type: "Post",
                        async: "false",
                        success: function (result) {
                            if (result.res === true) {
                                swal({
                                    title: "同意成功",
                                    type: "success",
                                    confirmButtonColor: "#18a689",
                                    confirmButtonText: "OK"
                                }, function () {
                                    location.href = "user-jmpMyprofile";
                                })
                            }
                            else swal("接受失败！", "接受失败", "failed");
                        }, error: function () {
                            swal("接收失败！", "请检查你的网络", "failed");
                        }
                    })
                }
            })
        },
        'click .refuse': function (e, value, row, index) {
            //修改操作
            swal({
                title: "您确定要拒绝这个邀请吗",
                text: "点击确定将拒绝这个邀请！",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "确定",
                cancelButtonText: "取消",
                closeOnConfirm: false
            }, function () {
                var id_ORG = row.ID_ORGANIZATION;
                var ID_ORGANIZATION = parseInt(id_ORG);
                var ID_PROJECT = parseInt(row.ID_PROJECT);
                if (isNaN(ID_ORGANIZATION)) {
                    $.ajax({
                        url: "infomation-Refuse?ID_PROJECT=" + ID_PROJECT,
                        dataType: "json",
                        type: "Post",
                        async: "false",
                        success: function (result) {
                            if (result.res === true) {
                                swal({
                                    title: "拒绝成功",
                                    type: "success",
                                    confirmButtonColor: "#18a689",
                                    confirmButtonText: "OK"
                                }, function () {
                                    location.href = "user-jmpMyprofile";
                                })
                            }
                            else swal("拒绝失败！", "拒绝失败", "failed");
                        }, error: function () {
                            swal("拒绝失败！", "请检查你的网络", "failed");
                        }
                    })
                }
                else if (isNaN(ID_PROJECT)) {
                    $.ajax({
                        url: "infomation-Refuse?ID_ORGANIZATION=" + ID_ORGANIZATION,
                        dataType: "json",
                        type: "Post",
                        async: "false",
                        success: function (result) {
                            if (result.res === true) {
                                swal({
                                    title: "拒绝成功",
                                    type: "success",
                                    confirmButtonColor: "#18a689",
                                    confirmButtonText: "OK"
                                }, function () {
                                    location.href = "user-jmpMyprofile";
                                })
                            }
                            else swal("拒绝失败！", "拒绝失败", "failed");
                        }, error: function () {
                            swal("拒绝失败！", "请检查你的网络", "failed");
                        }
                    })
                }
            })
        }
    }

</script>
</html>