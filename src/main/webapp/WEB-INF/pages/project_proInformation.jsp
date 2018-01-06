<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: zhiweixu
  Date: 18/12/2017
  Time: 09:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <title>项目信息</title>
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
    <link href="../../css/plugins/summernote/summernote.css" rel="stylesheet">
    <link href="../../css/plugins/summernote/summernote-bs3.css" rel="stylesheet">

    <link href="../../css/xzw.css" rel="stylesheet">

    <link href="../../css/plugins/bootstrap-fileinput/fileinput.min.css" rel="stylesheet">

</head>

<body class="gray-bg animated fadeInDown">
<%--promp layer1--%>
<div  class="modal inmodal" id="newUser" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content animated bounceInRight">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">关闭</span>
                </button>
                <h4 class="modal-title">邀请成员</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label>邀请</label>
                    <input id="UserName" type="text" placeholder="请输入用户名" class="form-control" required="true" autocomplete="off">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" id="button_cancel" class="btn btn-white" data-dismiss="modal">取消</button>
                <button id="button_invite" type="button" class="btn btn-primary">邀请</button>
            </div>
        </div>
    </div>
</div>
<%--promp layer2--%>
<div  class="modal inmodal" id="switchPM" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content animated bounceInRight">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">关闭</span>
                </button>
                <h4 class="modal-title">转移组长</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label>转移给</label>
                    <input id="MemberName" type="text" placeholder="请输入用户名" class="form-control" required="true" autocomplete="off" onkeyup="inputSuggest()">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-white" data-dismiss="modal">取消</button>
                <button id="button_alter" type="button" class="btn btn-primary">转移</button>
            </div>
        </div>
    </div>
</div>
<div class="animated fadeInDown">
    <div class=" row wrapper white-bg">
        <ol class="breadcrumb" style="margin-left: 40px">
            <li style="font-size: 15px">
                <strong>
                    <a href="user-jmpHomepage"><span class="lzf_b">首页</span></a> >>
                    <s:if test='#session.project.state==1'>
                        <a href="user-jmpCurrentProjectList">当前项目<span class="lzf_b"></span></a>
                    </s:if>
                    <s:if test='#session.project.state==0'>
                        <a href="user-jmpCompletedProjectList">历史项目<span class="lzf_b"></span></a>
                    </s:if>
                    >><a href="project-jmpProjectInfo"><span class="lzf_b">项目信息</span></a>
                </strong>
            </li>
        </ol>
    </div>

    <div id="page-wrapper" class="dashbard-1">
        <div class="ibox-content">
            <div class="row">
                <div class="col-sm-12">
                    <div class="m-b-md">
                        <h2>
                            <strong><s:property value="#session.project.name"/></strong>
                        </h2>
                        <s:if test='#session.project.state==1'>
                            <s:if test='#session.project.rank==3||#session.project.rank==4'>
                                <button href="project-" class="btn btn-success"><i class="fa fa-file"></i>编辑文档</button>
                            </s:if>
                            <s:if test="#session.project.rank==3">
                                <button id="endProject" class="btn btn-danger pull-right">结束项目</button>
                            </s:if>
                        </s:if>
                    </div>
                    <dl class="dl-horizontal">
                        <dt>状态：</dt>
                        <s:if test='#session.project.state==1'>
                            <dd><span class="label label-primary">进行中</span></dd>
                        </s:if>
                        <s:if test='#session.project.state==0'>
                            <dd><span class="label label-default">已完成</span></dd>
                        </s:if>
                    </dl>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-5">
                    <dl class="dl-horizontal">

                        <dt><h3>项目组长：</h3></dt>
                        <dd><h2><s:property value="#session.PM.name"/></h2></dd>

                        <dt><h3>所属机构：</h3></dt>
                        <dd><h2><s:property value="#session.project.orgName"/></h2></dd>

                    </dl>
                </div>
                <div class="col-sm-7">
                    <dl class="dl-horizontal">

                        <dt><h3>最后更新：</h3></dt>
                        <dd><h3>12/25/17</h3></dd>

                        <dt><h3>创建于：</h3></dt>
                        <dd><h3><s:property value="#session.project.date"/></h3></dd>
                    </dl>
                </div>
                <div class="col-sm-7">
                    <dl class="dl-horizontal">
                        <dt><h3>项目简介</h3></dt>
                        <dd><h3><s:property value="#session.project.intro"/></h3></dd>
                    </dl>
                </div>
            </div>
            <div class="row m-t-sm">
                <div class="col-sm-12">
                    <div class="panel blank-panel">
                        <div class="panel-heading">
                            <div class="panel-options">
                                <ul class="nav nav-tabs">
                                    <li>
                                        <a href="#tab-1" data-toggle="tab">讨论区</a>
                                    </li>
                                    <li>
                                        <a href="#tab-2" data-toggle="tab">成员管理</a>
                                    </li>
                                    <li>
                                        <a href="#tab-3" data-toggle="tab">文档列表</a>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="panel-body">

                            <div class="tab-content">
                                <div class="tab-pane active" id="tab-1">
                                    <!--自己的留言开始-->
                                    <div class="row">
                                        <div class="ibox float-e-margins">
                                            <div class="ibox-title">
                                                <h5>我的留言</h5>
                                                <div id="alterable" style="visibility: visible">
                                                    <button class="btn btn-success  btn-xs pull-right" onclick="commitDiscuss()" type="submit">发布评论</button>
                                                    <%--<label class="pull-right">没有附件？直接点这里--></label>--%>
                                                </div>
                                                <div class="ibox-content">
                                                    <div class="click2edit wrapper discuss">
                                                    </div>
                                                </div>

                                                <div class="file-loading">
                                                    <!-- The file input field used as target for the file upload widget -->
                                                    <input id="fileupload" name="MyFile" type="file" class="file" multiple data-msg-placeholder="选择要上传的文件">
                                                </div>
                                                <!-- The file upload form used as target for the file upload widget -->
                                            </div>
                                        </div>
                                    </div>
                                    <!--自己的留言结束-->
                                    <div class="allDiscuss">
                                        <!--一行留言-->
                                        <!--一行留言结束-->
                                    </div>

                                </div>
                                <div class="tab-pane" id="tab-2">
                                    <div id="toolbar1">
                                        <s:if test='#session.project.state==1'>
                                            <s:if test="#session.project.rank==3">
                                                <button id="searchUser" class="btn btn-info" data-toggle="modal" data-target="#newUser">
                                                    <i class="glyphicon glyphicon-zoom-in"></i> 邀请成员
                                                </button>
                                                <button id="alterPM" class="btn btn-warning" data-toggle="modal" data-target="#switchPM">
                                                    <i class="glyphicon"></i> 转移组长
                                                </button>
                                            </s:if>
                                        </s:if>
                                    </div>
                                    <div class="bootstrap-table" >
                                        <table id="projectMember" data-toggle="table"
                                               data-classes="table table-no-bordered"
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
                                               data-height="600"
                                        >
                                        </table>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab-3">

                                    <div id="toolbar2">

                                    </div>
                                    <div class="bootstrap-table" >
                                        <table id="projectDocs" data-toggle="table"
                                               data-classes="table table-no-bordered"
                                               data-click-to-select="true"
                                               data-search="true"
                                               data-show-refresh="true"
                                               data-show-toggle="true"
                                               data-show-columns="true"
                                               data-toolbar="#toolbar2"
                                               data-query-params="quefryParams"
                                               data-pagination="true"
                                               data-halign="center"
                                               data-striped="true"
                                               data-page-size="5"
                                               data-height="600"
                                        >
                                        </table>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>

    </div>

</div>
</body>
<script src="../../js/jquery.min.js?v=2.1.4"></script>
<script src="../../js/bootstrap.min.js?v=3.3.6"></script>
<%--bootstrap-table--%>
<script src="../../js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script src="../../js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>

<script src="../../js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="../../js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="../../js/plugins/layer/layer.min.js"></script>
<script src="../../js/hplus.min.js?v=4.1.0"></script>
<script type="text/javascript" src="../../js/contabs.min.js"></script>
<script src="../../js/plugins/pace/pace.min.js"></script>
<script src="../../js/plugins/toastr/toastr.min.js"></script>
<script src="../../js/plugins/sweetalert/sweetalert.min.js"></script>

<script src="../../js/mjy.js"></script>
<script src="../../js/plugins/suggest/bootstrap-suggest.min.js"></script>

<script src="../../js/plugins/summernote/summernote.min.js"></script>
<script src="../../js/plugins/summernote/summernote-zh-CN.js"></script>

<script src="../../js/plugins/bootstrap-fileinput/plugins/sortable.min.js"></script>
<script src="../../js/plugins/bootstrap-fileinput/fileinput.min.js"></script>
<script src="../../js/plugins/bootstrap-fileinput/locales/zh.js"></script>


<script>
    $('#projectMember').bootstrapTable({
            columns: [
                {
                    field: 'name',
                    title: '用户名',
                    sortable: true,
                    align: 'center'
                },{
                    field: 'rank',
                    title: '职务',
                    align: 'center',
                    formatter: "rankFormatter"
                },{
                    field: 'mail',
                    title: '邮箱',
                    sortable: true,
                    align: 'center'
                },{
                    field: 'tel',
                    title: '电话',
                    align: 'center'
                },{
                    field: 'operate',
                    title: '操作',
                    align: 'center',
                    events: "actionEvents",
                    formatter: "operateFormatter"
                }
            ]
        }
    );

    var id_Project = "<s:property value="#session.project.id_Project"/>";
    var id_User = "<s:property value="#session.user.id_user"/>";
    var discuss="123";

    $.ajax(
        {
            type:"post",
            url:"project-getProjectMember",
            data: {Id_Project: id_Project},
            dataType:"json",
            success:function(json){
                var proList = JSON.parse(json.res);
                //finishingTask为table的id
                $('#projectMember').bootstrapTable('load',proList);
                discussInit();
                // discussReload();
                discussReload2();
            },
            error:function(){
                swal({
                    icon: "error"
                });
            }
        }
    );
    function rankFormatter(value,row,index) {
        if (row.rank==5) {
            return '组员';
        }
        else if (row.rank==4){
            return '副组长';
        }
        else {
            return '组长';
        }
    }
    function operateFormatter(value,row,index) {
        <s:if test="#session.project.rank==3">
        if (row.rank==5){
            return ['<a class="mod btn-xs btn-info">设为副组长</a>',
                '<a class="delete btn-xs btn-danger" >移除成员</a>'].join('');
        }
        else if (row.rank==4){
            return ['<a class="mod btn-xs btn-warning">撤销副组长</a>',
                '<a class="delete btn-xs btn-danger" >移除成员</a>'].join('');
        }</s:if>
    }

    //表格  - 操作 - 事件
    window.actionEvents = {
        'click .mod':
            function(e, value, row, index) {
                //修改操作
                var id_user = parseInt(row.id_user);
                var elem = $(this);
                if (elem.hasClass("btn-info")) {
                    $.ajax({
                        type: "post",
                        url: "project-setVPM",
                        data: {id_User: id_user, id_Project: id_Project},
                        dataType: "json",
                        success: function () {
                                showtoast("success", "设置成功", "成功设为副组长");
                                elem.text("撤销副组长");
                                elem.removeClass("btn-info");
                                elem.addClass("btn-warning");
                        },
                        error: function () {
                            swal({
                                icon: "error"
                            });
                        }
                    })
                }
                else {
                    $.ajax({
                        type: "post",
                        url: "project-dismissVPM",
                        data: {id_User: id_user, id_Project: id_Project},
                        dataType: "json",
                        success: function () {
                            showtoast("success", "撤销成功", "成功撤销该副组长");
                            elem.text("设为副组长");
                            elem.removeClass("btn-warning");
                            elem.addClass("btn-info");
                        },
                        error: function () {
                            swal({
                                icon: "error"
                            });
                        }
                    })
                }
            },
        'click .delete' :
            function(e, value, row, index) {
                //修改操作
                var id_user = parseInt(row.id_user);
                swal(
                    {
                        title: "您确定要移除这名成员吗",
                        text: "请谨慎操作！",
                        type: "warning",
                        showCancelButton: true,
                        confirmButtonColor: "#DD6B55",
                        confirmButtonText: "移除",
                        cancelButtonText: "取消",
                        closeOnConfirm: false
                    },function () {
                        $.ajax({
                            type: "post",
                            url: "project-deleteMember",
                            data: {id_User: id_user,id_Project:id_Project},
                            dataType: "json",
                            success: function () {
                                swal("移除成功！", "您已经移除了这名成员。", "success");
                                $('#projectMember').bootstrapTable('remove', {
                                    field: 'name',
                                    values: [row.name]
                                });
                            },
                            error: function () {
                                swal({
                                    icon: "error"
                                });
                            }
                        })
                    }
                );

            }
    };

    $('#projectDocs').bootstrapTable({
            columns: [
                {
                    field: 'document_name',
                    title: '文档名',
                    sortable: true,
                    align: 'center'
                },{
                    field: 'version',
                    title: '版本',
                    align: 'center'
                },{
                    field: 'date',
                    title: '提交时间',
                    sortable: true,
                    align: 'center'
                },{
                    field: 'view',
                    title: '操作',
                    align: 'center',
                    formatter: "viewFormatter"
                }
            ]
        }
    );

    $.ajax(
        {
            type:"post",
            url:"project-getDocument",
            data: {Id_Project: id_Project},
            dataType:"json",
            success:function(json){
                var docList = JSON.parse(json.res);
                //finishingTask为table的id
                $('#projectDocs').bootstrapTable('load',docList);
            },
            error:function(){
                showtoast("error", "没有文档", "获取文档记录失败！");
            }
        }
    );

    function viewFormatter(value,row,index) {
        return '<a class="view btn-xs btn-info">查看文档</a>';
    }


    $("button#button_invite").click(function () {
        var username = $("input#UserName").val();
        $.ajax({
            url: "project-inviteMember",
            data: {
                Id_Project: id_Project,
                Username: username
            },
            dataType: "json",
            type: "Post",
            async: "false",
            success: function (result) {
                if(result.res===true)  {
                    showtoast("success", "邀请成功", "成功发送邀请");
                    $('button#button_cancel').click();
                }
                else  showtoast("error", "邀请失败", "用户名不存在!")
            },
            error: function (result) {
                showtoast("error", "邀请失败", "用户名不存在!")
            }
        })
    });

    $("button#button_alter").click(function () {
        var username = $("input#MemberName").val();
        swal(
            {
                title: "您确定要转移组长给这名成员吗",
                text: "请谨慎操作！",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "转移",
                cancelButtonText: "取消",
                closeOnConfirm: false
            },function () {
                $.ajax({
                    url: "project-alterPM",
                    data: {
                        Id_Project: id_Project,
                        Username: username
                    },
                    dataType: "json",
                    type: "Post",
                    async: "false",
                    success: function (result) {
                        if (result.res===true) {
                            showtoast("success", "转移成功", "成功转移组长给该成员");
                            location.href = "user-jmpCurrentProjectList";
                        }
                        else showtoast("error", "转移失败", "用户名不存在!");
                    },
                    error: function (result) {
                        showtoast("error", "转移失败", "用户名不存在!")
                    }
                })
            }
        );
    });


    $("button#endProject").click(function() {
            swal(
                {
                    title: "您确定要结束此项目吗",
                    text: "结束后将不能重新开始，请谨慎操作！",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#DD6B55",
                    confirmButtonText: "结束",
                    cancelButtonText: "取消",
                    closeOnConfirm: true
                },function () {
                    location.href="project-end?id_Project=<s:property value="#session.project.id_project"/>"
                }
            );
        });
</script>

<%--评论区--%>
<script>
    //评论区初始化
    function discussInit() {
        $(".discuss").code("");
    }
    //评论加载
    function discussReload2() {
        $.ajax({
            url: "discuss-getProjectDis",
            data: {id_Project: id_Project,
                id_user: id_User},
            dataType: "json",
            type: "Post",
            async: "false",
            success: function (result) {
                var content="",tempDis,date,state;
                var title = "";
                for (var i=0;i<result.wrapperList.length;i++){
                    tempDis=result.wrapperList[i].proDiscussEntity;
                    if (tempDis.name === "<s:property value="#session.PM.name"/>"){
                        title += "<span class=\"label label-warning\">组长</span>&nbsp;";
                    }
                    state=result.wrapperList[i].state;
                    date=tempDis.time.toString().split("T");
                    content+="  <div class='row'> <div class='ibox float-e-margins ' style='margin-bottom: 10px'> <div class='ibox-title'> <h5>";
                    content+=tempDis.name+title+" "+date[0]+" "+date[1]+"</h5><input style='display: none' class='id_dis' value='"+tempDis.id_pro_discuss+"'>"
                    content+="  <button  class='btn";
                    if (state=="2")
                        content+=" btn-danger ";
                    else content+=" btn-default ";

                    content+="btn-xs col-lg-push-1 m-l-sm deleteDis'  type='button'  style='margin-top: -3px'>删除</button> ";
                    content+="<div class='ibox-tools'>";

                    for (var j=0;j<tempDis.accessoryEntityList.length;j++) {
                        content += '<a class="fa fa-file" href="' + "accessories/"+tempDis.accessoryEntityList[j].path+ '">';
                        content += tempDis.accessoryEntityList[j].filename;
                        content += '</a>';
                    }

                    content+="</div> </div> <div class='ibox-content'> <div class=' wrapper'>";
                    content+=tempDis.content+"  </div> </div> </div> </div>";
                    title="";
                }
                $("div.allDiscuss").html(content);
            },
            error: function (result) {
                showtoast("dangerous","加载失败","加载目录失败")
            }
        })
    }


    //评论提交
    function commitDiscuss() {
         discuss = $(".discuss").code();
        if($('#fileupload').val()=="") {
            $.ajax({
                url: "discuss-commit2Project",
                data: {'disContent':discuss,'id_Project':id_Project,'id_user':id_User},
                type: "Post",
                async: false,
                success: function (result) {
                    showtoast("success","成功","评论提交成功");
                    discussInit();
                    discussReload2();
                },
                error: function (result) {
                    showtoast("dangerous","加载失败","加载目录失败");
                }
            })
        }
        else {
            // alert(discuss)
            upload()
            $('#fileupload').fileinput('upload');
        }
    }

    function upload() {
        alert(discuss)
        $('#fileupload').fileinput(
            {
                language: 'zh',
                showUpload: false,
                removeClass: "btn btn-danger",
                removeLabel: "清除",
                removeIcon: "<i class=\"glyphicon glyphicon-trash\"></i> ",
                uploadClass: "btn btn-info",
                uploadLabel: "发布",
                uploadIcon: "<i class=\"glyphicon glyphicon-upload\"></i> ",
                uploadAsync: false,
                uploadUrl: "discuss-commit2Project",
                uploadExtraData: {disContent: discuss, id_Project: id_Project, id_user: id_User}
            }

        );
    }


    $('#fileupload').on('fileuploaded', function(event, data, previewId, index) {
        showtoast("success","成功","评论提交成功");
        discussInit();
        discussReload2();
    });

    //评论删除按钮
    $(document).on("click",".deleteDis",function () {
        if ($(this).hasClass("btn-danger")){
            var id_pro_discuss=$(this).prev("input.id_dis").val();
            swal({
                title: "删除评论？",
                text: "一旦删除无法恢复，请谨慎操作！",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "删除",
                cancelButtonText: "取消",
                closeOnConfirm: false
            }, function () {
                $.ajax({
                    url: "discuss-delete",
                    data: {id_pro_discuss: id_pro_discuss},
                    dataType: "json",
                    type: "Post",
                    async: "false",
                    success: function (result) {
                        $("button.cancel").click();
                        showtoast("success","成功","删除评论成功");
                        discussReload2()
                    },
                    error: function (result) {
                        showtoast("dangerous","失败","删除评论失败")
                    }
                })
            });}
    });

    //评论编辑按钮
    function edit() {
        $("#eg").addClass("no-padding");
        $(".click2edit").summernote({lang:"zh-CN",focus:true,toolbar: [
            ['style', ['bold', 'italic', 'underline', 'clear']],
            ['fontsize', ['fontsize']],
            ['color', ['color']],
            ['para', ['paragraph']],
            ['table', ['table']],
            ['picture', ['picture']]
        ]})
    }

    //页面初始化
    $(document).ready(function () {
        edit();
    })


</script>


</html>

