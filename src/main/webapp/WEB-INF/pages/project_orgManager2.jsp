<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <title>机构项目管理</title>
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
                    <a href="user-jmpHomepage">首页</a> >><a href="myOrganization-jmpOrgManager1">机构管理</a>>>查看项目
                </strong>
            </li>
        </ol>
    </div>
    <div class="form-group col-md-2">
        <ul class="nav navbar">
            <li>
                <a href="myOrganization-jmpOrgManager1"><button class="btn-primary btn">成员管理</button></a>
            </li>
            <li>
                <a href="myOrganization-jmpOrgManager2"><button class="btn-warning btn">查看项目</button></a>
            </li>
        </ul>
    </div>
    <div style="margin-left: -60px" class="col-md-10">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>当前项目</h5>
            </div>
            <div class="ibox-content">

                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th class="col-sm-2">项目名</th>
                        <th class="col-sm-2">项目组长</th>
                        <th class="col-sm-2">联系方式</th>
                        <th class="col-sm-2">创建时间</th>
                        <th class="col-sm-3">人员数</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td >快易</td>
                        <td>组长</td>
                        <td>123@qq.com</td>
                        <td>15236456987</td>
                        <td>
                            1
                        </td>
                    </tr>
                    <tr>
                        <td >快易</td>
                        <td>组长</td>
                        <td>123@qq.com</td>
                        <td>15236456987</td>
                        <td>
                            1
                        </td>
                    </tr>
                    <tr>
                        <td >快易</td>
                        <td>组长</td>
                        <td>123@qq.com</td>
                        <td>15236456987</td>
                        <td>
                            1
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
                <h5>历史项目</h5>
            </div>
            <div class="ibox-content">

                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th class="col-sm-2">项目名</th>
                        <th class="col-sm-2">项目组长</th>
                        <th class="col-sm-2">联系方式</th>
                        <th class="col-sm-2">结束时间</th>
                        <th class="col-sm-3"></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td >快易</td>
                        <td>赖菜李</td>
                        <td>1511157</td>
                        <td>昨天</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td >快易</td>
                        <td>赖菜李</td>
                        <td>1511157</td>
                        <td>昨天</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td >快易</td>
                        <td>赖菜李</td>
                        <td>1511157</td>
                        <td>昨天</td>
                        <td></td>
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
<script src="../../js/jquery.min.js?v=2.1.4"></script>
<script src="../../js/bootstrap.min.js?v=3.3.6"></script>
<script src="../../js/content.min.js?v=1.0.0"></script>
<script src="../../js/plugins/toastr/toastr.min.js"></script>
<script src="../../js/mjy.js"></script>
</body>
</html>
