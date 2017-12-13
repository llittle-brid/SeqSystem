<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

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

    <link rel="shortcut icon" href="/example/favicon.ico">
    <link href="/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="/css/animate.min.css" rel="stylesheet">
    <link href="/css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <link href="/css/lzf.css" rel="stylesheet">
    <style>
        a   {color: black}
        a:link {color:grey;} /*未访问颜色*/
        a:visited {color:gray;} /*已访问颜色*/
        a:hover {color:grey;} /*悬浮（鼠标经过）时颜色*/
        a:active {color:beige;} /*点击时的颜色*/
    </style>
    <script>
        var timer1=null;
        function toshow() {
            clearTimeout(timer1);
            component_menu.style.display='block';
        };
        function tomiss() {
            timer1=setTimeout(function () {
                component_menu.style.display='none';
            },500);
            component_menu.onmouseover=function() {
                clearTimeout(timer1);
            }
            component_menu.onmouseout=function () {
                timer1=setTimeout(function () {
                    div1.style.display='none';
                },500);

            }
        };
    </script>
</head>
<body class="fixed-sidebar  gray-bg" style="overflow:hidden">
<div id="wrapper" style="padding: 0px" class="wrapper wrapper-content animated fadeInDown gray-bg">

    <div id="next1" style="width: 100%;margin: 0 auto;font-weight: 400" class="gray-bg">
        <div class=" row wrapper white-bg" >
            <ol class="breadcrumb" style="margin-left: 50px">
                <li style="font-size: 15px">
                    <strong>
                        <a href="user-jmpHomepage"><span class="lzf_b">首页</span></a> >><a href="user-jmpLibrary"><span class="lzf_b">构件库</span></a>
                    </strong>
                </li>
            </ol>
        </div>
        <div id="main" style="margin-top:10px">
            <div id="head" style="width:100%;height: 70px;font-size:x-small;margin: 0 auto">
                <div style="float: left;height: 60px;padding: 20px 20px 0px 20px" class="col-md-4">
                    <div style="float: left;margin: 0px 0px 0px 50px">
                        <div id="choose_menu">
                            <div style="font-size: 18px;color: black" onmouseover="toshow()" onmouseout="tomiss()">官方构件库</div>
                        </div>
                        <div id="component_choose" style="border-top: red solid 1.7px;  position: absolute;width: 90px;height: 200px;z-index: 999;overflow: hidden;margin-top: 6px">
                            <div id="component_menu" style="background-color:lightgrey;width: 90px;height: 150px;margin-top:-5px;display:none">
                                <ul style="list-style: none;text-align: center;padding: 0px" role="menu">
                                    <li style="margin: 5px" class="J_tabShowActive">
                                        <a href="user-jmpLibrary"><span class="lzf_a" style="font-size: 18px ">全部</span></a>
                                    </li>
                                    <li style="margin: 5px" class="J_tabShowActive">
                                        <a href="user-jmpCommonlibrary" ><span class="lzf_a" style="font-size: 18px ">通用</span></a>
                                    </li>
                                    <li style="margin: 5px" class="J_tabShowActive">
                                        <a href="user-jmpUserlibrary"><span class="lzf_a" style="font-size: 18px ">用户</span></a>
                                    </li>
                                    <li style="margin: 5px" class="J_tabShowActive">
                                        <a href="user-jmpCaselibrary" ><span class="lzf_a" style="font-size: 18px "><u>用例</u></span></a>
                                    </li>
                                    <li style="margin: 5px" class="J_tabShowActive">
                                        <a href="user-jmpPicturelibrary" ><span class="lzf_a" style="font-size: 18px ">图片</span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div style="float: left;font-size:18px;width: 30px;text-align: center">|</div>
                    <div style="float: left">
                        <div style="float: left;font-size:18px;text-align: left;color: #999999">用户构件库</div>
                    </div>
                    <div style="float: left;font-size:18px;width: 30px;text-align: center">|</div>
                    <div style="float: left">
                        <div style="float: left;font-size:18px;text-align: left;color: black"><a href="user-jmpMycollect"><span class="lzf_a">我的收藏</span></a></div>
                    </div>
                </div>
                <div style="float: right;height: 50px" class="col-md-2">
                    <div style="margin:25px 0px 0px 10px;float: left"><img src="/img/magnifier.png" height="35px" width="35px"/></div>
                    <div style="margin:25px 0px 0px 20px;float: left"><img src="/img/downward.png" height="35" width="35"/></div>
                </div>
            </div>

            <div id="view" style="padding: 0px 70px 0px 70px;margin-top:30px">
                <div class="row">
                    <a  href="user-jmpCasecomponent"><div id="div1" class="col-sm-4">
                        <div class="contact-box">
                            <div>
                                <div style="margin: 10px 10px 10px 15px;float: left">
                                    <img src="/img/div3_1.png" height="80px" width="80px"/></div>
                                <div style="margin: 10px;float: left">
                                    <h3>OA系统用例构件库</h3>
                                    <p>贡献人：官方<br>发布时间：2017-12-28</p>
                                </div>
                                <div style="clear: both;margin: 0px 10px 0px 10px">
                                    <p>
                                        描述：包含OA系统大部分的用例图，结构图，流程图；包含组织机构管理的逻辑思维导图，编写不易，请给我点个赞哟。
                                    </p>
                                </div>
                                <div style="float: right;margin: 0px 3px 0px 0px">
                                    <ul>
                                        <li style="display: inline"><img src="/img/div1_2.png" height="20" width="20"/></li>
                                        <li style="display: inline"><img src="/img/div1_3.png" height="20" width="20"/></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div></a>
                    <a  href="user-jmpCasecomponent"><div id="div2" class="col-sm-4">
                        <div class="contact-box">
                            <div>
                                <div style="margin: 10px 10px 10px 15px;float: left">
                                    <img src="/img/div3_1.png" height="80px" width="80px"/></div>
                                <div style="margin: 10px;float: left">
                                    <h3>OA系统用例构件库</h3>
                                    <p>贡献人：官方<br>发布时间：2017-12-28</p>
                                </div>
                                <div style="clear: both;margin: 0px 10px 0px 10px">
                                    <p>
                                        描述：包含OA系统大部分的用例图，结构图，流程图；包含组织机构管理的逻辑思维导图，编写不易，请给我点个赞哟。
                                    </p>
                                </div>
                                <div style="float: right;margin: 0px 3px 0px 0px">
                                    <ul>
                                        <li style="display: inline"><img src="/img/div1_2.png" height="20" width="20"/></li>
                                        <li style="display: inline"><img src="/img/div1_3.png" height="20" width="20"/></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div></a>
                    <a  href="user-jmpCasecomponent"><div id="div3" class="col-sm-4">
                        <div class="contact-box">
                            <div>
                                <div style="margin: 10px 10px 10px 15px;float: left">
                                    <img src="/img/div3_1.png" height="80px" width="80px"/></div>
                                <div style="margin: 10px;float: left">
                                    <h3>OA系统用例构件库</h3>
                                    <p>贡献人：官方<br>发布时间：2017-12-28</p>
                                </div>
                                <div style="clear: both;margin: 0px 10px 0px 10px">
                                    <p>
                                        描述：包含OA系统大部分的用例图，结构图，流程图；包含组织机构管理的逻辑思维导图，编写不易，请给我点个赞哟。
                                    </p>
                                </div>
                                <div style="float: right;margin: 0px 3px 0px 0px">
                                    <ul>
                                        <li style="display: inline"><img src="/img/div1_2.png" height="20" width="20"/></li>
                                        <li style="display: inline"><img src="/img/div1_3.png" height="20" width="20"/></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div></a>
                    <a  href="user-jmpCasecomponent"><div id="div4" class="col-sm-4">
                        <div class="contact-box">
                            <div>
                                <div style="margin: 10px 10px 10px 15px;float: left">
                                    <img src="/img/div3_1.png" height="80px" width="80px"/></div>
                                <div style="margin: 10px;float: left">
                                    <h3>OA系统用例构件库</h3>
                                    <p>贡献人：官方<br>发布时间：2017-12-28</p>
                                </div>
                                <div style="clear: both;margin: 0px 10px 0px 10px">
                                    <p>
                                        描述：包含OA系统大部分的用例图，结构图，流程图；包含组织机构管理的逻辑思维导图，编写不易，请给我点个赞哟。
                                    </p>
                                </div>
                                <div style="float: right;margin: 0px 3px 0px 0px">
                                    <ul>
                                        <li style="display: inline"><img src="/img/div1_2.png" height="20" width="20"/></li>
                                        <li style="display: inline"><img src="/img/div1_3.png" height="20" width="20"/></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div></a>
                    <a  href="user-jmpCasecomponent"><div id="div5" class="col-sm-4">
                        <div class="contact-box">
                            <div>
                                <div style="margin: 10px 10px 10px 15px;float: left">
                                    <img src="/img/div3_1.png" height="80px" width="80px"/></div>
                                <div style="margin: 10px;float: left">
                                    <h3>OA系统用例构件库</h3>
                                    <p>贡献人：官方<br>发布时间：2017-12-28</p>
                                </div>
                                <div style="clear: both;margin: 0px 10px 0px 10px">
                                    <p>
                                        描述：包含OA系统大部分的用例图，结构图，流程图；包含组织机构管理的逻辑思维导图，编写不易，请给我点个赞哟。
                                    </p>
                                </div>
                                <div style="float: right;margin: 0px 3px 0px 0px">
                                    <ul>
                                        <li style="display: inline"><img src="/img/div1_2.png" height="20" width="20"/></li>
                                        <li style="display: inline"><img src="/img/div1_3.png" height="20" width="20"/></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div></a>
                </div>
            </div>
        </div>
        <div id="footer" style="clear: both;text-align: center; margin-top:45px">
            <div id="pages" style="height: 50px;margin:0px auto;" class="btn-group">
                <button type="button" class="btn btn-white"><i class="fa fa-chevron-left"></i>
                </button>
                <button class="btn btn-white  active">1</button>
                <button class="btn btn-white">2</button>
                <button class="btn btn-white">3</button>
                <button class="btn btn-white">4</button>
                <button type="button" class="btn btn-white"><i class="fa fa-chevron-right"></i>
                </button>
            </div>
        </div>
    </div>
</div>
<script src="/js/jquery.min.js?v=2.1.4"></script>
<script src="/js/bootstrap.min.js?v=3.3.6"></script>
<script src="/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="/js/plugins/layer/layer.min.js"></script>
<script src="/js/hplus.min.js?v=4.1.0"></script>
<script type="text/javascript" src="/js/contabs.min.js"></script>
<script src="/js/plugins/pace/pace.min.js"></script>
<script src="/js/content.min.js?v=1.0.0"></script>
<script>
    $(document).ready(function(){$(".contact-box").each(function(){animationHover(this,"pulse")})});
</script>
</body>

<!-- Mirrored from www.zi-han.net/theme/hplus/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:17:11 GMT -->
</html>

