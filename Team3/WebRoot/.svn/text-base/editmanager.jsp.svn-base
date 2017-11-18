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
                          <input class="btn btn-primary btn6 mr10" value="提交" type="submit">
                          <input class="btn btn6" onclick="history.go(-1)" value="返回" type="button">
                       </div>                    
                </form>
               
            </div>
        </div>

    </div>
    <!--/main-->
</div>

 <script>
    var file_input=document.getElementsByClassName("file_input")[0];  
//    触发事件用的是change  
    file_input.addEventListener("change",function(){  
        var obj=this;  
        var obj_name=this.files[0].name;
         var img_length=obj.files.length;  
          for(var i=0;i<img_length;i++)  
        {          
            if(!(/image\/\w+/).test(obj.files[i].type))  
            {  
                alert("上传的图片格式错误，请上传图片");  
                return false;  
            }  
            var reader = new FileReader();  
            reader.error=function(e){  
                alert("读取异常");  
            }; 
            reader.onload = function(e){  
             var img_html='<img src="'+e.target.result+'"/>';
//                div_html是包括图片和图片名称的容器                                       
                if(document.getElementsByClassName("img_list")[0].children.length<100)  
                {  
                 document.getElementsByClassName("img_list")[0].innerHTML=img_html;  
                }else{  
                    alert("最多上传5张图片")  
                }  
            };  
            reader.onloadstart=function(){  
                console.log("开始读取"+obj_name);  
            } ;
            reader.onprogress=function(e){  
                if(e.lengthComputable){  
                    console.log("正在读取文件")  
                }  
            };  
            reader.readAsDataURL(obj.files[i]);  
      }
    })     
    </script>
</body>
</html>