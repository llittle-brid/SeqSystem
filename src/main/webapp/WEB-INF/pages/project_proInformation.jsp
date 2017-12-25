<%@ page import="org.apache.struts2.json.annotations.JSON" %>
<%@ page import="com.google.gson.Gson" %>
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
    <link href="../../css/z_style.css" rel="stylesheet">
</head>

<body class="gray-bg animated fadeInDown">
<div class="animated fadeInDown">
    <div class=" row wrapper white-bg">
        <ol class="breadcrumb" style="margin-left: 40px">
            <li style="font-size: 15px">
                <strong>
                    <a href="user-jmpHomepage"><span class="lzf_b">首页</span></a> >><a href="user-jmpCurrentProjectList">>当前项目<span class="lzf_b"></span></a>
                    >><a href="project-jmpProjectInfo?id_Project=<%=request.getParameter("id_Project")%>"><span class="lzf_b">项目信息</span></a>
                </strong>
            </li>
        </ol>
    </div>
    <div id="page-wrapper" class="dashbard-1">

        <%--<div class="form-group col-sm-1">--%>
            <%--<a href=""><button class="btn btn-w-m btn-info">讨论区</button></a>--%>
            <%--<a href="project-jmpProjectMember"><button class="btn btn-w-m btn-info" style="margin-top: 30px">成员管理</button></a>--%>
        <%--</div>--%>
        <%--<div class="col-md-offset-2"style="margin-top: 50px">--%>
            <%--<a class="zFont3" >--%>
                <%--<%=request.getParameter("id_Project")%>--%>
            <%--</a>--%>
        <%--</div>--%>
        <div class="ibox-content">
            <div class="row">
                <div class="col-sm-12">
                    <div class="m-b-md">
                        <a href="project-" class="btn btn-white btn-xs pull-right">编辑文档</a>
                        <h2>
                            <script>
                                JSON.parse(<%= new Gson().toJson(request.getParameter("project"))%>)
                            </script>
                        </h2>
                    </div>
                    <dl class="dl-horizontal">
                        <dt>状态：</dt>
                        <dd><span class="label label-primary">进行中</span>
                        </dd>
                    </dl>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-5">
                    <dl class="dl-horizontal">

                        <dt>项目经理：</dt>
                        <dd>Beaut-zihan</dd>
                        <dt>消息：</dt>
                        <dd>162</dd>
                        <dt>客户：</dt>
                        <dd>
                            <a href="project_detail.html#" class="text-navy"> 百度</a>
                        </dd>
                        <dt>版本：</dt>
                        <dd>v1.4.2</dd>
                    </dl>
                </div>
                <div class="col-sm-7" id="cluster_info">
                    <dl class="dl-horizontal">

                        <dt>最后更新：</dt>
                        <dd>2014年 11月7日 22:03</dd>
                        <dt>创建于：</dt>
                        <dd>2014年 2月16日 03:01</dd>
                        <dt>团队成员：</dt>
                        <dd class="project-people">
                            <a href="project_detail.html">
                                <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a3.jpg">
                            </a>
                            <a href="project_detail.html">
                                <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a1.jpg">
                            </a>
                            <a href="project_detail.html">
                                <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a2.jpg">
                            </a>
                            <a href="project_detail.html">
                                <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a4.jpg">
                            </a>
                            <a href="project_detail.html">
                                <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a5.jpg">
                            </a>
                        </dd>
                    </dl>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <dl class="dl-horizontal">
                        <dt>当前进度</dt>
                        <dd>
                            <div class="progress progress-striped active m-b-sm">
                                <div style="width: 60%;" class="progress-bar"></div>
                            </div>
                            <small>当前已完成项目总进度的 <strong>60%</strong></small>
                        </dd>
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
                                        <a href="project_detail.html#tab-1" data-toggle="tab">讨论区</a>
                                    </li>
                                    <li class="">
                                        <a href="project_detail.html#tab-2" data-toggle="tab">成员管理</a>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="panel-body">

                            <div class="tab-content">
                                <div class="tab-pane active" id="tab-1">
                                    <div class="feed-activity-list">
                                        <div class="feed-element">
                                            <a href="profile.html#" class="pull-left">
                                                <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a1.jpg">
                                            </a>
                                            <div class="media-body ">
                                                <small class="pull-right text-navy">1天前</small>
                                                <strong>奔波儿灞</strong> 关注了 <strong>灞波儿奔</strong>. <br>
                                                <small class="text-muted">54分钟前 来自 皮皮时光机</small>
                                                <div class="actions">
                                                    <a class="btn btn-xs btn-white">
                                                        <i class="fa fa-thumbs-up"></i> 赞
                                                    </a>
                                                    <a class="btn btn-xs btn-danger"><i class="fa fa-heart"></i>
                                                        收藏
                                                    </a>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="feed-element">
                                            <a href="profile.html#" class="pull-left">
                                                <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/profile.jpg">
                                            </a>
                                            <div class="media-body ">
                                                <small class="pull-right">5分钟前</small>
                                                <strong>作家崔成浩</strong> 发布了一篇文章 <br>
                                                <small class="text-muted">今天 10:20 来自 iPhone 6 Plus</small>

                                            </div>
                                        </div>

                                        <div class="feed-element">
                                            <a href="profile.html#" class="pull-left">
                                                <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a2.jpg">
                                            </a>
                                            <div class="media-body ">
                                                <small class="pull-right">2小时前</small>
                                                <strong>作家崔成浩</strong> 抽奖中了20万 <br>
                                                <small class="text-muted">今天 09:27 来自 Koryolink iPhone</small>
                                                <div class="well">
                                                    抽奖，人民币2000元，从转发这个微博的粉丝中抽取一人。11月16日平台开奖。随手一转，万一中了呢？
                                                </div>
                                                <div class="pull-right">
                                                    <a class="btn btn-xs btn-white">
                                                        <i class="fa fa-thumbs-up"></i> 赞
                                                    </a>
                                                    <a class="btn btn-xs btn-white"><i class="fa fa-heart"></i>
                                                        收藏
                                                    </a>
                                                    <a class="btn btn-xs btn-primary">
                                                        <i class="fa fa-pencil"></i> 评论
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="feed-element">
                                            <a href="profile.html#" class="pull-left">
                                                <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a3.jpg">
                                            </a>
                                            <div class="media-body ">
                                                <small class="pull-right">2天前</small>
                                                <strong>天猫</strong> 上传了2张图片 <br>
                                                <small class="text-muted">11月7日 11:56 来自 微博 weibo.com</small>
                                                <div class="photos">
                                                    <a target="_blank" href="http://24.media.tumblr.com/20a9c501846f50c1271210639987000f/tumblr_n4vje69pJm1st5lhmo1_1280.jpg">
                                                        <img alt="image" class="feed-photo" src="http://ozwpnu2pa.bkt.clouddn.com/p1.jpg">
                                                    </a>
                                                    <a target="_blank" href="http://37.media.tumblr.com/9afe602b3e624aff6681b0b51f5a062b/tumblr_n4ef69szs71st5lhmo1_1280.jpg">
                                                        <img alt="image" class="feed-photo" src="http://ozwpnu2pa.bkt.clouddn.com/p3.jpg">
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="feed-element">
                                            <a href="profile.html#" class="pull-left">
                                                <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a4.jpg">
                                            </a>
                                            <div class="media-body ">
                                                <small class="pull-right text-navy">5小时前</small>
                                                <strong>在水一方Y</strong> 关注了 <strong>那二十年的单身</strong>. <br>
                                                <small class="text-muted">今天 10:39 来自 iPhone客户端</small>
                                                <div class="actions">
                                                    <a class="btn btn-xs btn-white">
                                                        <i class="fa fa-thumbs-up"></i> 赞
                                                    </a>
                                                    <a class="btn btn-xs btn-white"><i class="fa fa-heart"></i>
                                                        收藏
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="tab-pane" id="tab-2">

                                    <table class="table table-striped">
                                        <thead>
                                        <tr>
                                            <th>状态</th>
                                            <th>标题</th>
                                            <th>开始时间</th>
                                            <th>结束时间</th>
                                            <th>说明</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>
                                                <span class="label label-primary"><i class="fa fa-check"></i> 已完成</span>
                                            </td>
                                            <td>
                                                文档在线预览功能
                                            </td>
                                            <td>
                                                11月7日 22:03
                                            </td>
                                            <td>
                                                11月7日 20:11
                                            </td>
                                            <td>
                                                <p class="small">
                                                    已经测试通过 </p>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td>
                                                <span class="label label-primary"><i class="fa fa-check"></i> 解决中</span>
                                            </td>
                                            <td>
                                                会员登录
                                            </td>
                                            <td>
                                                11月7日 22:03
                                            </td>
                                            <td>
                                                11月7日 20:11
                                            </td>
                                            <td>
                                                <p class="small">
                                                    测试中 </p>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td>
                                                <span class="label label-primary"><i class="fa fa-check"></i> 解决中</span>
                                            </td>
                                            <td>
                                                会员积分
                                            </td>
                                            <td>
                                                11月7日 22:03
                                            </td>
                                            <td>
                                                11月7日 20:11
                                            </td>
                                            <td>
                                                <p class="small">
                                                    未测试 </p>
                                            </td>

                                        </tr>


                                        </tbody>
                                    </table>

                                </div>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>

    </div>
    <!--右侧部分结束-->
</div>
<script src="../../js/jquery.min.js?v=2.1.4"></script>
<script src="../../js/bootstrap.min.js?v=3.3.6"></script>
<script src="../../js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script src="../../js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="../../js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="../../js/plugins/layer/layer.min.js"></script>
<script src="../../js/hplus.min.js?v=4.1.0"></script>
<script type="text/javascript" src="../../js/contabs.min.js"></script>
<script src="../../js/plugins/pace/pace.min.js"></script>
<script>
    $('#infomation').bootstrapTable({
            columns: [
                {
                    title: '项目ID',
                    field: 'id_Project',
                    align: 'center',
                    valign: 'middle'
                },
                {
                    field: 'name',
                    title: '项目名称',
                    sortable: true,
                    align: 'center',
                }, {
                    field: 'date',
                    title: '创建日期',
                    sortable: true,
                    align: 'center'
                },
                {
                    field: 'document_Name',
                    title: '文档名称',
                    align: 'center'
                }, {
                    field: 'id_Organization',
                    title: '所属机构',
                    sortable: true,
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
    $.ajax(
        {
            type:"GET",
            url:"project-showCurrentList",
            dataType:"json",
            success:function(json){
                var proList = JSON.parse(json.res);
                //finishingTask为table的id
                $('#finishingTask').bootstrapTable('load',proList);
            },
            error:function(){
                alert("错误");
            }
        }
    );
</script>
</body>


</html>

