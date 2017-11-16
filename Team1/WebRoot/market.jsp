<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta charset="utf-8">
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
		<meta http-equiv="x-pjax-version" content="v7">
		<link rel="apple-touch-icon" href="images/logo.jpg">
		<link rel="alternate" media="only screen and (max-width: 640px)"
			href="https://bbs.pku.edu.cn/v2/mobile/post-read.php?bid=730&amp;threadid=16260860">
		<script type="text/javascript">
	window.login = false;
	window.username = "guest";
</script>

		<!-- start _stylesheets_and_scripts.php-->
		<link rel="stylesheet" href="css/all.css">
		<script>
	if (typeof (window.console) == 'undefined')
		window.console = {};
	if (typeof (window.console.log) == 'undefined')
		window.console.log = function(a) {
		};
</script>
		<script src="js/config.js"></script>
		<script src="js/crypto-js.js"></script>
		<script src="js/jquery-1.11.3.min.js"></script>
		<script src="js/jquery.pjax.js"></script>
		<script src="js/jquery.ba-resize.min.js"></script>
		<script src="js/underscore-min.js"></script>
		<script src="js/jquery.gridly.js"></script>
		<script src="js/jquery.transit.js"></script>
		<script src="js/rangy-core.js"></script>
		<script src="js/rangy-selectionsaverestore.js"></script>
		<script src="js/perfect-scrollbar.jquery.min.js"></script>
		<script src="js/sortable.min.js"></script>
		<script src="js/jquery.selection.js"></script>
		<script src="js/strophe.min.js"></script>
		<script src="js/highlight.pack.js"></script>
		<script src="js/highslide-with-gallery.js"></script>
		<script src="js/bdwm.min.js"></script>
		<script src="js/all.min.js"></script>
		<link rel="stylesheet" href="css/font-awesome.min.css">
		<link rel="stylesheet" href="css/github.css">
		<link rel="stylesheet" href="css/perfect-scrollbar.min.css">
		<link rel="stylesheet" href="css/highslide.css" />
		<!--[if lt IE 7]>
<link rel="stylesheet" href="css/highslide-ie6.css" />
<![endif]-->
		<link rel="stylesheet" href="css/bdwm.min.css">

		<!-- end _stylesheets_and_scripts.php-->

		<!-- start meta -->
		<title>${post.post_title }</title>

		<!-- end meta -->
		<script>
	var isShownWelcome = false;
</script>

	</head>
	<body>
		<div
			style="margin: 0 auto; width: 0px; height: 0px; overflow: hidden;">
			<img src="picture/logo.jpg">
		</div>
		<!-- for wechat thumb -->


		<div id="page-content">
			<div id="login-info" style="display: none">
				<div data-role="login-info-username" data-value="guest"></div>
				<div data-role="login-info-nickname" data-value="未名湖里的鱼儿"></div>
				<div data-role="login-info-rankname" data-value="高级站友"></div>
				<div data-role="login-info-numposts" data-value="1512"></div>
			</div>
			<!-- this is the real content, should be returned from server when PJAX working.-->
			<!-- start main -->
			<div id="bdwm-title">
				${post.post_title}
			</div>
			<script>
	$("#link-buttons > a").removeClass("cur");
</script>
			<div id="go-to-btn-container" style="left: 1350px;">
				<div class="go-to-btn-shadow"></div>
				<div class="go-to-btn-shadow"></div>
				<a data-action="go-to-top" class="go-to-btn go-to-top" title="返回顶部"></a>
				<a data-action="go-to-bottom" class="go-to-btn go-to-bottom"
					title="返回底部"></a>
			</div>
			<div id="page-post">
				<div class="breadcrumb-trail">
					<!--这里是面包屑导航，样式在global里面-->
					<a href="market.action?thispage=1">首页</a>


					<a href="post1.action?postid=${post.post_id}&thispage=1">${post.post_title}</a>
				</div>
				<div class="post-body" id="post-read">
					<div class="paging paging-top">
						<div class="paging-button n">
							<a class="link" href="Market1.action?thispage=1"></a>返回本版
						</div>
						<div class="paging-button n active">
							<a class="link" href="?bid=730&amp;threadid=16260860"></a>1
						</div>
						<div class="paging-input-wrapper">
							<input type="number" data-role="goto-input" max="1" min="1"
								value="1">
						</div>
						<div>
							/ 1
						</div>
						<div class="paging-button">
							<a data-action="goto-link" class="link"></a>跳转
						</div>
					</div>
					<header>
					<h3>
						${post.post_title }
					</h3>
					<span class="copy-link font-small">[复制链接]</span>
					<span class="right share"> <span>分享：</span> <a href="#"
						class="wechat"></a> <span class="wechat-qrcode"> <img
								src="#"> </span> </span>
					</header>

					<div class="card-list">
						<div class="post-card" >
							<div id="17122054"
								style="position: absolute; visibility: hidden; top: -170px;"></div>
							<div class="post-owner">
								<span class="lz-tag">楼主</span>
								<a class="portrait-container" href="user.php?uid=2043"> <img
										class="portrait" src="${post.post_student.student_head }">
								</a>

								<p class="nickname text-line-limit"
									title="${post.post_student.student_name }">
									${post.post_student.student_name }
								</p>
							</div>
							<div class="post-main">
								
								<span class="post-id">1楼</span>
								<div class="content">
									<div class="body file-read image-click-view">
										<p>
											${post.post_depict}
									    </p>
										<p>
											<img src="picture/${post.post_picture}" />
											<br />
										</p>
									</div>
								</div>
							</div>
						</div>
			     <c:forEach items="${list}" var="list" varStatus="i">
						<div class="post-card" >
							<div id="17122506"
								style="position: absolute; visibility: hidden; top: -54px;"></div>
							<div class="post-owner">
								<a class="portrait-container" href="user.php?uid=1983"> <img
										class="portrait" src="picture/chorious.jpg"> </a>
								<p class="username">
									<a href="user.php?uid=1983">${list.comment_student.student_name }</a>
								</p>
						
								<p class="level-bar">
						
								</p>
							</div>
							<div class="post-main">
								
								<span class="post-id">${i.index+2}楼</span>
								<div class="content">
									<div class="body file-read image-click-view">
										<p>
										${list.comment_content }
										</p>
									</div>
								</div>
							</div>
						</div>
                     </c:forEach>
					</div>
				</div>
				<div class="post-card">
					<div id="17122781"
						style="position: absolute; visibility: hidden; top: -54px;"></div>
					<div class="post-owner">
						
						
						
						<div class="detail">
							
						</div>
						<div class="functions">
				
							
						</div>
					</div>
					<div class="post-main">
						
						<div class="operations">
							<div class="toolbox">
								
							</div>
							<div class="right">

								<div class="sl-triangle-container">
								</div>

							</div>
						</div>
					</div>
					<div class="editor-inner-wrapper" style="display: black">
						<div class="bdwm-editor" data-bid="730" data-parentid="17122781"
							data-title="Re: 【20171103—20180307】古希腊科技与艺术展" data-inner="true">
							<div class="row">
								<span>快速回帖</span>
								<div class="r">
									
								</div>
							</div>
						<form action="postnum.action">
							<div class="input-wrapper content-input">
								<textarea name="content" placeholder=""></textarea>
							</div>
									<div class="input-wrapper">
										
									    <input type="hidden" name="postid" value="${post.post_id }" />
									    <input type="hidden" name="studentid" value="${sessionScope.student.student_id}"/>
									</div>
									<c:if test="${not empty sessionScope.student}">
									<input type="submit" class="publish-button extended" value="发表评论" />
									</c:if>
									<c:if test="${ empty sessionScope.student}">
									<input type="submit" class="publish-button extended" value="发表评论" disabled="disabled" />
									</c:if>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="paging">
				<div class="paging-button n">
					<a class="link" href="market.aciton?thispage=1"></a>返回本版
				</div>
				<c:forEach items="${list1}" var="list1">
					<div class="paging-button n active">
						<a class="link" href="post1.action?thispage=${list1}&postid=${post.post_id}">${list1}</a>
					</div>
				</c:forEach>
				<div class="paging-input-wrapper">
					<input type="number" data-role="goto-input" max="${postnum}"
						min="1" value="1">
				</div>
				<div>
					/ ${postnum}
				</div>
				<div class="paging-button">
					<a data-action="goto-link" class="link"></a>跳转
				</div>
			</div>


		</div>
		<!-- start _new-thread-simple.php-->
		<!-- start new-thread-simple -->
		<div class="editor-wrapper">
			<!-- 可以修改登录 -->
			
			
		</div>
		<!-- end new-thread-simple -->

		<!-- end _new-thread-simple.php-->
		</div>
		</div>

		<!-- end main -->
		<!-- content end-->
		</div>

		<div class="mask mask-without-header"></div>
		<div class="mask mask-full-screen" id="page-notice-container">
			<div class="page-notice box-shadow">
				<p>
					您输入的密码有误，请重新输入
				</p>
				<button>
					确认
				</button>
			</div>
		</div>
		<div class="mask mask-transparent"></div>
		<div class="mask mask-transparent top-nav"></div>


	</body>
</html>
