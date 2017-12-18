<%--
  Created by IntelliJ IDEA.
  User: zhiweixu
  Date: 17/12/2017
  Time: 19:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>当前项目</title>
    <link rel="shortcut icon" href="../example/favicon.ico"> <link href="../css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="../../css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">

    <link href="../../css/animate.min.css" rel="stylesheet">
    <link href="../../css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <link href="../../css/z_style.css" rel="stylesheet">

</head>

<body class="gray-bg animated fadeInDown">
<div id="page-wrapper" class="gray-bg dashbard-1">
    <div class=" row wrapper white-bg">
        <ol class="breadcrumb" style="margin-left: 40px">
            <li style="font-size: 15px">
                <strong>
                    <a href="user-jmpHomepage"><span class="lzf_b">首页</span></a> >><a href="user-jmpCurrentProjectList"><span class="lzf_b">当前项目</span></a>
                </strong>
            </li>
        </ol>
    </div>

    <div class="ibox-content">
        <div class="row m-b-sm m-t-sm">
            <div class="col-md-1">
                <button type="button" id="loading-example-btn" class="btn btn-white btn-sm">
                    <i class="fa fa-refresh"></i> Refresh
                </button>
            </div>
            <div class="col-md-11">
                <div class="input-group">
                    <input type="text" placeholder="请输入项目名称" class="input-sm form-control">
                    <span class="input-group-btn">
                        <button type="button" class="btn btn-sm btn-primary"> 搜索</button>
                    </span>
                </div>
            </div>
        </div>

        <div class="ibox-content">
            <div class="bootstrap-table">
                <table class="table table-striped table-hover">
                    <thead>
                    <tr>

                        <th></th>
                        <th>项目</th>
                        <th>所属机构</th>
                        <th>项目组长</th>
                        <th>当前版本</th>
                        <th>创建日期</th>
                        <th>发布日期</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>
                            <div class="icheckbox_square-green" style="position: relative;"><input type="checkbox" checked="" class="i-checks" name="input[]" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                        </td>
                        <td>
                            <a href="project-jmpProjectInfo"><span>米莫说｜MiMO Show</span></a>
                            <span class="label label-warning">我是组长</span>
                        </td>
                        <td>湖南大学</td>
                        <td>py</td>
                        <td class="text-info">V2.0</td>
                        <td>2017-11-11</td>
                        <td>2017-11-30</td>
                        <td>
                            <button class="btn btn-success text-center btn-xs">讨论区<sup>&nbsp;●</sup></button>
                            <button class="btn btn-success text-center btn-xs " style="left: 10px">进入编辑</button>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="icheckbox_square-green" style="position: relative;"><input type="checkbox" class="i-checks" name="input[]" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                        </td>
                        <td>
                            <span>蘑菇街</span>
                            <span class="label label-info">我是组员</span>
                        </td>
                        <td>湖南大学</td>
                        <td>py</td>
                        <td>V2.0</td>
                        <td>2017-11-11</td>
                        <td>2017-11-30</td>
                        <td>
                            <button class="btn btn-success text-center btn-xs">讨论区<sup>&nbsp;●</sup></button>
                            <button class="btn btn-success text-center btn-xs " style="left: 10px">进入编辑</button>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="icheckbox_square-green" style="position: relative;"><input type="checkbox" class="i-checks" name="input[]" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                        </td>
                        <td>天狼---智能硬件项目</td>
                        <td>湖南大学</td>
                        <td>py</td>
                        <td>V2.0</td>
                        <td>2017-11-11</td>
                        <td>2017-11-30</td>
                        <td>
                            <button class="btn btn-success text-center btn-xs">讨论区<sup>&nbsp;●</sup></button>
                            <button class="btn btn-success text-center btn-xs " style="left: 10px">进入编辑</button>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="icheckbox_square-green" style="position: relative;"><input type="checkbox" class="i-checks" name="input[]" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                        </td>
                        <td>线下超市+线上商城+物流配送互联系统</td>
                        <td>湖南大学</td>
                        <td>py</td>
                        <td>V2.0</td>
                        <td>2017-11-11</td>
                        <td>2017-11-30</td>
                        <td>
                            <button class="btn btn-success text-center btn-xs">讨论区<sup>&nbsp;●</sup></button>
                            <button class="btn btn-success text-center btn-xs " style="left: 10px">进入编辑</button>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>

        </div>
    </div>


</div>
<script src="../../js/jquery.min.js?v=2.1.4"></script>
<script src="../../js/bootstrap.min.js?v=3.3.6"></script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>


<!-- Mirrored from www.zi-han.net/theme/hplus/404.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:52 GMT -->
</html>
