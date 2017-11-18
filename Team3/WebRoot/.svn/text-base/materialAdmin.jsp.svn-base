<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/WEB-INF/MyPage.tld" prefix="pt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
      location.href="deleteAll.action?myid="+op;
      //location.href="处理页面传入要删除饰材的id";
    }
    }
    
    
    function deleteSelect() {   
        var select  = document.getElementsByName("myids");  
        var flag=0; 
        var str="0";
        for (var i=0; i<select.length; i++) {  
            if (select[i].checked) {  
                flag=flag+1;
                str=str+","+select[i].value;
            }  
        }  
        if (flag==0) { 
         	 alert("请选择需要删除的材料！");  
             
        }else{
          
            location.href="mydelete.action?str1="+str;
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
            <div class="crumb-list"><i class="icon-font"></i><a href="Admin.jsp">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">饰材管理</span></div>
        </div>
        <div class="search-wrap">
            <div class="search-content">
                <form action="#" method="post" id="userform">
                    <table class="search-tab">
                        <tr>   
                        <th width="120">选择分类:</th>
                            <td>
                                <select name="search-sort" id="">
                                    <option selected="selected">全部</option>
                                    <option >墙砖</option>
                                    <option >地砖</option>
                                    <option >壁纸</option>
                                    <option >涂料</option>
                                    <option >窗帘</option>
                                    
                                </select>
                            </td>                       
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
                        <a href="addmat.jsp"><i class="icon-font"></i>新增饰材</a>
                        <a id="batchDel" href="javascript:deleteSelect()"><i class="icon-font"></i>批量删除</a>
                        <a id="updateOrd" href="javascript:void(0)"><i class="icon-font"></i>更新排序</a>
                    </div>
                </div>
                <div class="result-content">
              
                   <table class="result-tab" width="100%">
                        <tr>
                            <th class="tc" width="5%"><input class="allChoose" name="" type="checkbox"></th>
                            <th>排序</th>
                            
                            <th>材料名称</th>
                            <th>材料类型</th>  
                            <th>材料价格</th>                                                                         
                            <th>更新时间</th>                          
                            <th>操作</th>
                        </tr>
                       <c:forEach var="mylist" items="${requestScope.list}" begin="${(requestScope.page-1)*size }" end="${requestScope.page*size-1 }">
                        <tr>
                            <td class="tc"><input name="myids" value="${mylist.mat_id }" type="checkbox"></td>
                            <td>
                                <input name="" value="59" type="hidden">
                                <input class="common-input sort-input" name="ord[]" value="0" type="text">
                            </td>
                            
                            <td ><a target="_blank"  >${mylist.mat_name }</a></td>

                            <td>${mylist.mat_type.mtype_name }</td> 
                            
                            <td>${mylist.mat_price }/块</td>                           
                            <td><input name="date" style="border: none;" value="2017-11-06 21:11:01" readonly="readonly"></td>
                           
                            <td>
                                <a class="link-update" href="test.jsp">查看</a>
                                <a class="link-update" href="querybyId.action?sid=${mylist.mat_id }">修改</a>
                                <a class="link-del" onclick="mydelete(${mylist.mat_id })">删除</a>
                            </td>
                        </tr>
                        </c:forEach>
                        
                    </table>
                     
                </div>
            </form>
              <div class="page">
							<pt:page pageIndex="${requestScope.page}" url="querymat.action?&name=materialAdmin&" pageMax="${requestScope.countpage}"/>
						</div>
					
        </div>
   
    <!--/main-->
</div>
</body>
</html>