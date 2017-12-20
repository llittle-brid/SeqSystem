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
    <div class=" row wrapper white-bg">
        <ol class="breadcrumb" style="margin-left: 40px">
            <li style="font-size: 15px">
                <strong>
                    <a href="user-jmpHomepage">首页</a> >><a href="user-jmpSysManager1">系统管理</a>>>机构申请
                </strong>
            </li>
        </ol>
    </div>


    <div class="form-group col-md-2">
        <ul class="nav navbar">
            <li>
                <a href="user-jmpSysManager1"><button class="btn-warning btn">机构申请</button></a>
            </li>
            <li>
                <a href="user-jmpSysManager2"><button class="btn-primary btn">已有机构</button></a>
            </li>
        </ul>
    </div>
    <div style="margin:16px 0px 0px -60px" class="col-md-10">
        <div class="ibox-title">
            <h5>待处理申请</h5>
        </div>
        <div class="ibox float-e-margins">
            <div class="ibox-content">
                <div class="row">
                    <div class="col-sm-5 m-b-xs">
                        <select class="input-sm form-control input-s-sm inline">
                            <option value="0">请选择</option>
                            <option value="1">用户筛选</option>
                            <option value="2">时间筛选</option>
                            <option value="3">备注筛选</option>
                        </select>
                    </div>
                    <div class="col-sm-4 m-b-xs">

                    </div>
                    <div class="col-sm-3">
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
                            <th>申请人</th>
                            <th>联系方式</th>
                            <th>申请时间</th>
                            <th>备注</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                        <tr>
                            <td>德莱文</td>
                            <td>151123123</td>
                            <td>2017-10-20</td>
                            <td>？？？</td>
                            <td><a href="" style="color: grey">同意</a>/<a href="" style="color: orangered">拒绝</a></td>
                        </tr>
                        <tr>
                            <td>德莱文</td>
                            <td>151123123</td>
                            <td>2017-10-20</td>
                            <td>？？？</td>
                            <td><a href="" style="color: grey">同意</a>/<a href="" style="color: orangered">拒绝</a></td>
                        </tr>
                        <tr>
                            <td>德莱文</td>
                            <td>151123123</td>
                            <td>2017-10-20</td>
                            <td>？？？</td>
                            <td><a href="" style="color: grey">同意</a>/<a href="" style="color: orangered">拒绝</a></td>
                        </tr>
                        <tr>
                            <td>德莱文</td>
                            <td>151123123</td>
                            <td>2017-10-20</td>
                            <td>？？？</td>
                            <td><a href="" style="color: grey">同意</a>/<a href="" style="color: orangered">拒绝</a></td>
                        </tr>
                        <tr>
                            <td>德莱文</td>
                            <td>151123123</td>
                            <td>2017-10-20</td>
                            <td>？？？</td>
                            <td><a href="" style="color: grey">同意</a>/<a href="" style="color: orangered">拒绝</a></td>
                        </tr>
                        </tr>
                        <tr>
                            <td>德莱文</td>
                            <td>151123123</td>
                            <td>2017-10-20</td>
                            <td>？？？</td>
                            <td><a href="" style="color: grey">同意</a>/<a href="" style="color: orangered">拒绝</a></td>
                        </tr>
                        <tr>
                            <td>德莱文</td>
                            <td>151123123</td>
                            <td>2017-10-20</td>
                            <td>？？？</td>
                            <td><a href="" style="color: grey">同意</a>/<a href="" style="color: orangered">拒绝</a></td>
                        </tr>
                        <tr>
                            <td>德莱文</td>
                            <td>151123123</td>
                            <td>2017-10-20</td>
                            <td>？？？</td>
                            <td><a href="" style="color: grey">同意</a>/<a href="" style="color: orangered">拒绝</a></td>
                        </tr>
                        <tr>
                            <td>德莱文</td>
                            <td>151123123</td>
                            <td>2017-10-20</td>
                            <td>？？？</td>
                            <td><a href="" style="color: grey">同意</a>/<a href="" style="color: orangered">拒绝</a></td>
                        </tr>
                        <tr>
                            <td>德莱文</td>
                            <td>151123123</td>
                            <td>2017-10-20</td>
                            <td>？？？</td>
                            <td><a href="" style="color: grey">同意</a>/<a href="" style="color: orangered">拒绝</a></td>
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
<script src="../../js/jquery.min.js?v=2.1.4"></script>
<script src="../../js/bootstrap.min.js?v=3.3.6"></script>
<script src="../../js/content.min.js?v=1.0.0"></script>
<script src="../../js/plugins/toastr/toastr.min.js"></script>
<script src="../../js/mjy.js"></script>
</body>
</html>
