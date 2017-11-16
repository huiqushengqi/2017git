<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Edmin</title>
<link type="text/css" href="bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet">
<link type="text/css" href="css/theme.css" rel="stylesheet">
<link type="text/css" href="images/icons/css/font-awesome.css"
	rel="stylesheet">
<link type="text/css"
	href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
	rel='stylesheet'>
<link rel="stylesheet" href="css/jquery.pagination.css" />
<link rel="stylesheet" href="css/b.dialog.bootstrap3.css" type="text/css">
<link rel="stylesheet" href="css/dialog.css" type="text/css">

<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="scripts/jquery-ui-1.10.1.custom.min.js"
	type="text/javascript"></script>
<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
<script src="scripts/flot/jquery.flot.resize.js" type="text/javascript"></script>
<script src="scripts/datatables/jquery.dataTables.js"
	type="text/javascript"></script>
<script src="scripts/common.js" type="text/javascript"></script>
<script src="scripts/jquery.pagination.min.js" type="text/javascript"></script>
<script type="text/javascript" src="scripts/jquery-ui.min.js"></script>
<script type="text/javascript" src="scripts/b.dialog.js"></script>

<script type="text/javascript">

function flush(current){

if(current==null){
current=1;
}

$.getJSON("getmypage.action",{student_id:${sessionScope.student.student_id},type_id:2,page:current},function(data){

	var str="";
		
	for(var i=0;i<data.length;i++){
		str=str+"<tr class='gradeA odd'>"
			+"<td class='  sorting_1'>"+(i+1)+"</td>"
			+"<td class=' '>"+data[i].post_title+"</td>"
			+"<td class=' '>"+data[i].post_date+"</td>"
			+"<td class='center '>"+data[i].post_hot+"</td>"
			+"<td class='center '><a href='delpost.action?post_id="+data[i].post_id+"&post_type="+data[i].post_type.type_id+"'>删除</a></br><a href='javascript:showcomment("+data[i].post_id+");'>查看评论</a></td>"
			+"</tr>";
	}
	$("#mydata").html(str);
	

});
}

</script>


</head>
<body onload="flush(1)">
	
	<script type="text/javascript">
	
	function showcomment(id){
	bDialog.open({
		title : '查看评论',
		width : 560,
		height : 800,
		url : 'getComment.action?post_id='+id
	});
	}

	</script>

	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".navbar-inverse-collapse"> <i
					class="icon-reorder shaded"></i></a><a class="brand" href="index.jsp">校园社区-StudentCenter
				</a>
				<div class="nav-collapse collapse navbar-inverse-collapse">
					<ul class="nav nav-icons">
						<li><a href="#">搜索人或者帖子……</a></li>
					</ul>
					<form class="navbar-search pull-left input-append" action="#">
						<input type="text" class="span3">
						<button class="btn" type="button">
							<i class="icon-search"></i>
						</button>
					</form>
					<ul class="nav pull-right">

						<li><a href="#">${sessionScope.student.student_name}</a></li>
						<li class="nav-user dropdown"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <img
								src="../${sessionScope.student.student_head}" class="nav-avatar" /> <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li class="divider"></li>
								<li><a href="#">退出登陆</a></li>
							</ul></li>
					</ul>
				</div>
				<!-- /.nav-collapse -->
			</div>
		</div>
		<!-- /navbar-inner -->
	</div>
	<!-- /navbar -->
	<div class="wrapper">
		<div class="container">
			<div class="row">
				<div class="span3">
					<div class="sidebar">
						<ul class="widget widget-menu unstyled">
							<li class="active"><a href="index.jsp"><i
									class="menu-icon icon-dashboard"></i>个人资料 </a></li>
							<li><a href="change.jsp"><i class="menu-icon icon-tasks"></i>修改资料
							</a></li>
						</ul>
						<!--/.widget-nav-->

						<ul class="widget widget-menu unstyled">
							<li><a class="collapsed" data-toggle="collapse"
								href="#togglePages"><i class="menu-icon icon-book"> </i><i
									class="icon-chevron-down pull-right"></i><i
									class="icon-chevron-up pull-right"> </i>发布的帖子</a>
								<ul id="togglePages" class="collapse unstyled">
									<li><a href="fresh.jsp"><i class="icon-inbox"></i>校园新鲜事</a></li>
									<li><a href="second-hand.jsp"><i class="icon-inbox"></i>二手交易</a></li>
									<li><a href="lost.jsp"><i class="icon-inbox"></i>失物招领</a></li>
									<li><a href="express.jsp"><i class="icon-inbox"></i>表白墙</a></li>
								</ul></li>
							<li><a href="message.jsp"><i
									class="menu-icon icon-bullhorn"></i>消息管理 </a></li>
							<li><a href="collection.jsp"><i
									class="menu-icon icon-paste"></i>收藏 </a></li>
						</ul>
						<!--/.widget-nav-->
						<ul class="widget widget-menu unstyled">
							<li><a href="#"><i class="menu-icon icon-signout"></i>退出
							</a></li>
						</ul>
					</div>
					<!--/.sidebar-->
				</div>
				<!--/.span3-->
				<div class="span9">
					<div class="content">
						<div class="module">
							<div class="module-head">
								<h3>校园新鲜事</h3>
							</div>
							<div class="module-body table">
								<div id="DataTables_Table_0_wrapper" class="dataTables_wrapper"
									role="grid">
									
									<table cellpadding="0" cellspacing="0" border="0"
										class="datatable-1 table table-bordered table-striped  display dataTable"
										width="100%" id="DataTables_Table_0"
										aria-describedby="DataTables_Table_0_info"
										style="width: 100%;">
										<thead>
											<tr role="row">
											
												<th class="sorting_asc" role="columnheader" tabindex="0"
													aria-controls="DataTables_Table_0" rowspan="1" colspan="1"
													aria-sort="ascending"
													aria-label="Rendering engine: activate to sort column descending"
													style="width: 136px;">序号</th>
												<th class="sorting" role="columnheader" tabindex="0"
													aria-controls="DataTables_Table_0" rowspan="1" colspan="1"
													aria-label="Browser: activate to sort column ascending"
													style="width: 202px;">标题</th>
												<th class="sorting" role="columnheader" tabindex="0"
													aria-controls="DataTables_Table_0" rowspan="1" colspan="1"
													aria-label="Platform(s): activate to sort column ascending"
													style="width: 183px;">发布时间</th>
												<th class="sorting" role="columnheader" tabindex="0"
													aria-controls="DataTables_Table_0" rowspan="1" colspan="1"
													aria-label="Engine version: activate to sort column ascending"
													style="width: 114px;">点击次数</th>
												<th class="sorting" role="columnheader" tabindex="0"
													aria-controls="DataTables_Table_0" rowspan="1" colspan="1"
													aria-label="CSS grade: activate to sort column ascending"
													style="width: 79px;">操作</th>
											</tr>
										</thead>

										<tbody id="mydata" role="alert" aria-live="polite" aria-relevant="all">
											<!-- 这里输出表格内容 -->
										</tbody>
									</table>
									<div id="mypage"></div>
									<script type="text/javascript">
									

									$.getJSON("sumpage.action",{student_id:${sessionScope.student.student_id},type_id:2},function(data){
									$("#mypage").pagination({
									   currentPage: 1,// 当前页数
									   totalPage: data,// 总页数
									   isShow: true,// 是否显示首尾页
									   count: 5,// 显示个数
									   homePageText: "首页",// 首页文本
									   endPageText: "尾页",// 尾页文本
									   prevPageText: "上一页",// 上一页文本
									   nextPageText: "下一页",// 下一页文本
									   callback: function(current) {
									       // 回调,current(当前页数)
									       flush(current);
									       }
									       
									});
									});
									</script>
								</div>
							</div>
							
						</div>
					</div>
					<!--/.content-->
				</div>
				<!--/.span9-->
			</div>
		</div>
		<!--/.container-->
		
	</div>
	<!--/.wrapper-->
	<div class="footer">
		<div class="container">
			<b class="copyright">&copy; 2014 Edmin - EGrappler </b>All rights
			reserved. - Collect from <a href="http://www.17sucai.com/"
				title="网页模板" target="_blank">网页模板</a>
		</div>
	</div>
	

</body>