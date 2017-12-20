
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF8">
    <title>个人中心</title>
    <meta name="viewport" content="width=devicewidth, initialscale=1.0">
    <meta name="renderer" content="webkit">
    <![if lt IE 9]>
    <meta httpequiv="refresh" content="0;ie.html" />
    <![endif]>

    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/bootstrap.min14ed.css" rel="stylesheet">
    <link href="../css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="../css/animate.min.css" rel="stylesheet">
    <link href="../css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <link href="../css/xzw.css" rel="stylesheet">


</head>

<body class="gray-bg">

<div id="page-wrapper" class="white-bg dashbard-1">

    <div class="row border-bottom">
        <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header"><a  href="#"><img src="../img/logo.png" style="height: 50px;margin: 10px 0px 5px 50px;"> </a>
            </div>

            <ul class="nav navbar-top-links navbar-right">
                <a class="dropdown J_tabClose" data-toggle="dropdown">王二狗<span class="caret"></span>

                </a>
                <ul role="menu" class="dropdown-menu dropdown-menu-right">
                    <li class="J_tabShowActive"><a>修改个人信息</a>
                    </li>
                    <li class="divider"></li>
                    <li class="J_tabShowActive"><a>系统管理</a>
                    </li>
                    <li class="divider"></li>
                    <li class="J_tabShowActive"><a href="template.html">机构管理</a>
                    </li>
                    <li class="divider"></li>
                    <li class="J_tabCloseAll"><a href="../example/login.html">安全退出</a>
                    </li>
                </ul>

                <li class="dropdown hidden-xs">
                    <a class="right-sidebar-toggle" aria-expanded="false" href="../example/login.html">
                        <img src="../img/退出.png">
                    </a>
                </li>
            </ul>
        </nav>
    </div>

    <div class=" row wrapper white-bg" id="content-main">
        <ol class="breadcrumb" style="margin-left: 40px">
            <li style="font-size: 15px">
                <strong>
                    <a href="head.html">首页</a> >><a href="project_myProfile.html">个人中心</a>
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
                        <th>赖菜李</th>
                    </tr>
                    <tr >
                        <th style="width: 150px;text-align: center">QQ:</th>
                        <th>110119120</th>
                    </tr>
                    <tr >
                        <th style="width: 150px;text-align: center">邮箱:</th>
                        <th>763051231239467</th>
                    </tr>
                    <tr >
                        <th style="width: 150px;text-align: center">联系电话:</th>
                        <th>11010203123</th>
                    </tr>
                    <tr >
                        <th style="width: 150px;text-align: center">所在地:</th>
                        <th>中国 湖南</th>
                    </tr>
                    <tr >
                        <th style="width: 150px;text-align: center">个人简介:</th>
                        <th>dddd=dddd我是赖菜</th>
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
<script src="../js/jquery.min.js?v=2.1.4"></script>
<script src="../js/bootstrap.min.js?v=3.3.6"></script>
<script src="../js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="../js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="../js/plugins/layer/layer.min.js"></script>
<script src="../js/hplus.min.js?v=4.1.0"></script>
<script type="text/javascript" src="../js/contabs.min.js"></script>
<script src="../js/plugins/pace/pace.min.js"></script>
<script src="../js/content.min.js?v=1.0.0"></script>
<script src="../js/plugins/toastr/toastr.min.js"></script>
</body>


</html>