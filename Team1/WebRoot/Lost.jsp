<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>OneMind</title>
<link rel="stylesheet" href="<%=basePath%>/css/base.css"></link>
<link rel="stylesheet" href="<%=basePath%>/css/style.css"></link>
<link rel="stylesheet" href="<%=basePath%>/css/all.css"></link>
<link rel="stylesheet" href="<%=basePath%>/css/font-awesome.min.css"></link>
<link rel="stylesheet" href="<%=basePath%>/css/github.css"></link>
<link rel="stylesheet"
	href="<%=basePath%>/css/perfect-scrollbar.min.css"></link>
<link rel="stylesheet" href="<%=basePath%>/css/highslide.css" /></link>
<link rel="stylesheet" href="<%=basePath%>/css/bdwm.min.css"></link>

</head>

<body>
	<div class="head-box">
		<div class="head wrap">
			<div class="logo fl">
				<a href=""><img src="images/logo.png"></a>
			</div>
			<div class="head-right fr">
				<div class="head-a fr">
					<div class="hgt fl">
						<img src="images/hgt.png">
						<div class="hgt-top">
							<input type="text" class="hgt-text">
						</div>
					</div>
					<div class="head-a1 fl">
						<a href=""><img src="images/tb-a.png"></a>
					</div>
					<div class="head-a1 fl">
						<a href=""><img src="images/tb-b.png"></a>
					</div>
					<div class="head-a3 login-click fl">登录</div>
					<div class="head-a4 reg-click fl">注册</div>

				</div>
				<div class="clearfix"></div>
				<div class="nav fr">
					<ul>
						<li><a href="index.jsp">首页</a></li>
						<li><a >文章</a>
							<div class="sub-nav">
								<div class="bich-top"></div>
								<div class="bich">
									<a href="Cpage.action">表白墙</a> <a href="page.action">失物招领</a> <a href="twomarket.jsp">二手交易</a> 
								</div>

							</div></li>
						<li><a href="Cpage.action">表白墙</a></li>
						<li class="nav-cut"><a href="page.action">失物招领</a></li>
						<li><a href="twomarket.jsp">二手交易</a></li>
						<li><a href="">联系我们</a></li>

					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>

	<div class="content">
		<div class="wrap">
			<div class="tsm-height"></div>
			

			<div class="cou-b">
				<div class="cou-b-title">

					<div class="cou-b3"></div>
				</div>
			</div>
		</div>
	</div>

	<div id="page-thread" class="page-thread">

		<!-- start _board-head.php-->
		<!-- start board-head -->
		<div class="breadcrumb-trail"></div>

		<div id="board-head" data-bid="165">
			<div id="title-wrapper">
				<div id="title" class="gray limit">
					<span class="title-text eng">LostFound</span> <span
						class="title-text black">失物招领</span>
				</div>
				<div id="stat" class="gray l">
					在线：<span class="num">6</span> 今日：<span class="num">5</span> 主题：<span
						class="num">${requestScope.pagecount}</span> 帖数：<span class="num">${requestScope.pagecount}</span>
				</div>
			</div>
			<div id="add-fav" class="gray">
				<a id="bid" class="star" data-action="make-favorite" data-bid="165"></a>
				<span id="fav-text" class="fav-text" data-action="make-favorite">收藏本版</span>
				(<span class="num">442</span>) <a data-no-pjax="" target="_blank"
					class="rss" href=""></a>
			</div>
			<div id="content" class="gray">
				<div id="intro" class="limit">失物招领,&nbsp;寻物,&nbsp;寻人</div>
				<div id="admin" class="limit">
					版务: <a href="">Homagod</a>
				</div>
			</div>


			<div class="search-box bdwm-search-box">
				<input class="search-ipt" type="text" placeholder="版面内搜索"
					autocomplete="off"> <img class="search-btn"
					src="img/iconfont-sousuo.png">
				<ul class="search-result box-shadow keywords-result">
				</ul>
				<ul class="search-result box-shadow history-result">
				</ul>
			</div>

			<div class="bdwm-dialog-wrapper bdwm-dialog-wrapper-background"
				style="display: none">
				<div id="favorite-modal" class="modal bdwm-dialog"
					style="display: none;">
					<div class="text">
						<span>您已成功将</span> <span class="board-name"><span
							id="board-name">失物招领</span>(<span board-name-en="">LostFound</span>)</span>
						<span><br>添加至版面收藏夹</span>
					</div>
					<a data-action="dialog-dismiss" class="button">确认</a>
				</div>
			</div>

		</div>
		<!-- end board-head -->



		<!-- end _board-head.php-->

		<!-- start board-body -->
		<script>
			$("#tab-button-thread").addClass("active");
		</script>
		<div id="board-body">
			<div id="list-head" class="fw">
				<div id="list-filter" class="l" data-type="1"></div>
				<div id="list-option" class="r"></div>
			</div>
			<div id="list-body" class="fw">
				<div id="list-title" class="fw list-title">
					<div class="l id">序号</div>
					<div class="l title">标题</div>
					<div class="l author">作者</div>
					<div class="l reply">回复</div>
					<div class="l time">最后发表</div>
				</div>
				<div id="list-content" class="fw">
					<!-- list pin -->
					<div class="list-item" data-itemid="3675921">
						<a class="link" href=""></a>
						<div class="id l">
							<div class="pin">置顶</div>
						</div>
						<div class="dot l" data-role="unread-dot"></div>
						<div class="title-cont l">
							<div class="title l limit" style="max-width: 456px;">捡到校园卡的同学请点这</div>
							<img src="img/bl.png">
						</div>
						<div class="avatar l">
							<a class="link" href=""></a> <img src="img/lyounger.jpg">
						</div>
						<div class="author l">
							<a class="link" href=""></a>
							<div class="name limit">版主</div>
							<div class="time">永远</div>
						</div>
					</div>

					<c:forEach items="${requestScope.list }" var="post">
						<!-- list item -->
						<div class="list-item-topic list-item" data-itemid="16261158">
							<a class="link"
								href="market1.action?id=${post.post_id}"></a>
							<div class="id l">${post.post_id}</div>
							<div class="dot l" data-role="unread-dot"></div>
							<div class="title-cont l">
								<div class="title l limit" style="max-width: 499px;">${post.post_title}</div>
							</div>
							<div class="avatar l">
								<a class="link" href=""></a> <img
									src="img/${post.post_student.student_head} ">
							</div>
							<div class="author l">
								<a class="link" href=""></a>
								<div class="name limit">${post.post_student.student_name}</div>
								<div class="time">${post.post_date}</div>
							</div>
							<div class="reply-num l">${post.post_hot}</div>
							<div class="author l">
								<a class="link" href=""></a>
								<div class="name limit">${post.post_student.student_name}</div>
								<div class="time">${post.post_date}</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			<div class="paging">
				<div class="paging-button n">
					<a class="link" href="page.action?page=1"></a>1
				</div>
				<div class="paging-button n">
					<a class="link" href="page.action?page=2"></a>2
				</div>
			</div>
		</div>
		<!-- end board-body -->

		<!-- start _new-thread-simple.php-->
		<!-- start new-thread-simple -->
		<div class="editor-wrapper">

			<div id="bdwm-editor" class="bdwm-editor" data-bid="165"
				data-parentid="" data-title="" data-redirect="">
				<div class="row">
					<span>快捷发帖</span>
				</div>
				'
				<form action="Lostpost.action" method="post"
					enctype="multipart/form-data">
					<div class="row">
						<span class="title">标题</span>
						<div class="input-wrapper title-input">
							<input type="text" name="post_title" data-role="post-title"
								maxlength="48" tabindex="-1" value="">
						</div>
						<span class="title-suggest">建议：≤ 24个字</span>
						<div class="r">

							<span style="overflow:hidden;position:relative;">插入图片<input
								type="file" name="post_file" multiple
								style="opacity:0;filter:alpha(opacity=0);font-size:100px;
        position:absolute;top:0;right:0;"></span>

						</div>
					</div>
					<div class="input-wrapper content-input">
						<textarea name="post_depict" data-role="new-post-textarea"
							tabindex="-1" placeholder="请输入内容"></textarea>
					</div>
					<div class="row">

						<div class="cs-select"></div>
						<div class="r">
							<div class="input-wrapper">

								<input id="input-noreply5172053" data-role="input-noreply"
									type="hidden" value="false">
							</div>
							<div>
								<input type="submit" class="publish-button extended">
							</div>
				</form>

			</div>
		</div>
	</div>
	</div>
	<!-- end new-thread-simple -->

	<!-- end _new-thread-simple.php-->

	</div>








	<div class="footer">
		<div class="wrap">
			<div class="foot">
				<div class="foot-left fl">
					<a href="">关于我们</a> <a href="">加入我们</a> <a href="contact.html">联系我们</a>
					<a href="">媒体采访</a>
				</div>
				<div class="foot-c fl">
					<a href=""><img src="images/foot-logo.jpg"></a>
				</div>
				<div class="foot-right fr">
					<a href="">同城活动</a> <a href="">课程资讯</a> <a href="">最新发布</a> <a
						href="">热门文章</a>
				</div>
			</div>
			<div class="foot-btm"></div>
		</div>
	</div>


	<!--登录注册弹窗-->
	<div class="mask"></div>
	<div class="login">
		<div class="login-title">
			<div class="login-a">登录</div>
			<div class="login-b"></div>
			<div class="login-c close">x</div>
		</div>
		<div class="login-btm">
			<div class="login-d">
				<input type="text" class="login-text" placeholder="注册时填写的邮箱">
			</div>
			<div class="login-d">
				<input type="password" class="login-pas" placeholder="密码">
			</div>
			<div class="login-d">
				<input type="button" class="login-btn" placeholder="登录">
			</div>
			<div class="login-f">
				<a href="">忘记密码</a> <span>还没有焦点账号?><a href="javascript:;"
					class="reg-href">点击注册</a></span>
			</div>
		</div>
	</div>

	<div class="reg">
		<div class="login-title">
			<div class="login-a">注册</div>
			<div class="login-b"></div>
			<div class="login-c close">x</div>
		</div>
		<div class="login-btm">
			<div class="login-d">
				<input type="text" class="login-text" placeholder="邮箱/手机号">
			</div>
			<div class="login-d">
				<input type="password" class="login-pas" placeholder="密码">
			</div>
			<div class="login-d">
				<input type="button" class="login-btn" placeholder="注册">
			</div>
			<div class="login-f">
				<a href="">忘记密码</a>
			</div>
		</div>
	</div>

	<script src="js/all.min.js"></script>
	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/Action.js"></script>
	<script>
		$(".cou-a1").hover(function() {
			$(this).find(".cou-inside").stop(true, true).animate({
				top : 0
			}, 500);
		}, function() {
			$(this).find(".cou-inside").stop(true, true).animate({
				top : 201
			}, 500);
		});
	</script>
	<script>
		$(".sort").click(function() {
			$(this).toggleClass("sort-cut")
		})
	</script>
	<script>
		$(".page a").click(function() {
			$(this).addClass("page-cut").siblings().removeClass("page-cut")

		})
	</script>

	<script>
		$(".dropdown").bind({
			click : function() {
				$(this).find(".droplist").stop().slideDown();
			},
			mouseleave : function() {
				$(this).find(".droplist").hide();
			}
		});
		$(".dropdown .droplist li").click(
				function() {
					$(this).parents(".dropdown").children("span").text(
							$(this).text());
					$(this).parents(".droplist").hide().attr("data-value",
							$(this).attr("data-id"));
				});
	</script>
</body>
</html>
