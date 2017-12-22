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


<!-- Mirrored from www.zi-han.net/theme/hplus/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:16:41 GMT -->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <title>主页</title>
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
                    <a href="user-jmpHomepage"><span class="lzf_b">首页</span></a> >><a href="user-jmpCurrentProjectList"><span class="lzf_b">当前项目</span></a>
                    >><a href="project-jmpProjectInfo"><span class="lzf_b">项目信息</span></a>
                </strong>
            </li>
        </ol>
    </div>
    <div id="page-wrapper" class="dashbard-1">

        <div>
            <div class="form-group col-sm-1">
                <a href=""><button class="btn btn-w-m btn-info">讨论区</button></a>
                <a href="project-jmpProjectMember"><button class="btn btn-w-m btn-info" style="margin-top: 30px">成员管理</button></a>
            </div>
            <div class="col-md-offset-2"style="margin-top: 50px">
                <a class="zFont5" >信息管理系统项目 </a>
            </div>

            <div class="form-group col-md-offset-2">
                <div class="form-group col-md-11">
                    <label class="col-sm-1 control-label zFont2"style="margin-top:50px">创建日期</label>
                    <div class="col-sm-4" style="margin-top:50px">
                        <input name="" class="form-control inputOpacity zFont3" placeholder="2017-07-19" type="text">
                    </div>
                    <label class="col-sm-1 control-label zFont2"style="margin-top:50px">所属机构</label>
                    <div class="col-sm-5" style="margin-top:50px">
                        <input name="" class="form-control inputOpacity zFont3" placeholder="湖南大学" type="text">
                    </div>
                </div>

                <div class="form-group col-md-10">
                    <label class="col-sm-1 control-label zFont2">更新日期</label>
                    <div class="col-sm-4">
                        <input name="" class="form-control inputOpacity zFont3" placeholder="2017-07-19 18:23" type="text">
                    </div>
                </div>

                <div class="form-group col-md-11">
                    <label class="col-sm-1 control-label zFont2">项目组长</label>
                    <div class="col-sm-4">
                        <input name="" class="form-control inputOpacity zFont3" placeholder="vivian" type="text">
                    </div>
                    <label class="col-sm-1 control-label zFont2">副组长</label>
                    <div class="col-sm-5">
                        <input name="" class="form-control inputOpacity zFont3" placeholder="妮娜 彭于晏" type="text">
                    </div>
                </div>

                <div class="form-group col-md-10">
                    <label class="col-sm-1 control-label zFont2">小组成员</label>
                    <div class="col-sm-3">
                        <textarea class="form-control col-md-4 inputOpacity zFont3" cols="5" style="resize:none" >李元芳，狄仁杰，霍建华，李小英，刘诗诗，高晓松</textarea>
                    </div>
                </div>
                <div class="form-group col-md-11">
                    <table class="table">
                        <thead>
                        <tr>
                            <th width="14%">名称</th>
                            <th class="col-sm-2">发布时间</th>
                            <th class="col-sm-1"style="margin-left: 10px">发布人</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td >信息管理系统v1.0</td>
                            <td>2017-7-9 16:59:23</td>
                            <td>Vivian</td>
                            <td>
                                <button type="button" class="btn btn-primary btn-xs" >下载</button>
                                <button type="button" class="btn btn-primary btn-xs" >删除</button>
                            </td>
                        </tr>
                        <tr>
                            <td>信息管理系统v1.0</td>
                            <td>2017-7-12 13:23:23</td>
                            <td>妮娜</td>
                            <td>
                                <button type="button" class="btn btn-primary btn-xs">下载</button>
                                <button type="button" class="btn btn-primary btn-xs">删除</button>
                            </td>

                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>

        </div>

    </div>
    <!--右侧部分结束-->
</div>
<script src="../../js/jquery.min.js?v=2.1.4"></script>
<script src="../../js/bootstrap.min.js?v=3.3.6"></script>
<script src="../../js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="../../js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="../../js/plugins/layer/layer.min.js"></script>
<script src="../../js/hplus.min.js?v=4.1.0"></script>
<script type="text/javascript" src="../../js/contabs.min.js"></script>
<script src="../../js/plugins/pace/pace.min.js"></script>
</body>


<!-- Mirrored from www.zi-han.net/theme/hplus/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:17:11 GMT -->
</html>

