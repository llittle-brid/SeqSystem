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
    <link href="css/z_style.css" rel="stylesheet">
    <link href="css/plugins/toastr/toastr.min.css" rel="stylesheet">
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
                        <a href="user-jmpHomepage"><span class="lzf_b">首页</span></a> >><a href="library-get"><span class="lzf_b">构件库</span></a>
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
                                        <a href="library-get"><span class="lzf_a" style="font-size: 18px "><u>全部</u></span></a>
                                    </li>
                                    <li style="margin: 5px" class="J_tabShowActive">
                                        <a href="library-getcommon" ><span class="lzf_a" style="font-size: 18px ">通用</span></a>
                                    </li>
                                    <li style="margin: 5px" class="J_tabShowActive">
                                        <a href="library-getuser"><span class="lzf_a" style="font-size: 18px ">用户</span></a>
                                    </li>
                                    <li style="margin: 5px" class="J_tabShowActive">
                                        <a href="library-getcase" ><span class="lzf_a" style="font-size: 18px ">用例</span></a>
                                    </li>
                                    <li style="margin: 5px" class="J_tabShowActive">
                                        <a href="library-getpicture" ><span class="lzf_a" style="font-size: 18px ">图片</span></a>
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
                        <div style="float: left;font-size:18px;text-align: left;color: black"><a href="library-Mycollect"><span class="lzf_a">我的收藏</span></a></div>
                    </div>
                </div>
            </div>

            <div id="view" style="padding: 0px 70px 0px 70px;margin-top:30px;height: 450px">
                <div class="row">
                    <s:iterator value="list">
                        <div class="col-sm-4">
                        <div class="contact-box">
                            <div>
                                <div style="cursor:pointer" class="structure">
                                    <input style="display:none" type="text" value="<s:property value="id_template"/>">
                                <div style="margin: 10px 10px 10px 15px;float: left">
                                    <s:if test="#request.id_template==1"><img src="/img/div11.png" height="80px" width="80px"/></s:if>
                                    <s:if test="#request.id_template==2"><img src="/img/div2.png" height="80px" width="80px"/></s:if>
                                    <s:if test="#request.id_template==3"><img src="/img/div3.png" height="80px" width="80px"/></s:if>
                                    <s:if test="#request.id_template==4"><img src="/img/div4.png" height="80px" width="80px"/></s:if>
                                </div>
                                <div style="margin: 10px;float: left">
                                    <h3><s:property value="name"/></h3>
                                    <p>贡献人：官方<br>发布时间：<s:property value="time"/></p>
                                </div>
                                <div style="height:60px;clear: both;margin: 0px 10px 0px 10px;overflow: hidden">
                                    <p>
                                        <s:property value="mention"/>
                                    </p>
                                </div>
                                </div>
                                <input style="display:none" type="text" value="<s:property value="id_library"/>">
                                <div style="float: right;z-index:99999999;margin: -14px -19px 0px 0px">
                                    <s:if test="#request.id_user==#session.user.id_user">
                                        <a class="btn btn-white btn-bitbucket nocollect" style="border: none" >
                                        <i class="fa fa-star modal-icon " style="font-size: 20px"></i>
                                        </a>
                                    </s:if>
                                    <s:else>
                                        <a class="btn btn-white btn-bitbucket collect" style="border: none" >
                                            <i class="fa fa-star-o modal-icon " style="font-size: 20px"></i>
                                        </a>
                                    </s:else>
                                    <input style="display:none" type="text" value="<s:property value="id_library"/>">
                                </div>
                            </div>
                        </div>
                    </div>
                    </s:iterator>
                </div>
            </div>
        </div>
        <div id="footer" style="clear: both;text-align: center; margin-top:45px">
            <div id="pages" style="height: 50px;margin:0px auto;" class="btn-group">
                <s:if  test="#request.page==1">
                <button type="button" class="btn btn-gray"><i class="fa fa-chevron-left"></i></button>
                </s:if>
                <s:else><button type="button" class="btn btn-white turnpage lastPage"><i class="fa fa-chevron-left"></i></button></s:else>
                <s:iterator begin="1" end="#request.num" step="1" status="st">
                    <s:if test="#request.page==#st.index+1">
                <button type="button" class="btn btn-white active pagenum nowpage"><s:property value='#st.index+1'/></button></s:if>
                    <s:else ><button type="button" class="btn btn-white pagenum"><s:property value='#st.index+1'/></button></s:else>
                </s:iterator>
                <s:if test="#request.page==#request.num"><button type="button" class="btn btn-gray"><i class="fa fa-chevron-right"></i></button></s:if>
                <s:else><button type="button" class="btn btn-white turnpage nextPage"><i class="fa fa-chevron-right"></i></button></s:else>
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
<script src="js/plugins/toastr/toastr.min.js"></script>
<script src="js/mjy.js"></script>
<script>
    $(document).ready(function(){$(".contact-box").each(function(){animationHover(this,"pulse")})});
</script>
<script>
    $(document).ready(function(){
        $("button.pagenum").click(function(){
            location.href="library-getagain?page="+$(this).html();
        });
    });
</script>
<script>
    $(document).ready(function(){
        $("button.turnpage").click(function(){
            if($(this).hasClass("lastPage"))
            {   var p=parseInt($("button.nowpage").html())-1;
                location.href="library-getagain?page="+p;}
            else
            {   var p=parseInt($("button.nowpage").html())+1;
                location.href="library-getagain?page="+p;}
        });
    });
</script>
<script>
    $(document).ready(function(){
        $("div.structure").click(function(){
            location.href="structure-get?id_library="+$(this).next().val()+'&id_template=' + $(this).children().val()+'&page='+1+'&pagedis='+1;
        });
    });
</script>
</body>
<script>
    $(document).on("click","a.collect",function () {
        $(this).addClass("nocollect");
        $(this).removeClass("collect");
        $(this).children().addClass("fa-star");
        $(this).children().removeClass("fa-star-o");
        $.ajax({
            url: "librarycollect-collect",
            data: {id_library: $(this).next().val()},
            dataType: "json",
            type: "Post",
            async: "false",
            success: function (result) {
                if(result.res===true)  {
                    showtoast("success", "收藏成功", "操作成功")

                }
                else  showtoast("error", "收藏失败", "操作失败")
            },
            error: function (result) {
                showtoast("error", "收藏失败", "操作失败")
            }
        })
    })
</script>
<script>
    $(document).on("click","a.nocollect",function () {
        $(this).addClass("collect");
        $(this).removeClass("nocollect");
        $(this).children().addClass("fa-star-o");
        $(this).children().removeClass("fa-star");
        $.ajax({
            url: "librarycollect-nocollect",
            data: {id_library: $(this).next().val()},
            dataType: "json",
            type: "Post",
            async: "false",
            success: function (result) {
                if(result.res===true)  {
                    showtoast("success", "取消收藏成功", "操作成功")

                }
                else  showtoast("error", "取消收藏失败", "操作失败")
            },
            error: function (result) {
                showtoast("error", "取消收藏失败", "操作失败")
            }
        })
    })
</script>
<!-- Mirrored from www.zi-han.net/theme/hplus/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:17:11 GMT -->
</html>

