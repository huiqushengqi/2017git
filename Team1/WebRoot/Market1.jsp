<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>焦点学苑</title>
<link rel="stylesheet" href="<%=basePath%>/css/base.css"></link>
<link rel="stylesheet" href="<%=basePath%>/css/style.css"></link>
<link rel="stylesheet" href="<%=basePath%>/css/all.css"></link>
<link rel="stylesheet" href="<%=basePath%>/css/font-awesome.min.css"></link>
<link rel="stylesheet" href="<%=basePath%>/css/github.css"></link>
<link rel="stylesheet" href="<%=basePath%>/css/perfect-scrollbar.min.css"></link>
<link rel="stylesheet" href="<%=basePath%>/css/highslide.css"/></link>
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
									<a href="">表白墙</a> <a href="page.action">失物招领</a> <a href="twomarket.jsp">二手交易</a> 
								</div>

							</div></li>
						<li><a href="">表白墙</a></li>
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
           <div class="course-banner"><img src="upload/course-banner.jpg"></div>
           <div class="cou-a">
                <ul>
                      <li><div class="cou-a1"><img src="upload/course-a2.jpg">
                                              <div class="cou-inside"><div class="cou-href"><a href="">二手市场</a></div></div>
                           </div>                   
                          <div class="act-a2">活动主题</div>
                      </li>
                      
                      <li><div class="cou-a1"><img src="upload/course-a1.jpg">
                                              <div class="cou-inside"><div class="cou-href"><a href="">查看</a></div></div>
                           </div>                   
                          <div class="act-a2">活动主题</div>
                      </li>
                      
                      <li><div class="cou-a1"><img src="upload/course-a2.jpg">
                                              <div class="cou-inside"><div class="cou-href"><a href="">查看</a></div></div>
                           </div>                   
                          <div class="act-a2">活动主题</div>
                      </li>
                </ul>         
           </div>
           
           <div class="cou-b">
                <div class="cou-b-title">
                    
                     <div class="cou-b3">
                         
                     </div>
                </div>
           </div>
       </div> 
</div>

 <div id="page-thread" class="page-thread">

<!-- start _board-head.php-->
    <!-- start board-head -->
    <div class="breadcrumb-trail">
      
     </div>

    
    <!-- start board-body -->
    <script>
      $("#tab-button-thread").addClass("active");
    </script>
   <div id="board-head" >
      <div id="title-wrapper">
        <div id="title" class="gray limit">
          <span class="title-text eng">SecondMarket</span>
          <span class="title-text black">二手市场</span>
          
        </div>
        <div id="stat" class="gray l">
          在线：<span class="num">100</span>
          今日：<span class="num">3</span>
          帖数：<span class="num">${requestScope.postnum}</span>
        </div>
      </div>
      <div id="add-fav" class="gray">
      
        <a data-no-pjax target="_blank" class="rss" href="rss.php?bid=914"></a>
      </div>
      <div id="content" class="gray">
        <div id="intro" class="limit">二手,&nbsp;书,&nbsp;市场</div>
        <div id="admin" class="limit">版务:
        </div>
      </div>

      <div id="tab">
        
      </div>

      <div class="search-box">
      </div>


    </div>
    <!-- end board-head -->



<!-- end _board-head.php-->

    <!-- start board-body -->
    <script>
      $("#tab-button-thread").addClass("active");
    </script>
    <!-- 可以调整区域大小 -->
    <div id="board-body" style="margin-left:0px;">
      <div id="list-head" class="fw">
        <div id="list-filter" class="l" data-type="1">
        </div>
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
        
          <!-- list pin -->
         
          <!-- list pin -->
          
          <!-- list 1item -->
        <c:forEach var="list" items="${list}"> 
          <div class="list-item-topic list-item" ><a class="link" href="post1.action?thispage=1&postid=${list.post_id }"></a>
            <div class="id l">${list.post_id}</div>
            <div class="dot l" ></div>
            <div class="title-cont l">
              <div class="title l limit" style="max-width: 480px;">${list.post_title}</div>
              <img src="picture/attach.png">
            </div>
            <div class="avatar l"><a class="link" href="user.php?uid=3965"></a>
              <img src="picture/portrait-mas.png">
            </div>
            <div class="author l"><a class="link" href="user.php?uid=3965"></a>
              <div class="name limit">${list.post_student.student_name }</div>
              <div class="time">${list.post_date}</div>
            </div>
            <div class="reply-num l">${list.post_hot}</div>
            <div class="author l"><a class="link" href="post-read.php?bid=914&amp;threadid=16261163&amp;page=a&amp;postid=17122967#17122967"></a>
              <div class="name limit"></div>
              <div class="time">13:04</div>
            </div>
          </div>
          </c:forEach>
          <!-- list 2item -->
         
          
         
        
      </div>
     
      <div class="paging">
      <c:forEach items="${list1}" var="list1">
        <div class="paging-button n"><a class="link" href="market.action?thispage=${list1}"></a>${list1}</div>
       </c:forEach>
        <div class="paging-button n"><a class="link" href="market.action?thispage=${page2}"></a>下一页 &gt;</div>
        <div class="paging-input-wrapper"><input type="number" data-role="goto-input" max="${postnum}" min="1" value="1"></div>
        <div>/ ${postnum }</div>
        <div class="paging-button"><a data-action="goto-link" class="link" data-bid="914"></a>跳转</div>
      </div>
    </div>
    <!-- end board-body -->

<!-- start _new-thread-simple.php-->
    <!-- start new-thread-simple -->
    <div class="editor-wrapper">
  
    <div id="bdwm-editor" class="bdwm-editor" data-bid="914" data-parentid=""
         data-title="" data-redirect="">
      <div class="row">
        <span>快捷发帖</span>
      </div>
      <form action="marketpost.action" method="post"
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
					<input type="hidden" name="studentid" value="${sessionScope.student.student_id}"  />
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
							<c:if test="${not empty sessionScope.student}">
							<input type="submit" class="publish-button extended" value="发表帖子" />
							</c:if>
							<c:if test="${ empty sessionScope.student}">
							<input type="submit" class="publish-button extended" value="发表帖子" disabled="disabled" />
							</c:if>
							</div>
				</form>
        </div>
      </div>
    </div>
    </div>
    <!-- end new-thread-simple -->

<!-- end _new-thread-simple.php-->

  </div>

<!-- end main -->
    <!-- content end-->
</div>

<div class="mask mask-without-header"></div>
<div class="mask mask-full-screen" id="page-notice-container">
  
</div>
<div class="mask mask-transparent"></div>
<div class="mask mask-transparent top-nav"></div>












<!--登录注册弹窗-->



<script src="js/all.min.js"></script>
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/Action.js"></script>
<script>
$(".cou-a1").hover(function(){
		$(this).find(".cou-inside").stop(true,true).animate({top:0},500);
		},function(){
	        $(this).find(".cou-inside").stop(true,true).animate({top:201},500);
		});	
</script>
<script>
   $(".sort").click(function(){
	   $(this).toggleClass("sort-cut")  
	})
</script>
<script>
  $(".page a").click(function(){
	  $(this).addClass("page-cut").siblings().removeClass("page-cut")  
	  
	})
</script>

<script>
   $(".dropdown").bind({
	    click: function () {
	        $(this).find(".droplist").stop().slideDown();
	    },
	    mouseleave: function () {
	        $(this).find(".droplist").hide();
	    }
	});
	$(".dropdown .droplist li").click(function () {
	    $(this).parents(".dropdown").children("span").text($(this).text());
	    $(this).parents(".droplist").hide().attr("data-value", $(this).attr("data-id"));
	});
</script>
</body>
</html>
