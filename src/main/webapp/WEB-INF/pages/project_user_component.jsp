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

<body class="fixed-sidebar full-height-layout gray-bg" style="overflow:hidden">
<div id="wrapper" style="padding: 0px" class="wrapper wrapper-content animated fadeInDown gray-bg">
    <div class=" row wrapper white-bg">
        <ol class="breadcrumb" style="margin-left: 40px">
            <li style="font-size: 15px">
                <strong>
                    <a href="user-jmpHomepage"><span class="lzf_b">首页</span></a> >><a href="user-jmpComponent"><span class="lzf_b">构件库</span></a>>><a href="user-jmpUsercomponent"><span class="lzf_b">用户构件库</span></a>
                </strong>
            </li>
        </ol>
    </div>
    <div id="background" style="width: 100%;margin: 0 auto" class="gray-bg">
        <div id="main" style="height: 2000px;width:100%;margin: 0px ">
            <div id="head" style="width:1200px;font-size:x-small;margin: 0 auto">
                <div style="float: left;height: 70px;width:300px;padding: 20px 20px 0px 20px">
                    <div style="float: left;margin: 0px 0px 0px 50px">
                        <h2> OA系统用户构件库</h2>
                    </div>
                </div>
                <div style="float: left;height: 70px;width:150px;padding: 40px 0px 20px 30px">
                    <div style="float: left;text-align:center">
                        <p style="font-size: 16px">贡献人：官方</p>
                    </div>
                </div>
                <div style="float: left;height: 70px;width:300px;padding: 40px 0px 20px 0px">
                    <div style="float: left">
                        <p style="font-size: 16px">发布时间：2017-11-03</p>
                    </div>
                </div>
                <div style="float: right;height: 60px;width: 450px" >
                    <div style="margin:30px 0px 0px 253px;float: left"><img src="/img/magnifier.png" height="35px" width="35px"/></div>
                    <div style="margin:30px 0px 0px 10px;float: left"><img src="/img/star.png" height="35" width="35"/></div>
                    <div style="margin:30px 0px 0px 10px;float: left"><img src="/img/back.png" height="35" width="35"/></div>
                </div>
            </div>
            <div id="mid" style="clear: both;height:450px;width:1200px;margin:0 auto;padding: 20px 75px 20px 75px;overflow: hidden">
                <div id="div1" style="background-color: white;height: 150px;width:505px;float:left;margin: 0px 37.5px 30px 0px;padding: 5px" class="col-md-4 contact-box">
                    <div style="height:30px;margin: 10px 0px 0px 10px;float: left">
                        <span style="font-family:'Arial Negreta', 'Arial Normal', 'Arial';font-weight:700;">用户名</span><span style="font-family:'Arial Normal', 'Arial';font-weight:400;">：系统管理员</span>
                    </div>
                    <div style="height:60px;margin: 0px 0px 0px 10px;float: left; overflow: hidden">
                        <span style="font-family:'Arial Negreta', 'Arial Normal', 'Arial';font-weight:700;">用户描述</span><span style="font-family:'Arial Normal', 'Arial';font-weight:400;">：Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. </span>
                    </div>
                    <div style="height:40px;margin: 0px 0px 0px 10px;float: left">
                        <div style="width: 60px;float: left"><span style="font-family:'Arial Negreta', 'Arial Normal', 'Arial';font-weight:700;">用户权限:</span></div>
                        <div style="float: left">
                                <span style="font-family:'Arial Normal', 'Arial';font-weight:400;">
                                <ul>
                                    <li><span;font-weight:400;">登陆</span></li>
                            <li><span;font-weight:400;">系统管理</span></li>
                            </ul>
                            </span>
                        </div>
                    </div>
                </div>
                <div id="div2" style="background-color: white;height: 150px;width:505px;float:left;margin: 0px 0px 30px 0px;padding: 5px" class="col-md-4 contact-box">
                    <div style="height:30px;margin: 10px 0px 0px 10px;float: left">
                        <span style="font-family:'Arial Negreta', 'Arial Normal', 'Arial';font-weight:700;">用户名</span><span style="font-family:'Arial Normal', 'Arial';font-weight:400;">：组织机构管理员</span>
                    </div>
                    <div style="height:60px;margin: 0px 0px 0px 10px;float: left; overflow: hidden">
                        <span style="font-family:'Arial Negreta', 'Arial Normal', 'Arial';font-weight:700;">用户描述</span><span style="font-family:'Arial Normal', 'Arial';font-weight:400;">：Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. </span>
                    </div>
                    <div style="height:40px;margin: 0px 0px 0px 10px;float: left">
                        <div style="width: 60px;float: left"><span style="font-family:'Arial Negreta', 'Arial Normal', 'Arial';font-weight:700;">用户权限:</span></div>
                        <div style="float: left">
                                <span style="font-family:'Arial Normal', 'Arial';font-weight:400;">
                                <ul>
                                    <li><span;font-weight:400;">登陆</span></li>
                            <li><span;font-weight:400;">系统管理</span></li>
                            </ul>
                            </span>
                        </div>
                    </div>
                </div>
                <div id="div3" style="background-color: white;height: 150px;width:505px;float:left;margin: 0px 37.5px 30px 0px;padding: 5px" class="col-md-4 contact-box">
                    <div style="height:30px;margin: 10px 0px 0px 10px;float: left">
                        <span style="font-family:'Arial Negreta', 'Arial Normal', 'Arial';font-weight:700;">用户名</span><span style="font-family:'Arial Normal', 'Arial';font-weight:400;">：文档库管理员</span>
                    </div>
                    <div style="height:60px;margin: 0px 0px 0px 10px;float: left; overflow: hidden">
                        <span style="font-family:'Arial Negreta', 'Arial Normal', 'Arial';font-weight:700;">用户描述</span><span style="font-family:'Arial Normal', 'Arial';font-weight:400;">：Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. </span>
                    </div>
                    <div style="height:40px;margin: 0px 0px 0px 10px;float: left">
                        <div style="width: 60px;float: left"><span style="font-family:'Arial Negreta', 'Arial Normal', 'Arial';font-weight:700;">用户权限:</span></div>
                        <div style="float: left">
                                <span style="font-family:'Arial Normal', 'Arial';font-weight:400;">
                                <ul>
                                    <li><span;font-weight:400;">登陆</span></li>
                            <li><span;font-weight:400;">系统管理</span></li>
                            </ul>
                            </span>
                        </div>
                    </div>
                </div>
                <div id="div4" style="background-color: white;height: 150px;width:505px;float:left;margin: 0px 0px 30px 0px;padding: 5px" class="col-md-4 contact-box">
                    <div style="height:30px;margin: 10px 0px 0px 10px;float: left">
                        <span style="font-family:'Arial Negreta', 'Arial Normal', 'Arial';font-weight:700;">用户名</span><span style="font-family:'Arial Normal', 'Arial';font-weight:400;">：新闻发布管理员</span>
                    </div>
                    <div style="height:60px;margin: 0px 0px 0px 10px;float: left; overflow: hidden">
                        <span style="font-family:'Arial Negreta', 'Arial Normal', 'Arial';font-weight:700;">用户描述</span><span style="font-family:'Arial Normal', 'Arial';font-weight:400;">：Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. </span>
                    </div>
                    <div style="height:40px;margin: 0px 0px 0px 10px;float: left">
                        <div style="width: 60px;float: left"><span style="font-family:'Arial Negreta', 'Arial Normal', 'Arial';font-weight:700;">用户权限:</span></div>
                        <div style="float: left">
                                <span style="font-family:'Arial Normal', 'Arial';font-weight:400;">
                                <ul>
                                    <li><span;font-weight:400;">登陆</span></li>
                            <li><span;font-weight:400;">系统管理</span></li>
                            </ul>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
            <div id="footer" style="clear: both;text-align: center; margin-top:-30px">
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
            <div style="width:1200px;margin: 0 auto">
                <div id="discuss" class="text " style="left: 0px; transform-origin: 184.5px 11px 0px;margin: 10px 105px 20px 90px">
                    <p>
                        <span style="font-family:'Arial Negreta', 'Arial Normal', 'Arial';font-weight:700;color:#666666;font-size: 20px">【讨论区】</span>
                        <span style="font-family:'Arial Normal', 'Arial';font-weight:400;color:#666666;font-size: 16px">OA系统图片构件库</span>
                        <span style="font-family:'Arial Negreta', 'Arial Normal', 'Arial';font-weight:700;font-size:16px;color:#999999;">（</span>
                        <span style="font-family:'Arial Normal', 'Arial';font-weight:400;font-size:16px;color:#999999;">已有</span>
                        <span style="font-family:'Arial Normal', 'Arial';font-weight:400;font-size:16px;color:#FF0000;">4</span>
                        <span style="font-family:'Arial Normal', 'Arial';font-weight:400;font-size:16px;color:#999999;">条留言</span>
                        <span style="font-family:'Arial Negreta', 'Arial Normal', 'Arial';font-weight:700;font-size:16px;color:#999999;">）</span>
                    </p>
                </div>
                <div style="margin: 0px 0px 0px 100px">
                    <div style="width: 800px;height: 120px;border:8px solid darkgrey;float: left" contenteditable="true" class="white-bg">
                    </div>
                    <div style="height: 120px;float: left;margin: 98px 0px 0px 20px">
                        <img src="/img/camera.png" height="22" width="26"/>
                    </div>
                    <div style="height: 120px;float: left;margin: 88px 20px 0px 20px">
                        <button type="button" class="btn btn-primary">　发表　</button>
                    </div>
                </div>
            </div>
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
