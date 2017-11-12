<%@page import="com.etc.coder.entity.Job"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb"><head>
</script><script type="text/javascript" async="" src="style/js/conversion.js"></script>
<script src="style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script><style type="text/css"></style>
<meta content="no-siteapp" http-equiv="Cache-Control">
<link  media="handheld" rel="alternate">
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>发布新职位-招聘服务-拉勾网-最专业的互联网招聘平台</title>
<meta content="23635710066417756375" property="qc:admins">
<meta name="description" content="拉勾网是3W旗下的互联网领域垂直招聘网站,互联网职业机会尽在拉勾网">
<meta name="keywords" content="拉勾,拉勾网,拉勾招聘,拉钩, 拉钩网 ,互联网招聘,拉勾互联网招聘, 移动互联网招聘, 
垂直互联网招聘, 微信招聘, 微博招聘, 拉勾官网, 拉勾百科,跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘,
O2O招聘, LBS招聘, 社交招聘, 校园招聘, 校招,社会招聘,社招">
<meta content="QIQ6KC1oZ6" name="baidu-site-verification">

<!-- <div class="web_root"  style="display:none">http://www.lagou.com</div> -->
<script type="text/javascript">
var ctx = "http://www.lagou.com";
console.log(1);
</script>
<link href="http://www.lagou.com/images/favicon.ico" rel="Shortcut Icon">
<link href="style/css/style.css" type="text/css" rel="stylesheet">
<link href="style/css/external.min.css" type="text/css" rel="stylesheet">
<link href="style/css/popup.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="style/js/jquery.1.10.1.min.js"></script>
<script src="style/js/jquery.lib.min.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/ajaxfileupload.js"></script>
<script src="style/js/additional-methods.js" type="text/javascript"></script>
<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->
<script type="text/javascript">
var youdao_conv_id = 271546; 
</script> 
<script src="style/js/conv.js" type="text/javascript"></script>




<body>
<div id="body">
	<div id="header">
    	<div class="wrapper">
    		<a class="logo" href="index.html">
    			<img width="229" height="43" alt="拉勾招聘-专注互联网招聘" src="style/images/logo.png">
    		</a>
    		<ul id="navheader" class="reset">
    			<li><a href="index.jsp">首页</a></li>
    			<li><a href="#">公司</a></li>
    			<li><a target="_blank" href="/Team6/Controller?flag=showdiscuss">论坛</a></li>
    			<li class="current"><a rel="nofollow" href="#">审核企业的岗位</a></li>
    				   <li><a rel="nofollow" href="">发布学习资料</a></li>
	    				
	    		    		</ul>
	    		    		
	    		    		<ul class="loginTop">
        	           <li>&nbsp;&nbsp;&nbsp;&nbsp;管理员：${sessionScope.manager.manager_name }&nbsp;&nbsp;&nbsp;&nbsp;</li>
                     </ul>
                      </div>
                    </div><!-- end #header -->
                     <div id="container">
        


            <div class="content">
            	<dl class="company_center_content">
                    <dt>
                        <h1>
                            <em></em>
                          审核的岗位
                     </h1>
                    </dt>
                    <dd>
                    	<form action="#" method="post" id="jobForm">
                    	   <c:forEach items="${requestScope.joblist}" var="myjob">
                    	   <div >
						  <a style="margin-left: 10px "> ${myjob.job_name } </a><label style="float:right; margin-right: 10px "><a href="javascript:mycheck('${ myjob.job_id}')">审核</a>&nbsp;&nbsp;&nbsp;&nbsp;</a></label><br><br><br>
						  </div>
                    	   </c:forEach> 
                        </form>
                    </dd>
                </dl>
            </div><!-- end .content -->

<!------------------------------------- 弹窗lightbox ----------------------------------------->
<div style="display:none;">
	<!--联系方式弹窗-->	
        <div style="height:180px;" class="popup" id="telTip">
	        <form id="telForm">
	        	<table width="100%">
	            	<tbody><tr>
	            		<td align="center" class="f18">留个联系方式方便我们联系你吧！</td>
	            	</tr>
	            	<tr>
	                	<td align="center">
							<input type="text" maxlength="49" placeholder="请输入你的手机号码或座机号码" name="tel">
							<span style="display:none;" class="error" id="telError"></span>
						</td>
	                </tr>
	                <tr>
	                	<td align="center">
	                		<input type="submit" value="提交" class="btn">
	                	</td>
	                </tr>
	            </tbody></table>
            </form>
        </div><!--/#telTip-->
   
<!------------------------------------- end ----------------------------------------->


<!-- old -->
<script src="style/js/jquery.tinymce.js" type="text/javascript"></script>
<script>
$(function(){
		
	/***********************************************
	** textarea 编辑器
	*/
	$('textarea.tinymce').tinymce({
		// Location of TinyMCE script
		script_url : ctx+'/js/tinymce/jscripts/tiny_mce/tiny_mce.js',

		// General options
		theme : "advanced",
		language : "zh-cn",
		plugins : "paste,autolink,lists,style,layer,save,advhr,advimage,advlink,iespell,inlinepopups,preview,media,searchreplace,contextmenu,fullscreen,noneditable,visualchars,nonbreaking",

		// Theme options
		theme_advanced_buttons1 : "bold,italic,underline,|,justifyleft,justifycenter,justifyright,|,bullist,numlist,|,outdent,indent,|,undo,redo,|,link,unlink,|,hr,fullscreen,image",
		theme_advanced_toolbar_location : "top",
		theme_advanced_toolbar_align : "left",
		theme_advanced_statusbar_location : "none",//定义输入框下方是否显示状态栏，默认不显示
		theme_advanced_resizing : false,
		paste_auto_cleanup_on_paste: true,
		paste_as_text: true,
		auto_cleanup_word:true,
		paste_remove_styles: true,
		contextmenu: "copy cut paste",
        force_br_newlines: true,
        force_p_newlines: false,
        apply_source_formatting: false,
        remove_linebreaks: false,
        convert_newlines_to_brs: true,

		// Example content CSS (should be your site CSS)
		content_css : ctx+"/js/tinymce/examples/css/content.css",

		// Drop lists for link/image/media/template dialogs
		template_external_list_url : "lists/template_list.js",
		external_link_list_url : "lists/link_list.js",

		// Replace values for the template plugin
		template_replace_values : {
			username : "Some User",
			staffid : "991234"
		},
		//onchange_callback: function(editor){
	       // tinyMCE.triggerSave();
	      //  var editorContent = tinyMCE.get(editor.id).getContent();
		   // if(editorContent.length &gt; 20){
			//	$("#" + editor.id).valid();
		   // }
	    //} 
	});
	
	$('#workAddress').focus(function(){
		$('#beError').hide();
	});
});
</script>
<!-- end old -->

<script src="style/js/jobs.min.js" type="text/javascript"></script>
<script type="text/javascript">
//百度地图API功能
var map = new BMap.Map("allmap");
//控件添加
map.addControl(new BMap.NavigationControl());
map.addControl(new BMap.MapTypeControl());
map.addControl(new BMap.ScaleControl());
map.addControl(new BMap.OverviewMapControl());

var point = new BMap.Point(116.331398,39.897445);//初始化坐标点
map.centerAndZoom(point, 15);
/* map.centerAndZoom(, 15); */
map.enableScrollWheelZoom(true);//允许缩放
var gc = new BMap.Geocoder();//地址定位
var local = new BMap.LocalSearch(map, {
	  renderOptions:{map: map}
});




map.addEventListener("click", showInfo);//地图点击事件

$(function(){
	$('#mapPreview').bind('click',function(){
		$.colorbox({inline:true, href:"#baiduMap",title:"公司地址"});
		var address = $('#positionAddress').val();
		var city = $('#workAddress').val();
	    map.setCurrentCity(city);
	    map.setZoom(15);
		gc.getPoint(address, function(point){
		  if (point) { 
		    map.centerAndZoom(point, 15);
			map.setZoom(15);
	    	map.setCenter(point);
		   	local.search(address);
		  }
		}, city); 
		/* map.addEventListener("tilesloaded",function(){
	    	map.setZoom(15);
	    }); */
	});
});

//审核岗位的方法
function mycheck(op){
if(confirm("现在审核这个岗位")){
   //将要审核的岗位id传入下个页面
   location.href="ManagerServlet?flag=queryonejob&jid="+op;

}
}





</script>

			<div class="clear"></div>
			<input type="hidden" value="c29d4a7c35314180bf3be5eb3f00048f" id="resubmitToken">
	    	<a rel="nofollow" title="回到顶部" id="backtop" style="display: none;"></a>
	    </div><!-- end #container -->
	</div><!-- end #body -->
	<div id="footer">
		<div class="wrapper">
			<a rel="nofollow" target="_blank" href="about.html">联系我们</a>
		    <a target="_blank" href="http://www.lagou.com/af/zhaopin.html">互联网公司导航</a>
		    <a rel="nofollow" target="_blank" href="http://e.weibo.com/lagou720">拉勾微博</a>
		    <a rel="nofollow" href="javascript:void(0)" class="footer_qr">拉勾微信<i></i></a>
			<div class="copyright">&copy;2013-2014 Lagou 
			<a href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action" 
			target="_blank">京ICP备14023790号-2</a></div>
		</div>
	</div>

<script src="style/js/core.min.js" type="text/javascript"></script>
<script src="style/js/popup.min.js" type="text/javascript"></script>

<!--  -->


<div id="cboxOverlay" style="display: none;"></div>
<div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="cboxWrapper"><div>
<div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div>
<div id="cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div>
<div id="cboxContent" style="float: left;"><div id="cboxTitle" style="float: left;"></div><div id="cboxCurrent" style="float: left;"></div>
<button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button>
<button id="cboxSlideshow"></button><div id="cboxLoadingOverlay" style="float: left;"></div>
<div id="cboxLoadingGraphic" style="float: left;"></div></div><div id="cboxMiddleRight" style="float: left;"></div></div>
<div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div>
<div id="cboxBottomRight" style="float: left;"></div></div></div>
<div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div></body></html>
