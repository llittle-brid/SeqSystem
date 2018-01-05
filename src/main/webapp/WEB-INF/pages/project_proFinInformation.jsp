<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: zhiweixu
  Date: 23/12/2017
  Time: 11:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <link href="../../css/z_style.css" rel="stylesheet">
</head>

<body class="gray-bg animated fadeInDown">
<div class="animated fadeInDown">
    <div class=" row wrapper white-bg">
        <ol class="breadcrumb" style="margin-left: 40px">
            <li style="font-size: 15px">
                <strong>
                    <a href="user-jmpHomepage"><span class="lzf_b">首页</span></a> >><a href="user-jmpCompletedProjectList">历史项目<span class="lzf_b"></span></a>
                    >><a href="project-jmpFinishedProjectInfo"><span class="lzf_b">项目信息</span></a>
                </strong>
            </li>
        </ol>
    </div>
    <div id="page-wrapper" class="dashbard-1">
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
                            <th style="width: 150px;text-align: center">项目名称:</th>
                            <th>
                            </th>
                        </tr>
                        <tr >
                            <th style="width: 150px;text-align: center">文档名称:</th>
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
                        <s:iterator value="list" >
                            <tr>
                                <td><s:property value="NAME"/></td>
                                <td><s:property value="ADIMIN_NAME"/></td>
                                <td><s:property value="ID_ORGANIZATION"/></td>
                                <td><s:property value="NUMBER_USER"/></td>
                                <td><a href="" style="color: grey">管理</a>/<a href="" style="color: orangered">退出</a></td>
                            </tr>
                        </s:iterator>
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
    <%--<!--右侧部分结束-->--%>
</div>
</body>

<script src="../../js/jquery.min.js?v=2.1.4"></script>
<script src="../../js/bootstrap.min.js?v=3.3.6"></script>
<script src="../../js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="../../js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="../../js/plugins/layer/layer.min.js"></script>
<script src="../../js/hplus.min.js?v=4.1.0"></script>
<script type="text/javascript" src="../../js/contabs.min.js"></script>
<script src="../../js/plugins/pace/pace.min.js"></script>

</html>
