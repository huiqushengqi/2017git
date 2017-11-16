<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <title>注册</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- CSS -->
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Oleo+Script:400,700'>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">

        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

    </head>

    <body>

        <div class="header">
            <div class="container">
                <div class="row">
                    <div class="logo span4">
                        <h1><a href="">register <span class="red">.</span></a></h1>
                    </div>
                    <div class="links span8">
                        <a class="home" href="" rel="tooltip" data-placement="bottom" data-original-title="Home"></a>
                        <a class="blog" href="" rel="tooltip" data-placement="bottom" data-original-title="Blog"></a>
                    </div>
                </div>
            </div>
        </div>

        <div class="register-container container">
            <div class="row">
                <div class="iphone span5">
                    <img src="images/iphone.png" alt="">
                </div>
                <div class="register span6">
                    <form action="" method="post">
                        <h2>注册<span class="red"><strong>register</strong></span></h2>
                        <label for="firstname">姓名</label>
                        <input type="text" id="firstname" name="firstname" placeholder="请输入你的姓名">
                        <label for="lastname">身份证号</label>
                        <input type="text" id="lastname" name="lastname" placeholder="请输入你的身份证">
                        <label for="username">用户名</label>
                        <input type="text" id="username" name="username" placeholder="请输入你的用户名">
                        <label for="email">邮箱</label>
                        <input type="text" id="email" name="email" placeholder="请输入你的邮箱">
                         <label for="tel">手机号</label>
                        <input type="text" id="tel" name="tel" placeholder="请输入你的手机号码">
                        <label for="password">密码</label>
                        <input type="password" id="password" name="password" placeholder="请输入你的密码">
                         <label for="password">确认密码</label>
                        <input type="password" id="password" name="password" placeholder="请再次输入你的密码">
                        <button type="submit">REGISTER</button>
                    </form>
                </div>
            </div>
        </div>
		<div align="center">Collect from <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a></div>
        <!-- Javascript -->
        <script src="js/jquery-1.8.2.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.backstretch.min.js"></script>
        <script src="js/scripts.js"></script>

    </body>

</html>

