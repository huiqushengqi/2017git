<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>发布文章页面</title>
<link rel="stylesheet" href="css/style.default.css" type="text/css" />
<script type="text/javascript" src="js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="js/plugins/jquery.alerts.js"></script>
<script type="text/javascript" src="js/plugins/jquery.uniform.min.js"></script>
<script type="text/javascript" src="js/plugins/tinymce/jquery.tinymce.js"></script>
<script type="text/javascript" src="js/custom/general.js"></script>
<script type="text/javascript">
jQuery(document).ready(function(){

	///// TINYMCE EDITOR /////
	jQuery('textarea.tinymce').tinymce({
	// Location of TinyMCE script
	script_url : 'js/plugins/tinymce/tiny_mce.js',

	// General options
	theme : "advanced",
	skin : "themepixels",
	plugins : "autolink,lists,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template,advlist",
	inlinepopups_skin: "themepixels",
	// Theme options
	theme_advanced_buttons1 : "bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,outdent,indent,blockquote,formatselect,fontselect,fontsizeselect",
	theme_advanced_buttons2 : "pastetext,pasteword,|,bullist,numlist,|,undo,redo,|,link,unlink,image,help,code,|,preview,|,forecolor,backcolor,removeformat,|,charmap,media,|,fullscreen",
	theme_advanced_buttons3 : "",
	theme_advanced_toolbar_location : "top",
	theme_advanced_toolbar_align : "left",
	theme_advanced_statusbar_location : "bottom",
	theme_advanced_resizing : true,

	// Example content CSS (should be your site CSS)
	content_css : "css/plugins/tinymce.css",

	// Drop lists for link/image/media/template dialogs
	template_external_list_url : "lists/template_list.js",
	external_link_list_url : "lists/link_list.js",
	external_image_list_url : "lists/image_list.js",
	media_external_list_url : "lists/media_list.js",

	// Replace values for the template plugin
	template_replace_values : {
		username : "Some User",
		staffid : "991234"
	}
	});
		
		
	jQuery('.editornav a').click(function(){
		jQuery('.editornav li.current').removeClass('current');
		jQuery(this).parent().addClass('current');
		if(jQuery(this).hasClass('visual'))
			jQuery('#elm1').tinymce().show();
		else
			jQuery('#elm1').tinymce().hide();
		return false;
	});
});
</script>
<!--[if IE 9]>
    <link rel="stylesheet" media="screen" href="css/style.ie9.css"/>
<![endif]-->
<!--[if IE 8]>
    <link rel="stylesheet" media="screen" href="css/style.ie8.css"/>
<![endif]-->
<!--[if lt IE 9]>
	<script src="js/plugins/css3-mediaqueries.js"></script>
<![endif]-->
</head>

<body class="withvernav">
<div class="bodywrapper">
    <div class="topheader">
        <div class="left">
            <h1 class="logo">Ama.<span>Admin</span></h1>
            <span class="slogan">后台管理系统</span>
            
            <div class="search">
            	<form action="" method="post">
                	<input type="text" name="keyword" id="keyword" value="Enter keyword(s)" />
                    <button class="submitbutton"></button>
                </form>
            </div><!--search-->
            
            <br clear="all" />
            
        </div><!--left-->
        
        <div class="right">
        	<!--<div class="notification">
                <a class="count" href="notifications.jsp"><span>9</span></a>
        	</div>
			-->
        	<div class="userinfo">
            	<img src="images/thumbs/avatar.png" alt="" />
                <span>${sessionScope.manager.manager_name}</span>
            </div><!--userinfo-->
            
            <div class="userinfodrop">
            	<div class="avatar">
                	<img src="images/thumbs/avatarbig.png" alt="" />
                </div><!--avatar-->
                <div class="userdata">
                	<h4>${sessionScope.manager.manager_name}</h4>
                    <span class="email"></span>
                    <ul>
                    	
                        <li><a href="index.jsp">退出</a></li>
                    </ul>
                </div><!--userdata-->
            </div><!--userinfodrop-->
        </div><!--right-->
    </div><!--topheader-->
    
    
    <div class="header">
    	<ul class="headermenu">
        	<li><a href="dashboard.jsp"><span class="icon icon-flatscreen"></span><span>首页</span></a></li>
            <li class="current"><a href="manageblog.jsp"><span class="icon icon-pencil"></span>帖子管理</a></li>
            <li><a href="messages.jsp"><span class="icon icon-message"></span>消息通知</a></li>
            <li><a href="reports.jsp"><span class="icon icon-chart"></span>用户建议</a></li>
        </ul>
        
      
        
    </div><!--header-->
    
    <div class="vernav">
    	<ul>
        	<li><a href="manageblog.jsp">帖子</a></li>
            <li class="current"><a href="newpost.jsp">帖子</a></li>
            <li><a href="">帖子</a></li>
            <li><a href="">帖子</a></li>
        </ul>
        <a class="togglemenu"></a>
    </div><!--leftmenu-->
    
    <div class="centercontent">
    
        <div class="pageheader notab">
            <h1 class="pagetitle">帖子</h1>
            <span class="pagedesc">帖子</span>
            
        </div><!--pageheader-->
        
        <div class="contentwrapper">
        	<div class="two_third">
                 <form action="" method="post">
                    <input type="text" name="title" class="fullwidth" value="Enter title here" />
                    
                    <br /><br />
                    
                    <!-- Gets replaced with TinyMCE, remember HTML in a textarea should be encoded -->
                    <div>
                        <textarea id="elm1" name="elm1" rows="15" cols="80" style="width: 80%" class="tinymce">
                            &lt;p&gt;
                                This is some example text that you can edit inside the &lt;strong&gt;TinyMCE editor&lt;/strong&gt;.
                            &lt;/p&gt;
                        </textarea>
                    </div>
            
            
                    <br /><br />
                    <input type="submit" name="save" value="Submit" />
                    <input type="reset" name="reset" value="Reset" />
                 </form>
             </div><!--two_third-->
        </div><!--contentwrapper-->
    
    </div><!--centercontent-->
    
    
</div><!--bodywrapper-->

</body>
</html>
