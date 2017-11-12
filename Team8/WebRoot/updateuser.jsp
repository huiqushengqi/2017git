<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta author="">
		<title></title>
		<link rel="stylesheet" type="text/css" href="styles/register-login.css">
		<script  src="js/jquery.js"></script>
		<style>
body {
  background-image: url(img/5.jpg);
  padding: 0 20px;
  margin: 150px -300px;
  font-family: 'Open Sans', Arial, sans-serif;
  background-size:cover;
  background-attachment: fixed;
  overflow-y: hidden;
}

h1 {
  text-align: center;
  margin: 80px 0;
}

.mynav ul {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  -ms-flex-wrap: wrap;
      flex-wrap: wrap;
  list-style-type: none;
  padding: 0;
  position：fixed;
  top:100px;
}

.mynav li:not(:last-child) {
  margin-right: 20px;
}

.mynav a {
  display: block;
  font-size: 20px;
  color: black;
  text-decoration: none;
  padding: 7px 15px;
}

.target {
  position: absolute;
  border-bottom: 4px solid transparent;
  z-index: -1;
  -webkit-transform: translateX(-60px);
          transform: translateX(-60px);
}

.mynav a,
.target {
  -webkit-transition: all .35s ease-in-out;
  transition: all .35s ease-in-out;
}
li
{
	font:1em Arial;
	font-size:140%;
}
</style>
<script type="text/javascript">
 





function checkName1(op) {
     
		$.post("CheckServlet?flag=checkname", {
			name : op
		}, function(data) {
			if (data == 1) {
		      alert("用户名已经存在，请重新输入");  
               doucument.getElementById("name").focus();    
				return false;
			} else {
			    return true;
			}
		});
	}
/*$(document).ready(function(){
	$.getJSON("CommentServlet?flag=queryall&id=1",function(data){
        var i1=data.length+1;
        var str="";
        for(var i=1;i<i1;i++){
           str=str+"<a href='javascript:myclick("+i+")'>"+i+"</a>";
            }           
             $("#mydiv").html(str);
             var str1="";
 	        for (var i=0;i<3;i++){
 	        str1=str1+"<ul><li>"+data[i].comment_content+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+data[i].comment_date+"</li></ul>";
 	            }
 	              $("#mylab").html(str1); 
         });       
});
*/
function updatecom(op){
	$.getJSON("CommentServlet?flag=queryall&id="+op,function(data){
        var str="";
        for (var i=0;i<data.length;i++){
        str=str+"<ul><li>"+data[i].comment_content+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+data[i].comment_date+"</li></ul>";
            }
              $("#mylab").html(str);
        });
	}
</script>
	</head>
	<body  onload="updatecom(${sessionScope.user.user_id})">
		
		<nav class="mynav">
          <ul>
			<li id="one1" onclick="setTab('one',1,3)">
				<a>修改 </a>
			</li>
			<li id="one2" onclick="setTab('one',2,3)">
				<a>个人信息 </a>
			</li>
			<li id="one3" onclick="setTab('one',3,3)">
				<a>返回 </a>
			</li>
			  </ul>
            </nav>
        <span class="target"></span>
			<div id="con_one_1" style="display: none">
				<div >
				<form method="post" action="UpdateUserServlet?user_id=${sessionScope.user.user_id}" enctype="multipart/form-data">
					<div class="login form" style="position:absolute;top:220px;left:325px;">
					<div style="width:300px;height:40">
					<li>用户：<input type="text" name="name" id="name" class="ipt" style="width: 200px;height:30px;background-color:transparent;font-size:20px;"
						value="${sessionScope.user.user_name}" onblur="checkName1(this.value)" pattern="^[a-zA-Z]{2,8}$" placeholder="2位数字以上" style="width:300px;height:50px;background-color:transparent;font-size:20px;"required oninvalid="setCustomValidity('用户名不能为空！');"oninput="setCustomValidity('');" ><br/>
				     </li> </div>
				      <div style="width:300px;height:40">
					<li>密码：<input type="password" name="password" id="password"  style="width: 200px;height:30px;background-color:transparent;font-size:20px;"
						value="${sessionScope.user.user_pwd}" pattern="^[0-9]{2,8}$" placeholder="2位数字以上" style="width:300px;height:50px;background-color:transparent;font-size:20px;"required oninvalid="setCustomValidity('密码不能为空！');"oninput="setCustomValidity('');"><br/>
				 </li></div>
                       <div style="width:100px;height:40">
					<li>头像：<input type="file" name="head" id="verify" class="ipt" style="width: 200px;height:30px;"
						 value="${sessionScope.user.user_head}" placeholder="想要修改的头像" accept="image/png,image/gif,image/jpeg,image/jp2"><br/>
				 </li></div>
					<div class="button">
						<button type="submit" class="login-btn register-btn" id="button">
							修改
						</button>
					</div>
					</div>
				</form>
						</div>
			</div>
			<div id="con_one_2" style="display: none">
				<div>
				<form method="post">
				<div class="login form" style="position:absolute;top:220px;left:350px;">
				<ul>
				<li>用   户：${sessionScope.user.user_name}</li><br/>
				<li>密   码：${sessionScope.user.user_pwd}</li><br/>
				<li>头   像：<img src="${sessionScope.user.user_head}"/></li>
				</ul>
				
					</div>
				</form>
						</div>
			</div>
			<div id="con_one_3" style="display: none">
				 <div class="login form" style="position: absolute; top: 220px; left: 350px;" >
                    <li>
				       评论：<label id="mylab"></label>
					</li>
					<div id="mydiv" style="font-size: 25px; color: balck;">

					</div>
			</div>
			
		</div>
		<script>
	function setTab(name, cursel, n) {
		for (i = 1; i <= n; i++) {
			var menu = document.getElementById(name + i);
			var con = document.getElementById("con_" + name + "_" + i);
			menu.className = i == cursel ? "hover" : "";
			con.style.display = i == cursel ? "block" : "none";
		}
	}
	//--!>
</script>
<script>
"use strict";

(function () {

  var target = document.querySelector(".target");
  var links = document.querySelectorAll(".mynav a");
  var colors = ["deepskyblue", "orange", "firebrick", "gold", "magenta", "black", "darkblue"];

  function mouseenterFunc() {
    if (!this.parentNode.classList.contains("active")) {
      for (var i = 0; i < links.length; i++) {
        if (links[i].parentNode.classList.contains("active")) {
          links[i].parentNode.classList.remove("active");
        }
        links[i].style.opacity = "0.25";
      }

      this.parentNode.classList.add("active");
      this.style.opacity = "1";

      var width = this.getBoundingClientRect().width;
      var height = this.getBoundingClientRect().height;
      var left = this.getBoundingClientRect().left + window.pageXOffset;
      var top = this.getBoundingClientRect().top + window.pageYOffset;
      var color = colors[Math.floor(Math.random() * colors.length)];

      target.style.width = width + "px";
      target.style.height = height + "px";
      target.style.left = left + "px";
      target.style.top = top + "px";
      target.style.borderColor = color;
      target.style.transform = "none";
    }
  }

  for (var i = 0; i < links.length; i++) {
    links[i].addEventListener("click", function (e) {
      return e.preventDefault();
    });
    links[i].addEventListener("mouseenter", mouseenterFunc);
  }

  function resizeFunc() {
    var active = document.querySelector(".mynav li.active");

    if (active) {
      var left = active.getBoundingClientRect().left + window.pageXOffset;
      var top = active.getBoundingClientRect().top + window.pageYOffset;

      target.style.left = left + "px";
      target.style.top = top + "px";
    }
  }

  window.addEventListener("resize", resizeFunc);
})();</script>

	</body>
</html>
