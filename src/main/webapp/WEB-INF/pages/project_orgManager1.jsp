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
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="../../css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="../../css/animate.min.css" rel="stylesheet">
    <link href="../../css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <link href="../../css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="../../css/z_style.css" rel="stylesheet">
    <link href="../../css/plugins/toastr/toastr.min.css" rel="stylesheet">
</head>

<body class="gray-bg">
<div id="page-wrapper" class="white-bg dashbard-1">
    <div class=" row wrapper white-bg" id="content-main">
        <ol class="breadcrumb" style="margin-left: 40px">
            <li style="font-size: 15px">
                <strong>
                    <a href="user-jmpHomepage">首页</a> >><a href="Organization-jmpOrgManager1">机构管理</a>>>成员机构
                </strong>
            </li>
        </ol>
    </div>
    <div class="form-group col-md-2">
        <ul class="nav navbar">
            <li>
                <a href="Organization-jmpOrgManager1"><button class="btn-warning btn">成员管理</button></a>
            </li>
            <li>
                <a href="Organization-jmpOrgManager2"><button class="btn-primary btn">查看项目</button></a>
            </li>
        </ul>
    </div>
    <div class="col-md-10" style="padding: 15px 10px 0px 0px;margin-left: -50px">
        <div class="panel">
            <div class="panel-heading">
                <div class="panel-options col-md-4">
                    <ul class="nav nav-tabs">
                        <li>
                            <a href="project_detail.html#tab-1" data-toggle="tab">当前成员</a>
                        </li>
                        <li class="">
                            <a href="project_detail.html#tab-2" data-toggle="tab">发出的邀请</a>
                        </li>
                    </ul>
                </div>
                <div style="float: left;margin-top: 10px" class="col-md-4"><button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#invite">邀请用户</button></div>
                <div style="float: right;width: 300px" class="col-md-4">
                    <select id="gender" class="form-control" name="gender">
                        <s:iterator value="list">
                            <option id="displayOrg" class="orgName"><s:property value="NAME"/> </option>
                        </s:iterator>
                    </select>
                </div>
            </div>
            <div class="panel-body">
                <div class="tab-content">
                    <div class="tab-pane active" id="tab-1">
                        <div style="margin:-30px 0px 0px 0px">
                            <div class="ibox float-e-margins">
                                <div class="ibox-content">
                                    <div class="bootstrap-table">
                                        <table id="finishingTask"
                                               data-toggle="table"
                                               data-url="Organization-showAllMember"
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
                                               data-page-size="6"
                                               data-height="410"
                                               data-page-list="All"
                                        >
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" id="tab-2">
                        <div style="margin:-30px 0px 0px 0px">
                            <div class="ibox float-e-margins">
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
                <div class="form-group"><label>用户名</label> <input id="OrgName" type="text" placeholder="请输入用户名" class="form-control" required="required"></div>
                <div class="form-group"><label>备注</label> <input id="others" type="text" placeholder="请输入备注" class="form-control" required=""></div>
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
<script src="../../js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script src="../../js/content.min.js?v=1.0.0"></script>
<script src="../../js/plugins/toastr/toastr.min.js"></script>
<script src="../../js/mjy.js"></script>

</body>
<script>
    $(document).ready(function(){
        $("option.orgName").click(function () {
            var element = $(this).val();
            console.log(element);
         Ffive(element);
        }
        );
    });
    $('#finishingTask').bootstrapTable({
            columns: [
                {
                    title: '姓名',
                    field: 'name',
                    align: 'center',
                    valign: 'middle'
                },
                {
                    field: 'mail',
                    title: '邮箱',
                    sortable: true,
                    align: 'center'
                },
                {
                    field: 'tel',
                    title: '联系方式',
                    align: 'center'
                }
            ]
        },
        function () {
            var element = $(this).val();
            Ffive(element)
        }

    )
    function Ffive(element) {
        $.ajax(
            {
                url:"Organization-showAllMember",
                data: {NAME: element},
                dataType:"json",
                type: "Get",
                async: "false",
                success:function(json){
                    var orgMemberList = JSON.parse(json.res);
                    //finishingTask为table的id
                    $('#finishingTask').bootstrapTable('load',orgMemberList);
                },
                error:function(){
                    alert(" 错误");
                }
            }
        )
    }

</script>
</html>
