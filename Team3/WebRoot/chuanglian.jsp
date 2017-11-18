<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<!--[if IE 6]><html lang="en" class="ielt7  ielt8  ielt9 ielt10 en"><![endif]-->
<!--[if IE 7]><html lang="en" class="ie7  ielt8  ielt9 ielt10 en"><![endif]-->
<!--[if IE 8 ]><html lang="en" class="ie8 ielt9 ielt10 en"><![endif]-->
<!--[if IE 9 ]><html lang="en" class="ie9 ielt10 en"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--><html lang="en" class=" en"><!--<![endif]-->
<head>

<meta charset="utf-8">
<meta name="renderer" content="webkit">
<title>三个粉刷匠装饰-装修总预算计算器</title>
<meta name="keywords" content="" />
<meta name="description" content="" />

<link href="css/tools.css" rel="stylesheet" type="text/css" />
              <link href="css/tools_style.css" rel="stylesheet" type="text/css" />
                      <link href="css/tools_face.css" rel="stylesheet" media="print" type="text/css" />

<script>
       var jq = jQuery.noConflict();
</script>
<script type="text/javascript">
   function checkSerachForm(){
     if(jq('.header_search_input').val()==""){
       jq('.header_search_input').focus()
       return false
     }else{
       try{clickStream.getCvParams(searchclicktage);}catch(e){}
       return true;
     }
   }
</script>
<style type="text/css">
.amyclass{
	float: left;
	padding-bottom: 10px;
	margin-right: 22px;
	display: inline;
	width: 967px; 
	height: 130px;
}
</style>
</head>
<body class="narrow_980">
<jsp:include page="MyJsp.jsp"></jsp:include><br>
<br>
<div class="header">

</div><script src="js/office_tool.js" type="text/javascript"></script>
<div id="content">
<div class="tools_all" id="tools_all_menu_ls"><div class="tools_menu" id="tools_menu_list">
<div class="tools_menu_title"><img src="img/tools_tubiao.gif" />&nbsp;家装计算器</div>
<div class="tools_title_list">
<ul class="menu_list">
		<li class="menu_first"><a href="quote.jsp">装修总预算器</a></li>

		<li class="menu_other"><a href="myquote.action?name=qiangzhuan&typename=墙砖&page=1">墙砖</a></li>
		
		<li class="menu_other"><a href="myquote.action?name=dizhuan&typename=地砖&page=1">地砖</a></li>
		
		<li class="menu_other"><a href="myquote.action?name=bizhi&typename=壁纸&page=1">壁纸</a></li>
		
		<li class="menu_other"><a href="myquote.action?name=tuliao&typename=涂料&page=1">涂料</a></li>
		<li class="menu_other_temp">窗帘</li>
		<li class="menu_list">
			<div class="menu_last_jsq"><a href="myquote.action?name=chuanglian&typename=窗帘&page=1">●计算器</a></div>
			<div class="menu_last_cp"><a href="#" target="_blank">●相关产品</a></div>
		</li>
	
</ul>
</div>
</div><DIV class="area areabg areabor clearfix" id="tools_area">
<div id="tools_title"></div>
<div id="tools_title_bg">窗帘计算结果</div>

<div class="sjs_bg5">
<DIV class=content> 
		  <span class="top_bg"></span>
		  <form method="post" id="counter_window" name="windowcloth">
		  
		  <div class="tools_mz_an">
				<dl class="info_window info_window_none">
			    	<dd>您需要的布料数量是
			     	<input name="clothnum" type="text" class="text_width"/> 米</dd>
				</dl>
			</div>
		   <div class="tools_line"></div>
		   
		    <div id="bg_color">
			<DIV class="tools_dz_neirong">
				<div class="tools_dz_list_f">
					<dl class="info_window">
					  <dt><span>• 请输入窗户信息</span></dt> 
					  <dd>窗户高度 <input name="window_height" type="text" class="text_width"/> 米</dd>
					  <dd>窗户宽度 <input name="window_width" type="text" class="text_width"/> 米</dd>
					</dl>				
				</div>
				<div class="tools_dz_list_s">
					 <dl class="info_window">
					  <dt><span>• 请输入布料信息</span></dt> 
						<dd>布料长度 <input name="wallpaperpm" id="clothwidth"  type="text" class="text_width" value="1.5"/> 米</dd>
					</dl>
				</div>

			 </DIV>
			<div class="tools_line"></div>
			 
			<div class="tools_js_last">
				 <a  id="submit" href="javascript:window_cloth(document.windowcloth)">  </a>
				
				 <input name="reset" type="reset" id="reset" value=" " />
			
			</div>			 
			 
			</div>
		  </form>
		 
		  <span class="buttom_bg"></span>
</div></div>
 <div id="tools_sm">
 <span class="style_size">郑重声明：</span><span class="tools_sm_s">该计算器提供的结果仅供参考。购买时请以专业厂商提供的数据为准。</span>
 </div>
 <script src="/gb_js/jquery.js" type="text/javascript"></script>
<script>
jq = jQuery.noConflict();
jq(document).ready(function(){
	//alert(jq("#tools_area").css("height"));
	jq("#tools_menu_list").css("height",jq(".area").css("height"));
	

});
</script>

<div id="tools_cp_list">
		
		<div class="cont01">
	<div class="product_main">					
	  <c:forEach var="mat" items="${requestScope.mt.list }" begin="0"  end="1"  varStatus="stus">
				 <div class="amyclass">
				 
					  <div class="myclass1">
					     <p>
							<img src="${mat.mat_cover }" width="100px" height="100px" />
						</p>
					     </div>
					      <div class="myclass2">
					             材料名称：${mat.mat_name}
					    <br>材料价格：${mat.mat_price }￥
					     <br>材料简介：${mat.mat_about }					       
					     </div>
					    </div>
					   
					  </c:forEach>
				</div>
			   </div><!--infor for end-->
		<div style="width: 80px;height:40px;margin-top:270px;margin-right:33px;border-radius:5px;background-color: #F7B629;text-align: center;"><a href="myquote.action?name=material_infor4&typename=窗帘&page=1"><span style="color: white;">了解更多</span></a></div>	

</div></div>

<div class="footer">


</div>
</body>
</html>