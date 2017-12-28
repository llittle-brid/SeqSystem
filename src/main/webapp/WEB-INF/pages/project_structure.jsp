<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>

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
    <link href="../css/plugins/summernote/summernote.css" rel="stylesheet">
    <link href="../css/plugins/summernote/summernote-bs3.css" rel="stylesheet">
    <link href="../css/mjy.css" rel="stylesheet">

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
    <div class=" row wrapper white-bg">
        <ol class="breadcrumb" style="margin-left: 50px">
            <li style="font-size: 15px">
                <strong>
                    <a href="user-jmpHomepage"><span class="lzf_b">首页</span></a> >><a href="library-get"><span class="lzf_b">构件库</span></a>
                </strong>
            </li>
        </ol>
    </div>
        <div id="main" style="height: 1500px;width:100%;margin-top: 10px ">
            <div id="head" style="width:1200px;font-size:x-small;margin: 0 auto">
                <div style="float: left;height: 50px;width:350px;padding: 20px 20px 0px 20px;margin-left: 100px">
                    <h2 style="font-weight:700"> ${requestScope.library.name}</h2>
                </div>
                <div style="float: left;height: 50px;width:100px;padding: 40px 0px 20px 0px;text-align:center;margin-top:5px">
                        <p style="font-size: 16px;color: black">贡献人：官方</p>
                </div>
                <div style="float: left;height: 50px;width:200px;padding: 40px 0px 20px 0px;margin-top:5px;margin-left: 10px">
                        <p style="font-size: 16px;color: black">发布时间：${requestScope.library.time}</p>
                </div>
                <div style="float: right;height: 60px;width: 450px" >
                    <div style="margin:-22px 0px 0px 200px;float: left"><img src="/img/magnifier.png" height="35px" width="35px"/></div>
                    <div style="margin:-22px 0px 0px 10px;float: left"><img src="/img/star.png" height="35" width="35"/></div>
                    <div style="margin:-22px 0px 0px 10px;float: left"><img src="/img/back.png" height="35" width="35"/></div>
                </div>
            </div>
            <s:if test="#request.id_template==1">
            <div id="mid" style="clear: both;height:450px;width:1200px;margin-left:200px;padding: 20px 75px 20px 75px;overflow: hidden">
                <s:iterator value="list1">
                <div  style="background-color: white;height: 115px;width:300px;float:left;margin: 0px 37.5px 30px 0px;padding: 5px" class="col-md-4 contact-box">
                    <div style="height:100px;margin: 10px 0px 0px 10px;overflow: hidden">
                        <span style="font-family:'Arial Negreta', 'Arial Normal', 'Arial';color: black;font-weight:700;">内容：</span><span style="font-family:'Arial Normal', 'Arial';font-weight:500;overflow: hidden"><s:property value="content"/></span>
                    </div>
                </div>
                </s:iterator>
            </div>
            </s:if>
            <s:if test="#request.id_template==2">
            <div id="mid" style="clear: both;height:450px;width:1300px;margin-left:150px;padding: 20px 75px 20px 75px;overflow: hidden">
                <s:iterator value="list2">
                <div  style="background-color: white;height: 200px;width:520px;float:left;margin: 0px 37.5px 30px 0px;padding: 5px;" class="col-md-4 contact-box">
                    <div style="height:40px;margin: 10px 0px 0px 10px;overflow: hidden">
                        <span style="font-family:'Arial Negreta', 'Arial Normal', 'Arial';font-weight:700;color: black">用户名：</span><span style="font-family:'Arial Normal', 'Arial';font-weight:500;overflow: hidden"><s:property value="roleName"/></span>
                    </div>
                    <div style="height:80px;margin: 0px 0px 0px 10px;float: left; overflow: hidden">
                        <span style="font-family:'Arial Negreta', 'Arial Normal', 'Arial';font-weight:700;color: black">用户描述：</span><span style="font-family:'Arial Normal', 'Arial';font-weight:500;overflow: hidden"><s:property value="describe"/></span>
                    </div>
                    <div style="height:80px;margin: 0px 0px 0px 10px;float: left">
                        <div style="width: 60px;float: left"><span style="font-family:'Arial Negreta', 'Arial Normal', 'Arial';font-weight:700;color: black">用户权限:</span></div>
                        <div style="float: left">
                                <span style="font-family:'Arial Normal', 'Arial';font-weight:500;overflow: hidden">
                                        <s:property value="permissions"/>
                                </span>
                        </div>
                    </div>
                </div>
                </s:iterator>
                </div>
            </s:if>
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
            <div style="width:1200px;margin: 0 auto">
                <div id="discuss" class="text " style="left: 0px; transform-origin: 184.5px 11px 0px;margin: 10px 105px 20px 90px">
                    <p>
                        <span style="font-family:'Arial Negreta', 'Arial Normal', 'Arial';font-weight:700;color:#666666;font-size: 20px">【讨论区】</span>
                        <span style="font-family:'Arial Normal', 'Arial';font-weight:400;color:#666666;font-size: 16px">OA系统图片构件库</span>
                        <span style="font-family:'Arial Negreta', 'Arial Normal', 'Arial';font-weight:700;font-size:16px;color:#999999;">（</span>
                        <span style="font-family:'Arial Normal', 'Arial';font-weight:400;font-size:16px;color:#999999;">已有</span>
                        <span style="font-family:'Arial Normal', 'Arial';font-weight:400;font-size:16px;color:#FF0000;">${requestScope.dn}</span>
                        <span style="font-family:'Arial Normal', 'Arial';font-weight:400;font-size:16px;color:#999999;">条留言</span>
                        <span style="font-family:'Arial Negreta', 'Arial Normal', 'Arial';font-weight:700;font-size:16px;color:#999999;">）</span>
                    </p>
                </div>
            </div>
            <div class="row" style="width: 750px;margin-left: 265px">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>发表评论</h5>
                        <div class="ibox-tools">
                            <button  class="btn btn-primary col-lg-push-1" onclick="commitSend()" type="button" style="margin-right: 10px;margin-top: -7px;padding-left: 20px;padding-right: 20px">发布</button>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <div class="click2edit wrapper discuss">
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
<script src="js/plugins/toastr/toastr.min.js"></script>
<script src="js/mjy.js"></script>
<script src="../js/plugins/summernote/summernote.min.js"></script>
<script src="../js/plugins/summernote/summernote-zh-CN.js"></script>
<script src="../js/template.js"></script>
<script>
    $(document).ready(function(){$(".contact-box").each(function(){animationHover(this,"pulse")})});
</script>
<script>
    $(document).ready(function(){
        $("button.pagenum").click(function(){
            location.href="structure-get?page="+$(this).html()+'&id_template=' + ${requestScope.id_template}+'&id_library='+${requestScope.id_library};
        });
    });
</script>
<script>
    $(document).ready(function(){
        $("button.turnpage").click(function(){
            if($(this).hasClass("lastPage"))
            {   var p=parseInt($("button.nowpage").html())-1;
                location.href="structure-get?page="+p+'&id_template=' + ${requestScope.id_template}+'&id_library='+${requestScope.id_library};}
            else
            {   var p=parseInt($("button.nowpage").html())+1;
                location.href="structure-get?page="+p+'&id_template=' + ${requestScope.id_template}+'&id_library='+${requestScope.id_library};}
        });
    });

    $(document).ready(function () {
        $(window.parent.document).find("div#content-main").height($(document).height())
    })
</script>
</body>
<script>
    function commitSend() {
        var content=$(".discuss").code();
        $.ajax({
            url: "librarydiscuss-commit",
            data: {content:content,id_library:${requestScope.id_library}, id_user:${sessionScope.user.id_user}},
            dataType: "json",
            type: "Post",
            async: "false",
            success: function (result) {
                if(result.res===true)  {
                    showtoast("success", "成功", "发布评论成功")
                }
                else  showtoast("error", "失败", "发布评论失败")
            },
            error: function (result) {
                showtoast("error", "失败", "发布评论失败")
            }
        })
    }
</script>

<!-- Mirrored from www.zi-han.net/theme/hplus/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:17:11 GMT -->
</html>
