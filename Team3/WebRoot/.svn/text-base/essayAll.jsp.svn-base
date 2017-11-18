<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="/WEB-INF/MyPage.tld" prefix="pt"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>  
<script type="text/javascript" charset="gbk">  
    $.ajaxSetup({ cache: false }); 
    $.getJSON("http://www.wqbar.com/api_login.php?callback=?",function(data){
	    var str=data.name;
		var strs= new Array(); 
		strs=str.split("|");
		if(strs[0]==1)
		{
            var exp = new Date(); 
            exp.setTime(exp.getTime() + 3600000); 
            document.cookie="core_user_id="+strs[1]+";expires="+exp.toGMTString();
			document.cookie="core_user_passwd="+strs[2]+";expires="+exp.toGMTString();
			document.cookie="core_user_rank="+strs[3]+";expires="+exp.toGMTString();
			document.cookie="core_user_long="+strs[4]+";expires="+exp.toGMTString();
						location.reload();
					}
		else
		{
            var exp = new Date(); 
            exp.setTime(exp.getTime() - 1); 
            document.cookie="core_user_id="+strs[1]+";expires="+exp.toGMTString();
			document.cookie="core_user_passwd="+strs[2]+";expires="+exp.toGMTString();
			document.cookie="core_user_rank="+strs[3]+";expires="+exp.toGMTString();
			document.cookie="core_user_long="+strs[4]+";expires="+exp.toGMTString();
					}
    });  
	$.ajaxSetup({ cache: true }); 
</script>
  <script>
  	function myessay(){
  	  	
		$.getJSON("myEssay.action",function(data){
			var str="";
				for(var i=0;i<data.length;i++){
						str+="<table width='750' border='0' cellspacing='0' cellpadding='5'><tbody>";
						str=str+"<tr bgcolor='#F6F6F6'><td width='515' height='40' valign='middle' class='ntext14'><a href='detailEssay.action?essay_id="+data[i].essay_id+"' target='_blank'>"+data[i].essay_title+"</a>&nbsp;&nbsp;53/10071</td>";       
						str=str+"<td valign='middle' class='ntext12'><div style='float:left'><img src='img/zhutizz.png' width='16' height='14' title='主题作者：开心就是赢'><a href='http://www.wqbar.com/space.php?pages=info&amp;id=1' target='_blank' style='color:#999999'>"+data[i].essay_user.user_name+"</a><br><img src='img/huitiezz.png' width='16' height='14' title='回贴作者：sanren'><a href='http://www.wqbar.com/space.php?pages=info&amp;id=6658' target='_blank' style='color:#999999'>sanren</a></div>";
						str=str+"<div style='float:right; color:#999999; position:relative; top:10px;'>"+data[i].essay_time+"</div><div class='clear'></div></td></tr>";
						str=str+"</tbody></table>";
						}
				
				$("#myessay2").html(str);
			});		
  	  	}
  
    function myessaypub(){
		var str="";
		str=str+"<form action='lf_public.action' method='post'><font size='5'>发表新帖</font><br>标题：<input type='text' style='width:300px;border:solid gray;margin-left:16px' name='essay_title' id='essay_title'><br><div style='margin-left:0px'>内容：</div>";
		str=str+"<div style='margin-left:50px'><textarea name='essay_content' id='essay_content' style='width:510px; height:169px; border:solid gray;overflow-x:hidden;overflow-y:scroll;'></textarea></div><br><input type='submit' value='发布' onclick='return _check()' style='width:260px;margin-left:50px'/></form>";
		$("#myessay2").html(str);

        }
    function _check(){
		var essay_title=document.getElementById("essay_title").value;
		var essay_content=document.getElementById("essay_content").value;
		if(essay_title==""||essay_content==""){
			alert("请输入标题和内容");
			return false;
			}
		if(confirm("是否发布帖子")){
			return true;
			}
		return true;
		}

	function search(){
		var key=document.getElementById("searchTie").value;
		$.getJSON("earchEssay.action",{key:key},function(data){
			var str="";
			for(var i=0;i<data.length;i++){
				str+="<table width='750' border='0' cellspacing='0' cellpadding='5'><tbody>";
				str=str+"<tr bgcolor='#F6F6F6'><td width='515' height='40' valign='middle' class='ntext14'><a href='detailEssay.action?essay_id="+data[i].essay_id+"' target='_blank'>"+data[i].essay_title+"</a>&nbsp;&nbsp;53/10071</td>";       
				str=str+"<td valign='middle' class='ntext12'><div style='float:left'><img src='img/zhutizz.png' width='16' height='14' title='主题作者：开心就是赢'><a href='http://www.wqbar.com/space.php?pages=info&amp;id=1' target='_blank' style='color:#999999'>"+data[i].essay_user.user_name+"</a><br><img src='img/huitiezz.png' width='16' height='14' title='回贴作者：sanren'><a href='http://www.wqbar.com/space.php?pages=info&amp;id=6658' target='_blank' style='color:#999999'>sanren</a></div>";
				str=str+"<div style='float:right; color:#999999; position:relative; top:10px;'>"+data[i].essay_time+"</div><div class='clear'></div></td></tr>";
				str=str+"</tbody></table>";
				}
			$("#myessay2").html(str);

			});
		}

	function mycollection(){
		$.getJSON("lf_collection.action",function(data){
			var str="";
			for(var i=0;i<data.length;i++){
					str+="<table width='750' border='0' cellspacing='0' cellpadding='5'><tbody>";
					str=str+"<tr bgcolor='#F6F6F6'><td width='515' height='40' valign='middle' class='ntext14'><a href='detailEssay.action?essay_id="+data[i].essay_id+"' target='_blank'>"+data[i].essay_title+"</a>&nbsp;&nbsp;53/10071</td>";       
					str=str+"<td valign='middle' class='ntext12'><div style='float:left'><img src='img/zhutizz.png' width='16' height='14' title='主题作者：开心就是赢'><a href='http://www.wqbar.com/space.php?pages=info&amp;id=1' target='_blank' style='color:#999999'>"+data[i].essay_user.user_name+"</a><br><img src='img/huitiezz.png' width='16' height='14' title='回贴作者：sanren'><a href='http://www.wqbar.com/space.php?pages=info&amp;id=6658' target='_blank' style='color:#999999'>sanren</a></div>";
					str=str+"<div style='float:right; color:#999999; position:relative; top:10px;'>"+data[i].essay_time+"</div><div class='clear'></div></td></tr>";
					str=str+"</tbody></table>";
					}
			
			$("#myessay2").html(str);

			});
		}

	function orderByTime(){
			$.getJSON("lf_orderByTime.action",function(data){
				var str="";
				for(var i=0;i<data.length;i++){
					str+="<table width='750' border='0' cellspacing='0' cellpadding='5'><tbody>";
					str=str+"<tr bgcolor='#F6F6F6'><td width='515' height='40' valign='middle' class='ntext14'><a href='detailEssay.action?essay_id="+data[i].essay_id+"' target='_blank'>"+data[i].essay_title+"</a>&nbsp;&nbsp;53/10071</td>";       
					str=str+"<td valign='middle' class='ntext12'><div style='float:left'><img src='img/zhutizz.png' width='16' height='14' title='主题作者：开心就是赢'><a href='http://www.wqbar.com/space.php?pages=info&amp;id=1' target='_blank' style='color:#999999'>"+data[i].essay_user.user_name+"</a><br><img src='img/huitiezz.png' width='16' height='14' title='回贴作者：sanren'><a href='http://www.wqbar.com/space.php?pages=info&amp;id=6658' target='_blank' style='color:#999999'>sanren</a></div>";
					str=str+"<div style='float:right; color:#999999; position:relative; top:10px;'>"+data[i].essay_time+"</div><div class='clear'></div></td></tr>";
					str=str+"</tbody></table>";
					}
			
			$("#myessay2").html(str);
				});

		}
  </script>

<title>【三个粉刷匠】分享吧  最开放的中文社区</title>
<meta name="keywords" content="多彩程序发布,贴吧,说吧,社区,论坛,phpcolor"><meta name="description" content="讨论一切关于多彩程序发布的话题,网趣说吧(原多彩贴吧)是基于PHP+MySQL建立的开放性中文社区,让有相同兴趣爱好的人们可以聚集在一起,方便大家展开交流和互相帮助。于2010年9月1日上线测试。"><meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/css.css">
<link rel="Shortcut Icon" href="favicon.ico">
<script src="includes/jquery-1.4.2.min.js"></script>
<script src="includes/phpcolor.js"></script>
<script src="includes/ajax.js"></script>
</head>
	<body onkeydown="if(event.ctrlKey &amp;&amp; event.keyCode=='13'){document.getElementById('posts').click();}">
<div id="header">
  <div id="top">
	<ul>
	  	    <li><a href="http://www.wqbar.com/reg.php?reg=fill">注册</a></li><li><a href="http://www.wqbar.com/login.php?action=login&amp;last=http://www.phpcolor.com/index.php">登录</a></li>
	  	  <li><a href="http://www.wqbar.com/wap">访问手机版</a></li>
	</ul>
  </div>
  <div id="null"></div>
  <div id="hmain">
    <div id="hleft"><a href="http://www.wqbar.com/"><img src="image/logo.png" alt="三个粉刷匠帖子交流中心" width="181" height="72" longdesc="/" style="border:none;"></a></div>
	<div id="hmiddle">
	
	
	
      <ul>
	    <li>
	      <input name="barname" id="searchTie" type="text" maxlength="30" style="width:240px; height:30px; font-size:16px">
	      <input type="button" value="搜索帖子" onclick="search()" style="height:30px;">
		</li>
	  </ul>
	
	
	
	</div>
	<div id="hright"><a target="_blank" href="http://www.sugarhosts.com/zh-cn/"><img border="0" alt="" src="image/post.png"></a></div>
  </div>
  <div id="null"></div>
  <div class="clear"></div>
</div><link rel="stylesheet" type="text/css" href="css/ncss.css">
<div class="nmain">
  <div class="nnavigate">&nbsp;<a href="index.jsp">首页</a>&nbsp;&gt;&nbsp;发帖求助</div>
  <div class="nclear"></div>
  <!-- 贴吧banner开始 -->
  <div class="bannerdiv">
    <div class="bannerimg">
      <img height="93" width="976" src="image/share1.jpg">    </div>
    <div class="bannerpicn">
      <img src="image/share.JPG" width="120" height="120">    </div>
    <div></div> 
    <div class="bannerxx">
      <div class="bannerwz">
                <div class="bqbarname"><strong>【三个粉刷匠】分享吧</strong>&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#F00; font-size:10px"></span></div>
        <div class="clear"></div>
        <div style="line-height:150%">
          创建于：2017-10-31，目前整体排名第 <span style="color:#F90"><strong>1</strong></span> 位，在 家装行业交流 分类中排名第 <span style="color:#F90"><strong>1</strong></span> 位。
          会员：<span style="color:#F90"><strong>38</strong></span> 位&nbsp;&nbsp;主题：<span style="color:#F90"><strong>40</strong></span> 篇
        <br>贴吧描述：发布最新家装日记。（使用问题咨询请至：【三个粉刷匠】反馈吧）
        </div>
      </div>
    </div>
  </div>
  <div class="nclear"></div>
  <!-- 贴吧banner结束 -->
  <div class="nmianl">
        	<div class="napply"><a style="color:#0000FF;" href="allEssay.action">[<font size="4px">全部帖子</font>]</a><a style="color:#0000FF;" href="javascript:myessay()">[<font size="4px">我的帖子</font>]</a><a style="color:#0000FF;" href="javascript:mycollection()">[<font size="4px">我的收藏</font>]</a><a style="color:#0000FF;" href="javascript:myessaypub()">[<font size="4px">我要发帖</font>]</a></div>
	<div class="nclear"></div>
	<div class="nnavl">
	  <div class="nnavla">&nbsp;&nbsp;<a href="javascript:history.go(0)">默认排序</a>&nbsp;|&nbsp;<a href="javascript:orderByTime()">发贴时间</a>&nbsp;|&nbsp;<a href="#">精品主题</a></div>
	  <div class="nnavlb">作者/时间</div>
	</div>
	<div class="ncontentl" id="myessay2">
	  <table width="750" border="0" cellspacing="0" cellpadding="5">
	                    <tbody>
	                    <!--  
	                    <tr>
          <td width="515" height="40" valign="middle" class="ntext14">
            <a href="http://www.phpcolor.com/read-385439-0.html" target="_blank">多彩贴吧（PhpColor）V4.3.1 Beta版发布下载 20170108</a>
                          <span class="ntexttx">[置顶]</span>
                        <span class="ntexttx">[精]</span>                                    &nbsp;&nbsp;28/2362
          </td>
          <td valign="middle" class="ntext12">
            <div style="float:left">
            <img src="img/zhutizz.png" width="16" height="14" title="主题作者：冬紫罗">
                          <a href="http://www.wqbar.com/space.php?pages=info&amp;id=861" target="_blank" style="color:#999999">冬紫罗</a>
              <img src="img/vh.gif" width="10" height="10" title="个人认证">                                                    <br>
            <img src="img/huitiezz.png" width="16" height="14" title="回贴作者：183.249.236.*">
                                          <span style="color:#999999">183.249.236.*</span>
                                      </div>
            <div style="float:right; color:#999999; position:relative; top:10px;">
            2017-07-20
            </div>
            <div class="clear"></div>
          </td>
        </tr>
        -->
        
        <!-- 文章开头 -->
        
        <c:forEach items="${sessionScope.list}" var="essay">
        <tr bgcolor="#F6F6F6">
          <td width="515" height="40" valign="middle" class="ntext14">
            <a href="detailEssay.action?essay_id=${essay.essay_id}" target="_blank">${essay.essay_title}</a>
                                                            &nbsp;&nbsp;53/10071
          </td>
          <td valign="middle" class="ntext12">
            <div style="float:left">
            <img src="img/zhutizz.png" width="16" height="14" title="主题作者：开心就是赢">
             <a href="#" target="_blank" style="color:#999999">${essay.essay_user.user_name}</a>
                                                                  <br>
            <img src="img/huitiezz.png" width="16" height="14" title="回贴作者：sanren">
             <a href="http://www.wqbar.com/space.php?pages=info&amp;id=6658" target="_blank" style="color:#999999">sanren</a>
                                      </div>
            <div style="float:right; color:#999999; position:relative; top:10px;">
            ${essay.essay_time}
            </div>
            <div class="clear"></div>
          </td>
        </tr>
        
        </c:forEach>  
 
                    	
              		                
        <!-- 文章结束 -->
                		               
                		      </tbody></table>
                		     <div style="margin-left:200px">
                    	<pt:page pageIndex="${sessionScope.currentPage}" url="allEssay.action?" pageMax="${sessionScope.pageCount}"/>
                    </div>
	</div>
	<div class="nlinel"></div>
	<div style="text-align:right; padding-bottom:5px;">本吧共有贴子${sessionScope.count}篇&nbsp;分${sessionScope.pageCount}页显示
	<div class="nlinel"></div>
	<div>  <div style="height:200px; padding:10px;">
      </div>
</div>
  </div>
  </div>
  <div class="nmainr">
    <div style="float:right; width:215px;">
      	  <div class="nthemer">个人信息</div>
	  	  <div class="ncontentr" style="text-align:center;">您好：${sessionScope.user.user_name}。欢迎来到多彩程序发布吧<br></div>
	        <div class="nclear"></div>
	  <div class="nthemer">本吧信息</div>
	  <div class="ncontentr" style="line-height:200%">
                <span style="color:#999999">吧主：</span>        <br>          <div style="float:left; text-align:center; width:200px;">
           <a href="http://www.wqbar.com/space.php?pages=info&amp;id=861"><img src="user_img/${sessionScope.user.user_img}" width="200" height="100" style="border:0px;"></a><br>${sessionScope.user.user_name}<br>性别:${sessionScope.user.user_sex}<br>邮箱：${sessionScope.user.user_email}
           
          </div>
                                  <div class="clear"></div>
     </div>
                  <div class="nclear"></div>
	  <div class="nthemer">友情说吧</div>
	  <div class="ncontentr">
	    		<a href="https://tieba.baidu.com/index.html">百度贴吧</a><br>
				<a href="http://blog.sina.com.cn/">新浪博客</a><br>
				<a href="http://bbs.tianya.cn/">天涯论坛</a><br>
			  </div>
                  <div class="nclear"></div>
	</div>
  </div>
</div>
<div class="clear"></div>


</html>

