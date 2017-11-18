<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="UTF-8">
    <title>后台管理</title>
    <link rel="stylesheet" type="text/css" href="css/common.css"/>
    <link rel="stylesheet" type="text/css" href="css/main.css"/>
    <script type="text/javascript" src="js/libs/modernizr.min.js"></script>
    <script type="text/javascript">
    function mydelete(op){    
    if(confirm("你确定要删除此项？")){
      location.href="delete_exp.action?exp_id="+op;
      //location.href="处理页面传入要删除管理人员的id";
    }
    }
    
    
    function deleteSelect() {   
         var select = document.getElementsByName("checked");  
        var flag=0; 
        var str="0";
        for (var i=0; i<select.length; i++) {  
            if (select[i].checked) {  
                flag=flag+1;
                str=str+","+select[i].value;
            }  
        }  
        if (flag==0) { 
         	 alert("请选择需要删除的案例！");  
             
        }else{
             
            location.href="delete1.action?str1="+str;
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
            <div class="crumb-list"><i class="icon-font"></i><a href="Admin.jsp">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">案例管理</span></div>
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
                        <a href="addmanager.jsp"><i class="icon-font"></i>新增案例</a>
                        <a id="batchDel" href="javascript:deleteSelect()"><i class="icon-font"></i>批量删除</a>
                        
                    </div>
                </div>
                <div class="result-content">
                   <table class="result-tab" width="100%">
                        <tr>
                            <th class="tc" width="5%"><input class="allChoose" name="" type="checkbox"></th>
                            <th>主题</th>
                                                     
                                                     
                            <th>操作</th>
                        </tr>
                        <c:forEach items="${requestScope.list}" var="mytob">
                        <tr>
                            <td class="tc">
                            <input name="checked" value="${mytob.exp_id}" type="checkbox">
                            </td>
                            <td ><a target="_blank" href="#" >${mytob.exp_name}</a> 
                            </td>                     
                            
                            
                           
                            <td>
                                <a class="link-update" href="overexp.action?exp_id=${mytob.exp_id}">查看</a>
                                <a class="link-update" href="editexp.action?exp_id=${mytob.exp_id}">修改</a>
                                <a class="link-del" onclick="mydelete(${mytob.exp_id})">删除</a>
                            </td>
                        </tr>
                        </c:forEach>
                         </table>
                         
                   <!-- 分页假数据 --> 
        <table width="300" align="center" >
     	<tr>
     		<td align="center"><font size="2">共${requestSccope.num}页</font></td>
     		<td align="center"><font size="2">${requestScope.page}/${requestScope.num}页</font></td>
     		<td align="center"><a href="manager1.action?page=1"><font size="2">首页</font></a></td>
     		<td align="center"><a href="manager1.action?page=${requestScope.page-1}"><font size="2">上一页</font></a></td>
     		<td align="center"><a href="manager1.action?page=${requestScope.page+1}"><font size="2">下一页</font></a></td>
     		<td align="center"><a href="manager1.action?page=${requestScope.num}"><font size="2">尾页</font></a></td>
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