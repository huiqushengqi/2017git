<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
    <script type="text/javascript" src="js/modernizr.min.js"></script>
    
<style>
img{width:219px;height:200px;}
#warp{width:219px;}
.upload{position: relative; margin-left:140px}  
.upload input{opacity: 0;position: absolute;top: 0;left: 10px;height: 20px;width: 100px;}  
.upload .upload_box{width: 100px;height: 20px;background-color: #0088cc;color: white;}  
.img_list .img-div{width: 219px;height: 220px; float: left;  overflow: hidden;text-align: center;  }  
 .img-div p{color: #28a4b0;margin: 0;} 
    </style>
</head>
 
<body>
<!-- 公共页面，左侧和上侧导航栏 -->
<jsp:include page="AdminCom.jsp"></jsp:include> 
    <!--/sidebar-->
    <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="Admin.jsp">首页</a><span class="crumb-step">&gt;</span><a class="crumb-name" href="manager.action">人事管理</a><span class="crumb-step">&gt;</span><span>修改人事资料</span></div>
        </div>
        <div class="result-wrap">
            <div class="result-content">
                <form action="updatemanager.action" method="post" id="myform" name="myform" enctype="multipart/form-data">
                <input type="hidden" name="mag_id" value="${requestScope.mag.mag_id}">
                <input type="hidden" name="mag_img1" value="${requestScope.mag.mag_img}">
                    <div class="img_list" style="margin-left:140px; border:solid #2f96b4;width: 219px;height: 200px;">
                    <img src="${requestScope.mag.mag_img}" />  
                    </div>
                    <div class="upload">   
                       <input class="file_input" type="file" name="mag_img" id="avc"  />  
                        <div class="upload_box"> 更换照片  </div> 
                        </div>
                    <table class="insert-tab" width="100%">
                        <tbody><tr>
                            <th width="120"><i class="require-red"></i>姓名：</th>
                            <td>
                             <input class="common-text required" id="name" name="mag_name" size="10" value="${requestScope.mag.mag_name}">
                            </td>
                        </tr>
                            <tr>
                                <th><i class="require-red"></i>职称:</th>
                                <td>
                                    <input class="common-text required" id="title" name="mag_job" size="20" value="${requestScope.mag.mag_job}" type="text">
                                </td>
                            </tr>  
                                                                    
                            <tr>
                                <th>简介：</th>
                                <td><textarea name="mag_about" class="common-textarea" id="content" cols="30" style="width: 98%;" rows="10">${requestScope.mag.mag_about}</textarea></td>
                            </tr>          
                        </tbody></table>  
                        </div>
                           <br>
                          <div style="position:fixed; bottom:0px; width:100%; height:50px; ">
                      
                       </div>                    
                </form>
               
            </div>
        </div>

    </div>
    <!--/main-->
</div>
</body>
</html>