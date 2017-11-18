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
  <script type="text/javascript" charset="utf-8">  
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
	function mycollection(op){

		alert("收藏成功");
		$.getJSON("lf_myconnection.action",{essay_id:op},function(data){
			});
		
		}  

	function myReview(){
		var review_content=document.getElementById("content").value;
		var review_essay=${sessionScope.essay.essay_id};
			$.getJSON("lf_addReview.action",{review_content:review_content,review_essay:review_essay},function(data){
					var str="";
				for(var i=0;i<data.length;i++){
						str=str+"<div class='ncontentla'><div class='nuserxx'><img src='user_img/"+data[i].review_user.user_img+"' width='200' height='100'></div>";
						str=str+"<div class='nuserxx'><a href='http://www.wqbar.com/space.php?pages=info&amp;un=开心就是赢'>"+data[i].review_user.user_name+"</a></div><div class='nuserxx' style='display:none;' id='block2'><form action='bar_action.php?bid=2025&amp;id=1287&amp;name=开心就是赢&amp;action=block' method='post' name='block'><select name='hour'><option value='12' selected=''>12小时</option><option value='24'>24小时</option><option value='72'>3天</option><option value='120'>5天</option><option value='240'>10天</option></select><input type='submit' value='执行'><br><select name='blockyuanyin' id='blockyuanyin'><option value='0' selected=''>请选择原因</option><option value='发布广告'>发布广告</option><option value='人身攻击'>人身攻击</option><option value='发布违法/违规内容'>发布违法/违规内容</option><option value='其它原因'>其它原因</option></select></form></div>"
						str=str+"<div class='nuserxx'></div></div>";
						str=str+"<div class='ncontentlb'><div class='ntextdh' style='float:left'><a name='2'></a>"+(i+2)+"楼&nbsp;发表于"+data[i].review_time+"&nbsp;Sid:2403</div><div class='nclear'></div><br><span class='ntext14'><font color='blue'>"+data[i].review_content+"</font></span>";
						str=str+"<div class='nqianm'><img src='css/signature.jpg'><br>从此之后~我再也没有理由拒绝成长~拒绝面对~那一纸黑皮本子~结束了所有的任性 迷茫</div></div><div class='nclear'></div><div class='nlinel'></div>";
							}
				$("#myreview").html(str);
				});
		}
  </script>
<title>【三个粉刷匠】分享吧  最开放的中文社区</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/css.css">
<link rel="Shortcut Icon" href="favicon.ico">
<script src="js/jquery-1.4.2.min.js"></script>
<script src="js/phpcolor.js"></script>
<script src="js/ajax.js"></script>
</head>
	<body onkeydown="if(event.ctrlKey &amp;&amp; event.keyCode=='13'){document.getElementById('posts').click();}"><link href="http://v3.jiathis.com/code/css/jiathis_share.css" rel="stylesheet" type="text/css"><iframe frameborder="0" style="position: absolute; display: none; opacity: 0;"></iframe><div class="jiathis_style" style="position: absolute; z-index: 1000000000; display: none; top: 50%; left: 50%; overflow: auto;"></div><div class="jiathis_style" style="position: absolute; z-index: 1000000000; display: none; overflow: auto;"></div><iframe frameborder="0" src="http://v3.jiathis.com/code/jiathis_utility.html" style="display: none;"></iframe>
<div id="header">
  <div id="top">
	<ul>
	  	    <li><a href="index.jsp">注册</a></li><li><a href="index.jsp">登录</a></li>
	</ul>
  </div>
  <div id="null"></div>
  <div id="hmain">
    <div id="hleft"><a href="http://www.wqbar.com/"><img src="image/f.JPG" alt="分享贴吧" width="181" height="72" longdesc="/" style="border:none;"></a></div>
	<div id="hmiddle">
	<form action="create.php" method="get">
      <ul>
        
	    <li>
	      <input name="barname" type="text" maxlength="30" style="width:240px; height:30px; font-size:16px">
	      <input type="submit" value="进吧" style="height:30px;">
		</li>
	  </ul>
	</form>
	</div>
	<div id="hright"><a target="_blank" href="http://www.sugarhosts.com/zh-cn/"><img border="0" alt="" src="http://www.phpcolor.com/Sugarhosts_ad_shared_zh4c_468x60.gif"></a></div>
  </div>
  <div id="null"></div>
  <div class="clear"></div>
</div><link rel="stylesheet" type="text/css" href="css/ncss.css">
<div class="nmain">
  <div class="nnavigate">&nbsp;<a href="index.jsp">首页</a>&nbsp;&gt;&nbsp;浏览贴子&nbsp;</div>
  <div class="nclear"></div>
  <div class="nmianl">
            <div class="nbarname">&nbsp;<a href="allEssay.action">返回主题列表</a></div>
	<div class="ncaozuo"><a href="#" onclick="mycollection(${sessionScope.essay.essay_id})">收藏本贴</a></div>
	<div class="nclear"></div>
	<div class="nthemel" >&nbsp;<font size="5px" style="margin:0px auto;color:black;">${sessionScope.essay.essay_title}&nbsp;&nbsp;</font></div>
	<div class="nclear"></div>
	<div class="ncontentl">
	  	  <div class="ncontentla">
	  	 
	  	 
	  	 
	  	 
	    <!-- <div class="nuserxx"><img src="${requestScope.essay.essay_user.user_img}23" width="100" height="100"></div> -->
	    <div class="nuserxx">${sessionScope.essay.essay_user.user_name}</div>
		<div class="nuserxx" style="display:none;" id="block1"><form action="bar_action.php?bid=2025&amp;id=1287&amp;name=开心就是赢&amp;action=block" method="post" name="block"><select name="hour"><option value="12" selected="">12小时</option><option value="24">24小时</option><option value="72">3天</option><option value="120">5天</option><option value="240">10天</option></select><input type="submit" value="执行"><br><select name="blockyuanyin" id="blockyuanyin"><option value="0" selected="">请选择原因</option><option value="发布广告">发布广告</option><option value="人身攻击">人身攻击</option><option value="发布违法/违规内容">发布违法/违规内容</option><option value="其它原因">其它原因</option></select></form></div>
				<div class="nuserxx"></div>
	  </div>
	  <div class="ncontentlb">
	    <div class="ntextdh" style="float:left"><a name="1"></a>1楼&nbsp;发表于${sessionScope.essay.essay_time}&nbsp;Sid:1287</div>
		<div class="ntextdh" style="float:right">&nbsp;&nbsp;<a href="javascript:setCaretAtEnd('1');">回复</a>&nbsp;<a href="javascript:share();">分享</a></div>
		<div class="nclear"></div>
			    <div style="word-break:break-all; text-align:right; padding:2px; height:15px; display:none;" id="postclass">
		<form action="bar_action.php?bid=2025&amp;id=1287&amp;classid=&amp;action=postclass" method="post" name="postclass">选择分类：<select name="postclass"><option value="0" selected="">取消分类</option></select><input type="submit" value="提交"></form>
	    </div>
	    	    		<div></div>
						<br><span class="ntext14">${sessionScope.essay.essay_content}</span>
		<div class="nqianm"><img src="css/signature.jpg"><br>从此之后~我再也没有理由拒绝成长~拒绝面对~那一纸黑皮本子~结束了所有的任性 迷茫</div>
	  </div>
	  
	  
	  
	  
	  <div class="nclear"></div>
	  <div class="nlinel"></div>
	  
	  <!-- 作者信息b -->
  <div class="nmainr" style="position:absolute;right:200px;top:180px">
    <div style="float:right; width:215px;height:400px">
	  <div class="nthemer">楼主信息</div>
	  	  <div class="ncontentr" style="text-align:center;">楼主：${sessionScope.essay.essay_user.user_name}<br>欢迎来到多彩程序发布吧<br></div>
	  	              <a href="#"><img src="user_img/${sessionScope.essay.essay_user.user_img}" width="200" height="150" style="border:0px;"></a><br>性别:${sessionScope.user.user_sex}<br>邮箱：${sessionScope.user.user_email}
	        	  <div class="nclear"></div>
	  <div class="nthemer">吧主</div>
	  <div class="ncontentr"><a href="#">${sessionScope.essay.essay_user.user_name}</a><br></div>
	                    	  <div class="nclear"></div>
	</div>
  </div>
</div>
  <!-- 作者信息e -->
	  
	  
	  <div id="myreview">
	  <!-- 评论开始 -->
	  <c:forEach items="${sessionScope.list}" var="review" varStatus="status">
	  	  <div class="ncontentla">
	    <div class="nuserxx"><img src="user_img/${review.review_user.user_img}" width="200" height="100"></div>
	    <div class="nuserxx"><a href="http://www.wqbar.com/space.php?pages=info&amp;un=开心就是赢">${review.review_user.user_name}</a></div>
		<div class="nuserxx" style="display:none;" id="block2"><form action="bar_action.php?bid=2025&amp;id=1287&amp;name=开心就是赢&amp;action=block" method="post" name="block"><select name="hour"><option value="12" selected="">12小时</option><option value="24">24小时</option><option value="72">3天</option><option value="120">5天</option><option value="240">10天</option></select><input type="submit" value="执行"><br><select name="blockyuanyin" id="blockyuanyin"><option value="0" selected="">请选择原因</option><option value="发布广告">发布广告</option><option value="人身攻击">人身攻击</option><option value="发布违法/违规内容">发布违法/违规内容</option><option value="其它原因">其它原因</option></select></form></div>
				<div class="nuserxx"></div>
	  </div>
  
	  <div class="ncontentlb">
	    <div class="ntextdh" style="float:left"><a name="2"></a>${status.count+1}楼&nbsp;发表于${review.review_time}&nbsp;Sid:2403</div>
		<div class="nclear"></div>
			    				<br><span class="ntext14"><font color="blue">${review.review_content} </font></span>
		<div class="nqianm"><img src="css/signature.jpg"><br>从此之后~我再也没有理由拒绝成长~拒绝面对~那一纸黑皮本子~结束了所有的任性 迷茫</div>
	  </div>
	  <div class="nclear"></div>
	  <div class="nlinel"></div>
	  </c:forEach>	  
	 </div>
	  	 <!-- 评论结束 -->
	  	 <div style="margin-left:200px">
                    	<pt:page pageIndex="${sessionScope.currentPage2}" url="detailEssay.action?essay_id=${sessionScope.essay.essay_id}&" pageMax="${sessionScope.pageCount2}"/>
                    </div>
	  	 
	
	<div class="nlinel"></div>
	<div id="post">
	
	<!--B用户评论 -->

    <div style="height:2px;" class="clear"></div>
  <div class="postnr">
    <div style="height:25px; line-height:25px;">回复楼主</div>
    <div><textarea id="content" name="review_content" id="review_content" style="width:510px; height:169px; border:none;"></textarea></div>
  </div>
  

    <div style="height:2px;" class="clear"></div>
  
      <div style="height:2px;" class="clear"></div>
      
    <div style="text-align:left;">
    <!-- 
      <input name="" id="verify" type="text" class="box1" size="4" value="验证码" onfocus="if(value==defaultValue){value='';this.style.color='#000'}" onblur="if(!value){value=defaultValue;this.style.color='#999'}" style="color:#999999">&nbsp;<img src="verify.php" alt="看不清，换一张" name="img" id="img" onclick="sendcode();">&nbsp;<a href="bar_user.php?action=join&amp;bid=2025">加入</a>本吧，免验证码   
     -->
      </div>
    <div style="height:2px;" class="clear"></div>
  <div style="text-align:left;">
  <input type="hidden" name="essay_id" value="${sessionScope.essay.essay_id}"/>
  <input id="posts" type="button" value="提交" onclick="myReview()">&nbsp;&nbsp;&nbsp;Ctrl+Enter快捷发表
  </div>
 
      <!--E用户评论 -->
      
      
  
  <div style="height:2px;" class="clear"></div>
  <div id="waring" style="text-align:left;"></div>
  <input type="hidden" value="" id="file" name="file">
</div>

</div>
  </div>

<div id="indext" class="divcover" style="top:0px; display:none;"></div>
<div id="indext1" class="divcreate" style="top:0px; display:none;">
  <div style="background:#EFF8FC; height:20px; width:100%; text-align:right;"><a href="JavaScript:" onclick="indextc()">[关闭]</a>&nbsp;</div>
  <div style="padding:5px;">您好，如果您感觉本贴不错，可以使用本功能向管理员推荐，本贴就有可能在首页显示哦~（请注意推荐质量，如被判定为恶意推荐，您之前的所有推荐将全部被清除，不会进行人工审核）<br><br><a href="javascript:indexta('1287');">推荐本贴上首页</a><div class="nclear"></div><div id="waringt"></div></div>
</div>
<div id="fenxiang" class="divcover" style="top:0px; display:none;"></div>
<div id="fenxiang1" class="divcreate" style="top:0px; display:none;">
  <div style="background:#EFF8FC; height:20px; width:100%; text-align:right;"><a href="JavaScript:" onclick="sharec()">[关闭]</a>&nbsp;</div>
  <div style="padding:5px;">
    分享给好友：<input type="text" class="box1" size="40" value="http://www.wqbar.com/read.php?id=1287"><br><br>一键分享到以下网站：<br><br>
	<div id="ckepop">
      <div style="float:left"><a class="jiathis_button_tsina" title="分享到微博" href="https://weibo.com/"><span class="jiathis_txt jiathis_separator jtico jtico_tsina">新浪微博</span></a>&nbsp;</div>
      <div style="float:left"><a class="jiathis_button_tqq" title="分享到腾讯微博" href="http://t.qq.com/"><span class="jiathis_txt jiathis_separator jtico jtico_tqq">腾讯微博</span></a>&nbsp;</div>
      <div style="float:left"><a class="jiathis_button_qzone" title="分享到QQ空间" href="https://qzone.qq.com/"><span class="jiathis_txt jiathis_separator jtico jtico_qzone">QQ空间</span></a>&nbsp;</div>
      <div style="float:left"><a class="jiathis_button_renren" title="分享到人人网" href="http://www.renren.com/"><span class="jiathis_txt jiathis_separator jtico jtico_renren">人人网</span></a></div>
	  <div class="nclear"></div>
      <div style="float:left"><a class="jiathis_button_kaixin001" title="分享到开心网" href="http://www.kaixin001.com/"><span class="jiathis_txt jiathis_separator jtico jtico_kaixin001">开心网</span></a>&nbsp;</div>
      <div style="float:left"><a class="jiathis_button_xiaoyou" title="分享到朋友网" href="http://www.pengyou.com/"><span class="jiathis_txt jiathis_separator jtico jtico_xiaoyou">朋友网</span></a>&nbsp;</div>
      <div style="float:left"><a class="jiathis_button_tianya" title="分享到天涯社区" href="http://www.tianya.cn/"><span class="jiathis_txt jiathis_separator jtico jtico_tianya">天涯社区</span></a>&nbsp;</div>
      <div style="float:left"><a class="jiathis_button_mop" title="分享到猫扑推客" href="http://www.mop.com/"><span class="jiathis_txt jiathis_separator jtico jtico_mop">猫扑推客</span></a></div>
	  <div class="clear"></div>
    </div>
  </div>
</div>
<script type="text/javascript">
var jiathis_config={
	data_track_clickback:true,
	summary:"",
	ralateuid:{
		"tsina":"2172378411"
	},
	hideMore:true
}
</script>
<script type="text/javascript" src="http://v3.jiathis.com/code/jia.js?uid=1669460" charset="utf-8"></script><script type="text/javascript" src="http://v3.jiathis.com/code/plugin.client.js" charset="utf-8"></script>
<div class="clear"></div>

</body>
</html>

