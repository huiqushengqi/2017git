<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="UTF-8">
    <title>后台管理</title>
    <link rel="stylesheet" type="text/css" href="css/common.css"/>
    <link rel="stylesheet" type="text/css" href="css/main.css"/>
    <script type="text/javascript" src="js/libs/modernizr.min.js"></script>
    <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript">
    function mydelete(op){
    
    if(confirm("你确定要删除此项？")){
      location.href="deletebyid.action?id="+op+"&page1=${requestScope.page}";
      //location.href="处理页面传入要删除设计师的id";
    }
    }
    
    
    function deleteSelect() {   
        var select  = document.getElementsByName("selectFlag");  
        var flag = false;  
        for (var i=0; i<select.length; i++) {  
            if (select[i].checked) {  
                flag = true;  
                break;  
            }  
        }  
        if (!flag) { 
         	 alert("请选择需要删除的设计师！");  
            return;  
        }  
        if (window.confirm("确认要删除吗？")) {  
            with (document.getElementById("userform")) {  
                action="test.jsp";  
                method="post";  
                submit();  
            }  
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
            <div class="crumb-list"><i class="icon-font"></i><a href="Admin.jsp">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">设计师管理</span></div>
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
                        <a href="adddesigner.jsp"><i class="icon-font"></i>新增设计师</a>
                        <a id="batchDel" href="javascript:deleteSelect()"><i class="icon-font"></i>批量删除</a>
                        <a id="updateOrd" href="javascript:void(0)"><i class="icon-font"></i>更新排序</a>
                    </div>
                </div>
                <div class="result-content">
              
                    </table><table class="result-tab" width="100%">
                        <tr>
                            <th class="tc" width="5%"><input class="allChoose" name="" type="checkbox"></th>
                            <th>排序</th>
                            <th>ID</th>
                            <th>姓名</th>
                            <th>职称</th>                                                     
                            <th>更新时间</th>                          
                            <th>操作</th>
                        </tr>
                        <c:forEach var="designer" items="${requestScope.list}" varStatus="stus">
                         <tr>
                            <td class="tc"><input name="id[]" value="${designer.der_id }" type="checkbox"></td>
                            <td>
                                <input name="ids[]" value="59" type="hidden">
                                <input class="common-input sort-input" name="ord[]" value="${designer.der_id }" type="text">
                            </td>
                            <td>${designer.der_id }</td>
                            <td ><a target="_blank"  >${designer.der_name }</a>
                            </td>
                            <td>${designer.der_title }</td>                           
                            <td>${designer.der_date}</td>
                           
                            <td>
                                <a class="link-update" href="#">查看</a>
                                <a class="link-update" href="selectdesigner.action?id=${designer.der_id }">修改</a>
                                <a class="link-del" href="javascript:mydelete(${designer.der_id})">删除</a>
                            </td>
                        </tr>
                        </c:forEach>
                       
                    </table>
                   <!-- 分页假数据 --> 
        <table width="300" align="center" >
     	<tr>
     		<td align="center"><font size="2">共${requestSccope.num}页</font></td>
     		<td align="center"><font size="2">${requestScope.page}/${requestScope.num}页</font></td>
     		<td align="center"><a href="querydesigner.action?page=1"><font size="2">首页</font></a></td>
     		<td align="center"><a href="querydesigner.action?page=${requestScope.page-1}"><font size="2">上一页</font></a></td>
     		<td align="center"><a href="querydesigner.action?page=${requestScope.page+1}"><font size="2">下一页</font></a></td>
     		<td align="center"><a href="querydesigner.action?page=${requestScope.num}"><font size="2">尾页</font></a></td>
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