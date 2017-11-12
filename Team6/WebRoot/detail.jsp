<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>

<head>
</script>
<script type="text/javascript" async="" src="style/js/conversion.js"></script>
<script src="style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script>
<style type="text/css"></style>
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>讨论区</title>
<script type="text/javascript">
	var ctx = "h";
	console.log(1);
</script>

<link href="h/images/favicon.ico" rel="Shortcut Icon">
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
<script src="style/js/ajaxCross.json" charset="UTF-8"></script>
<!-- 引用在线编辑器插件  -->
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/edit/xheditor-1.1.10-zh-cn.min.js"></script>
</head>

<body>
	<div id="body">
		<div id="header">
			<jsp:include page="top.jsp"></jsp:include>
		</div>
		<!-- end #header -->
		<div id="container">

			<div class="clearfix">
				<div class="content_l">
					<dl class="c_collections">
						<dt>
							<h1>
								<em></em>${requestScope.message.message_title }
							</h1>
						</dt>
						<dd>


							<div class="container">
								<div class="row">
									<!--下面是留言的正文-->
									<div class="col-lg-8 col-lg-offset-2">
										<p>
											<img src="Upload/${requestScope.message.message_user.user_img }" width="50px" height="50px" style="float:left">
											<ba><span style="float: left;">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="font-family: '微软雅黑'; font-size: medium; color:red;">${requestScope.message.message_user.user_name}</span></ba>
										</p>
										<br/>
										<div>${requestScope.message.message_text}</div>
										<hr>
										<p>
											<a href="#content">我要留言</a>
										</p>
									</div>

								</div>
								<!-- /row -->
							</div>
						</dd>
						<dd>
							<!-- 下面用来显示评论 -->
							<div>
								<c:forEach items="${requestScope.crilist}" var="cri">
								<div>
									<div id="jsCpn_18_component_0" class=" answer-list-item clearfix js-copy-mark" >
											<div class="answer-content clearfix">
												<div>
													<div style="width: 200px;height: 50px;">
														<a class="answer-head" data-card-uid="7368981" href="" data-card-index="3" style="float: left;"><img alt="头像" src="Upload/${cri.cri_user.user_img }" style="width: 50px; height: 50px;"></a>
														<span style="float: left;">&nbsp;&nbsp;&nbsp;&nbsp;</span>
														<p style="float: left;">
														<a href="" data-card-uid="" class="js-copy-tip answer-name level-color-2" data-card-index="4"><span style="font-family: '微软雅黑'; font-size: medium; color: #9e73ff;">${cri.cri_user.user_name }</span></a>
													</p>
													</div>
												<br/>													
												<div style="float: left;">
													<div class="answer-brief"><span style="font-family: '微软雅黑'; font-size: larger;">${cri.criticism_text }</span></div>
													<div class="answer-legend js-action">
														<span class="answer-time" style="color: gray; font-family: '微软雅黑'; font-size: small;">发表于 ${cri.criticism_date }</span>
													</div>

													<!--下面是对这个回帖的回复-->
													<div class="reply-box js-sub-cmt-list" style="display:none;"></div>
												</div>
											</div>
										</div>
								</div>
										<hr>
								</c:forEach>

								<!-- 用来显示在线编辑器插件 -->
								<a name="content"></a>
								<form action="/Team6/Controller?flag=postcriticism&messageid=${requestScope.message.message_id }" method="post">
								<textarea class="xheditor {width:'680px',height:'350'}" rows="20" cols="80" name="criticism"></textarea>
								<br/><br/>
								<input type="submit" id="search_button" value="提交">
								</form>
							</div>
						</dd>
					</dl>
				</div>
				
				<div class="content_r">

					<div class="mycenterR" id="">
						<a href="/Team6/Controller?flag=showdiscuss">
							<h2>返回讨论区首页</h2>
						</a>
					</div>
					<!--end #myInfo-->
					<div class="greybg qrcode mt20">
						<img width="242" height="242" alt="" src="style/images/qr_delivery.png"> <span class="c7">扫描拉勾二维码，微信轻松搜工作</span>
					</div>
				</div>
			</div>
			<script src="style/js/collections.min.js"></script>
			<script>
				$(function() {
					$('.Pagination').pager({
						currPage : 1,
						pageNOName : "pageNo",
						form : "collectionsForm",
						pageCount : 1,
						pageSize : 5
					});
				});
			</script>
			<div class="clear"></div>
			<input type="hidden" value="4c6ae41d8c254f91becdb5f9ef2d4394" id="resubmitToken"> <a rel="nofollow" title="回到顶部" id="backtop"></a>
		</div>
		<!-- end #container -->
	</div>
	<!-- end #body -->
		<jsp:include page="footer.jsp"></jsp:include>

	<script src="style/js/core.min.js" type="text/javascript"></script>
	<script src="style/js/popup.min.js" type="text/javascript"></script>

	<!--  -->

	<script type="text/javascript">
		$(function() {
			$('#noticeDot-1').hide();
			$('#noticeTip a.closeNT').click(function() {
				$(this).parent().hide();
			});
		});
		var index = Math.floor(Math.random() * 2);
		var ipArray = new Array('42.62.79.226', '42.62.79.227');
		var url = "ws://" + ipArray[index] + ":18080/wsServlet?code=314873";
		var CallCenter = {
			init : function(url) {
				var _websocket = new WebSocket(url);
				_websocket.onopen = function(evt) {
					console.log("Connected to WebSocket server.");
				};
				_websocket.onclose = function(evt) {
					console.log("Disconnected");
				};
				_websocket.onmessage = function(evt) {
					//alert(evt.data);
					var notice = jQuery.parseJSON(evt.data);
					if (notice.status[0] == 0) {
						$('#noticeDot-0').hide();
						$('#noticeTip').hide();
						$('#noticeNo').text('').show().parent('a').attr('href', ctx + '/mycenter/delivery.html');
						$('#noticeNoPage').text('').show().parent('a').attr('href', ctx + '/mycenter/delivery.html');
					} else {
						$('#noticeDot-0').show();
						$('#noticeTip strong').text(notice.status[0]);
						$('#noticeTip').show();
						$('#noticeNo').text('(' + notice.status[0] + ')').show().parent('a').attr('href', ctx + '/mycenter/delivery.html');
						$('#noticeNoPage').text(' (' + notice.status[0] + ')').show().parent('a').attr('href', ctx + '/mycenter/delivery.html');
					}
					$('#noticeDot-1').hide();
				};
				_websocket.onerror = function(evt) {
					console.log('Error occured: ' + evt);
				};
			}
		};
		CallCenter.init(url);
	</script>

	<div id="cboxOverlay" style="display: none;"></div>
	<div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;">
		<div id="cboxWrapper">
			<div>
				<div id="cboxTopLeft" style="float: left;"></div>
				<div id="cboxTopCenter" style="float: left;"></div>
				<div id="cboxTopRight" style="float: left;"></div>
			</div>
			<div style="clear: left;">
				<div id="cboxMiddleLeft" style="float: left;"></div>
				<div id="cboxContent" style="float: left;">
					<div id="cboxTitle" style="float: left;"></div>
					<div id="cboxCurrent" style="float: left;"></div>
					<button type="button" id="cboxPrevious"></button>
					<button type="button" id="cboxNext"></button>
					<button id="cboxSlideshow"></button>
					<div id="cboxLoadingOverlay" style="float: left;"></div>
					<div id="cboxLoadingGraphic" style="float: left;"></div>
				</div>
				<div id="cboxMiddleRight" style="float: left;"></div>
			</div>
			<div style="clear: left;">
				<div id="cboxBottomLeft" style="float: left;"></div>
				<div id="cboxBottomCenter" style="float: left;"></div>
				<div id="cboxBottomRight" style="float: left;"></div>
			</div>
		</div>
		<div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div>
	</div>
</body>

</html>
</html>
