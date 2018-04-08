<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2017/12/12
  Time: 20:08
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2017/11/28
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>


<!-- Mirrored from www.zi-han.net/theme/hplus/empty_page.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:52 GMT -->
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>模板页面</title>
    <link rel="shortcut icon" href="favicon.ico"> <link href="<%=basePath %>/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="<%=basePath %>/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">

    <!-- Sweet Alert -->
    <link href="css/plugins/sweetalert/sweetalert.css" rel="stylesheet">

    <link href="<%=basePath %>/css/animate.min.css" rel="stylesheet">
    <link href="<%=basePath %>/css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <link href="<%=basePath %>/css/plugins/toastr/toastr.min.css" rel="stylesheet">
    <link href="<%=basePath %>/css/plugins/summernote/summernote.css" rel="stylesheet">
    <link href="<%=basePath %>/css/plugins/summernote/summernote-bs3.css" rel="stylesheet">
    <link href="<%=basePath %>/css/plugins/summernote/summernote-bs4.css" rel="stylesheet">
    <link href="<%=basePath %>/css/plugins/summernote/summernote-lite.css" rel="stylesheet">
    <link href="<%=basePath %>/css/mjy.css" rel="stylesheet">

    <link href="<%=basePath %>/css/plugins/bootstrap-fileinput/fileinput.min.css" rel="stylesheet">

</head>

<body class="gray-bg">
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
                >><a href="project-jmpProjectInfo"><span class="lzf_b">项目信息</span></a> >>
                需求文档
            </strong>
        </li>
    </ol>
</div>

<div class="wrapper wrapper-content">
    <div class="row">
        <div class="col-sm-12 " style="margin-left: 10px;margin-top: 20px">
            <div class="col-sm-2 " >
                <nav class="navbar-default navbar-static-side" role="navigation">
                    <div class="nav-close"><i class="fa fa-times-circle"></i>
                    </div>
                    <div class="sidebar-collapse ">
                        <ul class="nav" id="side-menu">
                            <div class="ibox-title" style="border-bottom: solid #e7eaec thin">

                                <li class="li_head black" style="text-align: left">
                                    <button class="btn btn-outline btn-success btn-xs"  onclick="window.location.href='project-jmpProjectInfo'" ><i class="fa fa-home"></i></button>
                                 <strong class="font-bold col-md-offset-2  " style="text-align: center">需求开发文档</strong>
                                    <input style="display: none" value="${requestScope.documentId}" id="documentId">
                                    <input style="display: none" value="${requestScope.projectId}" id="projectId">
                                    <input style="display: none" value="${requestScope.state}" id="state">
                                </li>
                                <li class="li_fun">
                                    <s:if test="#request.rank!=5&&#request.state==0">
                                    <span class="li_rename li_fa fa col-md-offset-1  fa-pencil-square-o black"   title="重命名" data-toggle="modal" data-target="#myModal3"></span>
                                    <span class="li_add li_fa fa col-md-offset-1  fa-plus black"   title="新增目录"></span>
                                    <span class="li_add_hidden li_fa fa col-md-offset-1  fa-plus black" style="display: none" data-toggle="modal" data-target="#myModal"></span>
                                    <span class="li_up li_fa fa col-md-offset-1  fa-arrow-up black" title="上移目录"></span>
                                    <span class="li_down fa li_fa col-md-offset-1  fa-arrow-down black" title="下移目录"></span>
                                    <span class="li_delete li_fa fa col-md-offset-1  fa-times showtoastr black" title="删除目录"></span>
                                    </s:if>

                                    <div class="modal inmodal" id="myModal" tabindex="-1" role="dialog" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content animated bounceInRight">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">关闭</span>
                                                    </button>
                                                    <i class="fa fa-plus modal-icon"></i>
                                                    <h4 class="modal-title">新增模块</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="form-group"><label>模块名称</label>
                                                        <input name="add_title" id="add_title" placeholder="请输入模块名称" class="form-control"></div>
                                                    <div class="form-group">
                                                        <label>模板类型：</label>
                                                        <div class="form-group">
                                                            <select class="form-control" name="add_id_template" id="add_id_template">
                                                                <option value="1">纯文本</option>
                                                                <option value="2">用户</option>
                                                                <option value="3">用例</option>
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class=""><label class="">模块位置</label>
                                                        <div class="form-group">
                                                            <div class="col-md-3  .col-md-offset-1">
                                                                <input type="radio" name="add_place" id="place1" value="0"><label for="place1">当前级别</label></div>
                                                            <div class="col-md-3 .col-md-offset-1">
                                                                <input type="radio" name="add_place" id="place2" value="1"><label for="place2">子一级</label></div>
                                                        </div>
                                                    </div>



                                                </div>

                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
                                                    <button type="button" class="btn btn-primary showtoastr" onclick="catalogAdd()" data-dismiss="modal">新增</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="modal inmodal" id="myModal2" tabindex="-1" role="dialog" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content animated bounceInRight">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">关闭</span>
                                                    </button>
                                                    <i class="fa fa-plus modal-icon"></i>
                                                    <h4 class="modal-title">新增模块</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="form-group"><label>模块名称</label>
                                                        <input name="add_title" id="new_title" placeholder="请输入模块名称" class="form-control"></div>
                                                    <div class="form-group">
                                                        <label>模板类型：</label>
                                                        <div class="form-group">
                                                            <select class="form-control" name="add_id_template" id="new_id_template">
                                                                <option value="1">纯文本</option>
                                                                <option value="2">用户</option>
                                                                <option value="3">用例</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
                                                    <button type="button" class="btn btn-primary showtoastr" onclick="catalogNew()" data-dismiss="modal">新增</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="modal inmodal" id="myModal3" tabindex="-1" role="dialog" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content animated bounceInRight">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">关闭</span>
                                                    </button>
                                                    <i class="fa fa-pencil-square-o modal-icon"></i>
                                                    <h4 class="modal-title">修改名称</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="form-group"><label>模块名称</label>
                                                        <input name="re_title" id="re_title" placeholder="请输入模块名称" class="form-control"></div>
                                                </div>

                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
                                                    <button type="button" class="btn btn-primary showtoastr" onclick="catalogRename()" data-dismiss="modal">修改</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </li>
                            </div>
                            <div id="allIndex">
                                <div class="spiner-example">
                                    <div class="sk-spinner sk-spinner-three-bounce">
                                        <div class="sk-bounce1"></div>
                                        <div class="sk-bounce2"></div>
                                        <div class="sk-bounce3"></div>
                                    </div>
                                        <%--<li class="li_head black">--%>
                                            <%--<button class="btn btn-primary  btn-xs"  data-toggle="modal" data-target="#myModal2">新建目录</button>--%>
                                        <%--</li>--%>

                                </div>
                        </div>

                        </ul>
                    </div>
                </nav>


            </div>
            <!--中间部分开始-->
            <div class="col-md-7" >
                <div class="main"><h2 id="catalog_title"></h2></div>
                <input id="id_catalog" style="display: none">
                <div class="row">
                    <div class="ibox float-e-margins">
                        <div class="catalogNoneContent" style="text-align: center">
                        <img src="<%=basePath %>/img/logo.png" style="height: 50%;width: 50%;margin: 10px 0px 5px 50px;"></div>
                        <div class="ibox-title catalogNotNoneContent" style="display:none;">
                            <s:if test="#request.rank!=5&&#request.state==0">
                            <div class="ibox-tools ">
                                <i class="fa fa-commenting modal-icon discussButton" id="discussButton" style="color: #6D8389" onclick="disReload()"  data-toggle="modal" data-target="#myModal1" > </i>
                                <button id="edit" class="btn btn-primary btn-xs m-l-sm" onclick="temp_edit()" type="button">编辑</button>
                                <button id="save" class="btn btn-primary  btn-xs m-l-sm" onclick="temp_save()" type="button" style="display:none;">保存</button>
                            </div>
                            </s:if>
                        </div>
                        <div class="ibox-content form-horizontal content catalogNotNoneContent" style="display:none">
                        </div>

                    </div>
                </div>
            </div>

            <div class="modal inmodal" id="myModal1" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content animated bounceInRight">

                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">关闭</span>
                            </button>
                            <h4 class="modal-title">模块留言</h4>
                        </div>

                        <div class="modal-body">
                            <!--自己的留言开始-->
                            <div class="row">
                                <div class="ibox float-e-margins">
                                    <div class="ibox-title">
                                        <h5>我的留言</h5>
                                        <div class="ibox-tools">
                                            <button  class="btn btn-primary  btn-xs col-lg-push-1" onclick="commitDis()" type="button" style="margin-right: 10px">发布</button>
                                        </div>
                                    </div>
                                    <div class="ibox-content">
                                        <div class="click2edit wrapper discuss">
                                        </div>
                                        <%--文件上传--%>
                                        <div class="file-loading">
                                            <!-- The file input field used as target for the file upload widget -->
                                            <input id="fileupload" name="MyFile" type="file" class="file" multiple data-msg-placeholder="选择要上传的文件">
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <!--自己的留言结束-->
                            <div class="allDiscuss">
                            <!--一行留言-->
                            <div class="row">
                                <div class="ibox float-e-margins " style="margin-bottom: 10px">
                                    <div class="ibox-title">
                                        <h5></h5>
                                        <input style="display: none" class="id_dis">
                                        <button  class="btn btn-danger  btn-xs col-lg-push-1 m-l-sm deleteDis"  type="button" style="margin-top: -3px">删除</button>
                                        <%--<div class="ibox-tools">--%>
                                            <%--<i class="fa fa-file-text-o " style="color: #26d7d9"  title="下载"> 附件：内容摘要.doc</i>--%>
                                        <%--</div>--%>
                                    </div>
                                    <div class="ibox-content">
                                        <div class=" wrapper">
                                        </div>



                                    </div>
                                </div>
                            </div>
                            <!--一行留言结束-->
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
                        </div>
                    </div>
                </div>
            </div>
            <!--中间部分结束-->
            <!--右侧部分开始-->
            <s:if test="#request.state==0">
            <div class="col-sm-3" >
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>构件库</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content form-horizontal">
                        <!--构件库中间部分开始-->
                        <div class="form-group">
                            <label style="padding-left: 15px">选择构建类型</label>
                            <select class="form-control" name="structType" id="structType">
                                <option  selected disabled>请选择构建库类型</option>
                                <option value="1">通用模板构件库</option>
                                <option value="2">用户模板构件库</option>
                                <option value="3">用例模板构件库</option>
                            </select>
                            <br>
                            <div class="alert alert-info" id="noneLibrary" style="display: none;">
                                暂无该类型的收藏
                            </div>
                            <div class="libraryDiv" style="display: none;">
                                <label style="padding-left: 15px">选择构建库</label>
                                <select class="form-control" name="libraryList" id="libraryList" >
                                    <option selected disabled>请选择构件库</option>
                                </select>
                            </div>
                        </div>
                        <table  class=" col-sm-12 structTable" style="display: none;">
                            <thead>
                            <tr><th class="col-sm-6 text-muted">构件名</th><th class="col-sm-6 text-muted"> 操作</th></tr>
                            </thead>

                        </table>
                        <h6>
                            <small>.</small>
                        </h6>
                    </div>
                </div>
            </div>
            </s:if>
            <!--右侧部分结束-->
        </div>
    </div>

</div>



</body>
<script src="<%=basePath %>/js/jquery.min.js?v=2.1.4"></script>
<script src="<%=basePath %>/js/bootstrap.min.js?v=3.3.6"></script>
<script src="<%=basePath %>/js/content.min.js?v=1.0.0"></script>
<script src="<%=basePath %>/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="<%=basePath %>/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="<%=basePath %>/js/plugins/layer/layer.min.js"></script>
<script src="<%=basePath %>/js/hplus.min.js?v=4.1.0"></script>
<script type="text/javascript" src="<%=basePath %>/js/contabs.min.js"></script>
<%--<script src="<%=basePath %>/js/plugins/pace/pace.min.js"></script>--%>
<script src="<%=basePath %>/js/plugins/toastr/toastr.min.js"></script>

<%--<script src="<%=basePath %>/js/template3.js"></script>--%>
<script src="<%=basePath %>/js/plugins/sweetalert/sweetalert.min.js"></script>
<script src="<%=basePath %>/js/plugins/summernote/summernote.min.js"></script>
<script src="<%=basePath %>/js/plugins/summernote/summernote-zh-CN.js"></script>
<script src="<%=basePath %>/js/plugins/summernote/summernote-bs4.min.js"></script>
<script src="<%=basePath %>/js/plugins/summernote/summernote-lite.js"></script>
<%--文件--%>
<script src="<%=basePath %>/js/plugins/bootstrap-fileinput/fileinput.js"></script>
<script src="<%=basePath %>/js/plugins/bootstrap-fileinput/plugins/sortable.min.js"></script>
<script src="<%=basePath %>/js/plugins/bootstrap-fileinput/locales/zh.js"></script>

<script src="<%=basePath %>/js/mjy.js"></script>
<script src="<%=basePath %>/js/template.js"></script>

</html>
