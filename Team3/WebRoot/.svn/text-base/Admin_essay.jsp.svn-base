<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Admin_essay.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	 <link rel="stylesheet" type="text/css" href="css/common1.css"/>
    <link rel="stylesheet" type="text/css" href="css/main.css"/>
	<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>  
	<script type="text/javascript">
	
		function essayPass(op){
			if(confirm("是否通过审核")){
				alert("审核成功");
					location.href="lf_adminpass.action?essay_id="+op;
				}
			}
			
		function essayNoPass(op){
			if(confirm("是否不通过")){
				alert("审核成功");
				location.href="lf_adminnopass.action?essay_id="+op;
				}
			}
		
	</script>
	
  </head>
  
  <body>
    <!-- 公共页面，左侧和上侧导航栏 -->
	<jsp:include page="AdminCom.jsp"></jsp:include> 
	
 <!--/sidebar-->
    <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="Admin.jsp">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">帖子管理</span></div>
        </div>
        <div class="search-wrap">
            <div class="search-content">
                <form action="#" method="post" id="userform">
                    <table class="search-tab">
                        <tr>
                     
                            <th width="70">关键字:</th>
                            <td><input class="common-text" placeholder="关键字" name="keywords" value="" id="" type="text"></td>
                            <td><input class="btn btn-primary btn2" name="sub" value="查询" type="submit"></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
        <div class="result-wrap">
            <form name="myform" id="myform" method="post">
                <div class="result-title">
                    <div class="result-list">
                        <a href="addmanager.jsp"><i class="icon-font"></i></a>
                        <a id="batchDel" href="javascript:deleteSelect()"><i class="icon-font"></i></a>
                        <a id="updateOrd" href="javascript:void(0)"><i class="icon-font"></i></a>
                    </div>
                </div>
                <div class="result-content">
                   <table class="result-tab" width="100%">
                        <tr>
                                              
                            <th>ID</th>
                            <th>标题</th>
                            <th>上传作者</th>                           
                            <th>内容</th>                          
                            <th>上传时间</th>
                            <th>审核是否通过</th>
                        </tr>
   		
   						<c:forEach items="${sessionScope.list}" var="essay">
                        <tr>
                            
                            <td>
                                ${essay.essay_id}
                            </td>
                            <td>${essay.essay_title}</td>
                            <td ><a target="_blank" href="#" >${essay.essay_user.user_name}</a> 
                            </td>                     
                            
                            <td  style="width:600px;height:100">${essay.essay_content}</td>
                            <td>${essay.essay_time}</td>
                            <td>
                                <a class="link-update" onclick="essayPass(${essay.essay_id})">通过</a>
                                <a class="link-del" onclick="essayNoPass(${essay.essay_id})">不通过</a>
                            </td>
                        </tr>
                        </c:forEach>
                        
                   <!--  分页演示
                   <table width="300" align="center" >
     	<tr>
     		<td align="center"><font size="2">共${countpage}页</font></td>
     		<td align="center"><font size="2">${currentpage}/${countpage}页</font></td>
     		<td align="center"><a href="OutDateQiuzuServlet?nowpage=${1}"><font size="2">首页</font></a></td>
     		<td align="center"><a href="OutDateQiuzuServlet?nowpage=${currentpage-1}"><font size="2">上一页</font></a></td>
     		<td align="center"><a href="OutDateQiuzuServlet?nowpage=${currentpage+1}"><font size="2">下一页</font></a></td>
     		<td align="center"><a href="OutDateQiuzuServlet?nowpage=${countpage}"><font size="2">尾页</font></a></td>
     	</tr>
     </table>
                  <div class="list-page"> 2 条 1/1 页</div>  
                   -->
                   <!-- 分页假数据 --> 
        <table width="300" align="center" >
     	<tr>
     		<td align="center"><font size="2">共5页</font></td>
     		<td align="center"><font size="2">1/5页</font></td>
     		<td align="center"><a ><font size="2">首页</font></a></td>
     		<td align="center"><a ><font size="2">上一页</font></a></td>
     		<td align="center"><a ><font size="2">下一页</font></a></td>
     		<td align="center"><a ><font size="2">尾页</font></a></td>
     	</tr>
     </table>
                   
                </div>
            </form>
        </div>
    </div>
    <!--/main-->
</div>
  </body>
</html>
