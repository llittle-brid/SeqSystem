<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF8">
    <title>个人中心</title>
    <meta name="viewport" content="width=devicewidth, initialscale=1.0">
    <meta name="renderer" content="webkit">
    <meta httpequiv="refresh" content="0;ie.html" />
    <link href="/css/bootstrap.min14ed.css" rel="stylesheet">
    <link href="/css/fontawesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="/css/animate.min.css" rel="stylesheet">
    <link href="/css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <link href="/css/xzw.css" rel="stylesheet">

</head>

<body class="gray-bg">

<div id="page-wrapper" class="white-bg dashbard-1">

    <div class=" row wrapper white-bg" id="content-main">
        <ol class="breadcrumb" style="margin-left: 40px">
            <li style="font-size: 15px">
                <strong>
                    <a href="user-jmpHomepage">首页</a> >><a href="user-jmpMyprofile">我的资料</a>
                </strong>
            </li>
        </ol>
    </div>

    <div class="form-group col-md-1">
        <ul class="nav navbar">
            <li>
                <a href="user-jmpMyprofile"><button class="btn btn-w-m  btn-primary"><u>我的资料</u></button></a>

            </li>
            <li>
                <a href="project_myOrganization.html"><button class="btn btn-w-m  btn-primary">我的机构</button></a>
            </li>
            <li>
                <a href="project_myInformation.html"><button class="btn btn-w-m  btn-primary">消息中心</button></a>
            </li>
        </ul>
    </div>

    <div class="zw_user col-xs-8 col-xs-push-1">

        <div class="col-xs-2" style="margin-top:20px">
            <img src="/img/u410.png" height="158" width="150">
        </div>

        <div class=" col-md-8 col-xs-offset-1">
            <div class="container-fluid">
                <form class="form-inline">
                    <br/><br/><br/><br/>
                    <label for="name" style="font-size: medium">用户名: </label>
                    <span rows="1" class="form-control my_input"> <%=session.getAttribute("name") %></span>
                    <img src="/img/u413.png">
                    <br/><br/>
                </form>
            </div>
        </div>
    </div>

    <!--填充空白-->
    <div class="col-md-6 col-md-offset-6">
        <br/><br/><br/>
    </div>


    <!--具体内容-->
    <div>
        <form action="reprofile1.tttt" method="post">
            <div>
                <div class="col-xs-8 col-xs-push-2">

                    <div class="col-xs-2">
                        <table class="table table-bordered" style="text-align: center">
                            <thead>
                            <tr>
                                <th style="text-align: center;background-color: lightgray">性别</th>
                            </tr></thead>
                            <tr><td><span rows="1"><%=session.getAttribute("sex") %></span></td></tr>
                        </table>
                    </div>

                    <div class="col-xs-4 col-xs-offset-1">
                        <table class="table table-bordered" style="text-align: center;">
                            <thead><tr>
                                <th style="text-align: center;background-color: lightgrey">所在地</th>
                            </tr></thead>
                            <tr><td><span rows="1"><%=session.getAttribute("address") %></span></td></tr>
                        </table>
                    </div>

                    <div>
                        <br/><br/>
                        <br/><br/>
                        <br/><br/>
                        <br/><br/>
                    </div>

                    <div class="col-xs-2">
                        <table class="table table-bordered" style="text-align: center">
                            <thead><tr><th style="text-align: center;background-color: lightgrey">QQ</th>
                            </tr></thead>
                            <tr><td><span rows="1"><%=session.getAttribute("qq") %></span></td></tr>
                        </table>
                    </div>

                    <div class="col-xs-4 col-xs-offset-1">
                        <table class="table table-bordered" style="text-align: center">
                            <thead><tr><th style="text-align: center;background-color: lightgrey">联系电话</th>
                            </tr></thead>
                            <tr><td><span rows="1">111</span></td></tr>
                        </table>
                    </div>


                </div>

                <div class="col-xs-3 col-xs-pull-1">
                    <table class="table table-bordered" style="text-align: center">
                        <thead><tr><th style="text-align: center;background-color: lightgrey">个人简介</th>
                        </tr></thead>
                        <tr>
                            <td>
                                <textarea rows="9"></textarea>
                            </td>
                        </tr>

                    </table>
                </div>

                <!--填充空白-->
                <div class="col-md-12 col-md-offset-1">
                    <br/><br/><br/><br/>
                </div>

            </div>
            <div class="col-md-4 col-md-offset-5">
                <button type="submit" class="btn btn-w-m btn-danger btn-primary ">资料修改</button>
            </div>
        </form>
    </div>

</div>


<script src="../js/jquery.min.js?v=2.1.4"></script>
<script src="js/bootstrap.min.js?v=3.3.6"></script>
<script src="js/content.min.js?v=1.0.0"></script>
<script src="js/plugins/toastr/toastr.min.js"></script>
<script src="js/mjy.js"></script>

</body>


</html>