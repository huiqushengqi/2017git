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
.upload{position: relative;}  
.upload input{opacity: 0;position: absolute;top: 0;left: 10px;height: 29px;width: 136px;}  
.upload .upload_box{width: 100px;height: 29px;background-color: #0088cc;color: white;}  
.img_list .img-div{width: 219px;height: 220px; float: left;  overflow: hidden;text-align: center; border:solid #2f96b4; }  
 .img-div p{color: #28a4b0;margin: 0;} 
    </style>
</head>
 <script type="text/javascript">
 function cleanname(){
	 document.getElementById("myid").innerHTML="";
	 }
 function checkname(){
	 var name=document.getElementById("name").value;
	 if(name==null||name==""){
		 document.getElementById("myid").innerHTML="<font color='red'>姓名不能为空</font>"
		 return false;
		 }
	 else{
		 document.getElementById("myid").innerHTML="<font color='green'>正确</font>";
		 return true;
		 }
	 }
 function checktitle(){
	 var title=document.getElementById("title").value;
	 if(title==null||title==""){
		 document.getElementById("myid1").innerHTML="<font color='red'>职位不能为空</font>";
			 return false;
		 }else{
			 document.getElementById("myid1").innerHTML="<font color='green'>正确</font>";
			 return true; 
		 }
	 }
 function cleantitle(){
	 document.getElementById("myid1").innerHTML="";
	 }
 function checksubmit(){
	if(checkname()&&checktitle()){
		return true;
		} 
	return false;
	 
	 }
 </script>
<body>
<!-- 公共页面，左侧和上侧导航栏 -->
<jsp:include page="AdminCom.jsp"></jsp:include> 
    <!--/sidebar-->
    <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="Admin.jsp">首页</a><span class="crumb-step">&gt;</span><a class="crumb-name" href="designer.jsp">设计师管理</a><span class="crumb-step">&gt;</span><span>新增设计师</span></div>
        </div>
        <div class="result-wrap">
            <div class="result-content">
                <form action="adddesigner.action" method="post" id="myform" name="myform" enctype="multipart/form-data">
                    <table class="insert-tab" width="100%">
                        <tbody><tr>
                            <th width="120"><i class="require-red">*</i>姓名：</th>
                            <td>
                             <input class="common-text required" id="name" name="der_name" size="10" onblur="checkname()" onclick="cleanname()">
                             <lable id="myid"></lable>
                            </td>
                            
                        </tr>
                            <tr>
                                <th><i class="require-red">*</i>职称：</th>
                                <td>
                                    <input class="common-text required" id="title" name="der_title" size="20" value="" type="text" onblur="checktitle()" onclick="cleantitle()">
                                    <lable id="myid1"></lable>
                                </td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>电话：</th>
                                <td>
                                    <input class="common-text required" id="title" name="der_phone" size="20" value="" type="text" onblur="checkphone()" onclick="cleanphone()">
                                    <lable id="myid2"></lable>
                                </td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>作品：</th>
                                <td>
                                    <input class="common-text required" id="title" name="der_work" size="60" value="" type="text" onblur="checkwork()" onclick="cleanwork()">
                                </td>
                            </tr> 
                           <tr>
                                <th>简介：</th>
                                <td><textarea name="der_about" class="common-textarea" id="content" cols="30" style="width: 98%;" rows="10" onblur="checkabout()" onclick="cleanabbout()"></textarea></td>
                            </tr>          
                        </tbody></table>  
                        </div>
                         <div class="upload">   
                           <input class="file_input" type="file" multiple id="avc" name="file" />  
                        <div class="upload_box">  添加图片  </div>  
                        </div>
                        <div style="width:100%;height:10px"></div>
                          <div class="img_list"> </div>    <br>
                          <div style="position:fixed; bottom:0px; width:100%; height:50px; ">
                          <input class="btn btn-primary btn6 mr10" value="提交" type="submit" onclick=" return checksubmit()">
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
//    触发事件用的是change，因为files是数组，需要添加下标  
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
                alert("读取异常")  
            }  
            reader.onload = function(e){  
//                div_html是包括图片和图片名称的容器  
                var img_html='<img src="'+e.target.result+'"/>';  
                var div_html=document.createElement("div");  
                var p_html=document.createElement("p"); 
                var str="<input type='button'  value='移除文件' onclick='removeFile1(this)'>";
                if(document.getElementsByClassName("img_list")[0].children.length<100)  
                {  
                    div_html.innerHTML=img_html;  
                    div_html.appendChild(p_html);  
                    p_html.innerHTML=obj_name+str;
                    div_html.className="img-div";  
                    document.getElementsByClassName("img_list")[0].appendChild(div_html);  
                }else{  
                    alert("最多上传5张图片")  
                }  
            };  
            reader.onloadstart=function(){  
                console.log("开始读取"+obj_name);  
            }  
            reader.onprogress=function(e){  
                if(e.lengthComputable){  
                    console.log("正在读取文件")  
                }  
            };  
            reader.readAsDataURL(obj.files[i]);  
        }  
  
    })  
    
     function removeFile1(btn){
    document.getElementsByClassName("img_list")[0].removeChild(btn.parentNode.parentNode);
    }
     
    </script>
</body>
</html>