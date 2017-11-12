<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>管理员页面</title>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
    <link rel="shortcut icon" href="img/favicon_16.ico"/>
    <link rel="bookmark" href="img/favicon_16.ico"/>
    <!-- site css -->
    <link rel="stylesheet" href="dist/css/site.min.css">
     <script type="text/javascript" src="js/uppic/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="js/uppic/json2.min.js"></script>
    <script type="text/javascript" src="js/uppic/up2.app.js" charset="utf-8"></script>
    <script type="text/javascript" src="js/uppic/up2.edge.js" charset="utf-8"></script>
    <script type="text/javascript" src="js/uppic/up2.js" charset="utf-8"></script>

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript" src="dist/js/site.min.js"></script>
    
    <script type="text/javascript">
    var count=1;
    /*function addcomic(){
    var str=document.getElementById("adddiv").innerHTML;
    str=str+"<div class='mydiv' >"+
    "<ul style='width:219px;'><li style='width:219px; float:left;list-style:none;' ><img name='pic' src='img/hh.jpg' id='imgShow_WU_FILE_"+count+"' ></li>"+
    "<li style='width:73px; float:left;list-style:none;'><input type='file' id='up_img_WU_FILE_"+count+"' name='comiclink"+count+"'></li>"+
    " <li  style='width:48px; float:right;list-style:none;text-indent:2em;'><input type='button' value='移除文件' onclick='removeFile()'></li>"+   
    "</ul></div>"
    
   // "<input type='file' id='exampleInputFilecomic' name='comiclink"+count+"'>"+
    //"<input type='button' value='移除文件' onclick='removeFile()'></br></div>"
    document.getElementById("adddiv").innerHTML=str;
    count++;
    }
    function removeFile(btn){
       document.getElementById("adddiv").removeChild(btn.parentNode);
    }*/
    //添加漫画的函数
   /* function add1(){
     var str=document.getElementById("adddiv").innerHTML;
     str=str+"<div class='mydiv' >"+
			          "<ul id='warp"+count+"' style='width:219px;float:left;' >"+
			          "<li style='width:219px; float:left;list-style:none;' ><img name='pic' src='images/hh.jpg' id='imgShow_WU_FILE_"+count+"' ></li>"+
			          "<li  style='width:73px; float:left;list-style:none;'><input type='file' id='up_img_WU_FILE_"+count+"' name='comiclink"+count+"'></li>"+
			          " <li  style='width:48px; float:right;list-style:none;text-indent:2em;'><input type='button'  value='移除文件' onclick='removeFile1(this)'></li>"+
			          " </ul></div> "            
         document.getElementById("adddiv").innerHTML=str;
         document.getElementById("myvalue").value=""+count;
         count++;
    }
*/
     function removeFile1(btn){
    document.getElementsByClassName("img_list")[0].removeChild(btn.parentNode.parentNode);
    }
     
      
     //list.removeChild(list.childNodes[0]);
      // document.getElementById("mytable").removeChild(btn.parentNode);
    </script>
   
    <style>

.mydiv{width:219px;float:left;}
img{width:219px;height:200px;}
#warp{width:219px;}
.upload{position: relative;}  
.upload input{opacity: 0;position: absolute;top: 0;left: 10px;height: 20px;width: 100px;}  
.upload .upload_box{width: 100px;height: 20px;background-color: pink;color: white;}  
.img_list .img-div{width: 219px;height: 220px; float: left;  overflow: hidden;text-align: center;  }  
 .img-div p{color: #28a4b0;margin: 0;} 
    </style>
  </head>
  <body>
    <!--nav-->
     <input id="myvalue"  type="hidden"  />  
    <nav role="navigation" class="navbar navbar-custom">
        <div class="container-fluid">
          <!-- Brand and toggle get grouped for better mobile display -->
          <div class="navbar-header">
            <button data-target="#bs-content-row-navbar-collapse-5" data-toggle="collapse" class="navbar-toggle" type="button">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a href="admin.jsp" class="navbar-brand">${sessionScope.admin.admin_name}</a>
          </div>

          <!-- Collect the nav links, forms, and other content for toggling -->
          <div id="bs-content-row-navbar-collapse-5" class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
              <!-- <li class="disabled"><a href="#">Link</a></li> -->
              <li class="dropdown">
                <a data-toggle="dropdown" class="dropdown-toggle" href="#">选项 <b class="caret"></b></a>
                <ul role="menu" class="dropdown-menu">                  
                  <li class="disabled"><a href="adminlogin.jsp">退出</a></li>
                </ul>
              </li>
            </ul>

          </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
      </nav>
    <!--header-->
    <div class="container-fluid">
    <!--documents-->
        <div class="row row-offcanvas row-offcanvas-left">
         
          
           <div class="col-xs-6 col-sm-3 sidebar-offcanvas" role="navigation">
            <jsp:include page="admininfo.jsp"></jsp:include>
          </div>
          <div class="col-xs-12 col-sm-9 content">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title"><a href="javascript:void(0);" class="toggle-sidebar"><span class="fa fa-angle-double-left" data-toggle="offcanvas" title="Maximize Panel"></span></a>管理员上传</h3>
              </div>
              <div class="panel-body">
                  
            
                <!-- 漫画上传
                                ================================================== -->
                <div class="content-row">
                  <div class="content-row">
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <div class="panel-title"><b>上传漫画</b>
                      </div>
                      <div class="panel-options">
                        <a class="bg" data-target="#sample-modal-dialog-1" data-toggle="modal" href="#sample-modal"><i class="entypo-cog"></i></a>
                        <a data-rel="collapse" href="#"><i class="entypo-down-open"></i></a>
                        <a data-rel="close" href="#!/tasks" ui-sref="Tasks"><i class="entypo-cancel"></i></a>
                      </div>
                    </div>

                    <div class="panel-body">
        <form novalidate="" role="form" class="form-horizontal"  method = "post" action="ComicServlet?flag=insertcomic" enctype="multipart/form-data" >
                        <div class="upload">  
                        <input class="file_input" type="file" multiple id="avc"/>  
                        <div class="upload_box">  添加漫画  </div>  
                        </div> 
                         <div class="img_list">  
  
</div> 
  

                       <!-- <table>
                        <tr>
                        <td><label>标题：</label></td>
                        <td>${requestScope.mytitle}</td>
                        <td><input class="file_input" type = "file"  value="添加漫画" multiple id="avc"/></td>
                        </tr>
                        </table> 
                        <input type = "hidden" value = "${requestScope.mytitle}" name = "title"/>
                        
                        --> 
                                              
                       
		      </div>                
          </div>
		    
            <!--
             <div class="mydiv" >
			          <ul id="warp1" style="width:219px;float:left;">
			          <li id="tab1" style="width:219px; float:left;list-style:none;"><img name="pic" src="img/hh.jpg" id="imgShow_WU_FILE_0" ></li>
			          <li id="tab2" style="width:73px; float:left;list-style:none;"><input type="file" id="up_img_WU_FILE_0" ></li>
			          <li id="tab3" style="width:48px; float:right;list-style:none;text-indent:2em;"><input type="button"  value="移除文件" onclick="removeFile1(this)"></li>
		              </ul>	              
		           </div>   
               
            
             <div  id="warp">
                <table border="1" bordercolor="#99CC00">
                <tr>
                <td col="3"><img name="pic" src="images/hh.jpg" id="imgShow_WU_FILE_0" ></td>
                </tr>
             <tr>
             <td><input type="file" id="up_img_WU_FILE_0" ></td>    
             <td> <input type="text" id="te"/></td>
           </tr>
           <tr>
            <td><input type="button"  value="移除文件"></td>
           </tr>
                </table>
            <table  id="mytable"border="1" bordercolor="#99CC00" >
		 <tr>
		<td>
		<ul  id="warp" style="width:200px;">
		
		        <li style="width:200px; float:left"><img name="pic" src="images/hh.jpg" id="imgShow_WU_FILE_0" ></li>
				<li style="width:100px; float:left"><input type="text" id="te"/></li>
				<li style="width:100px; float:left"><input type="file" id="up_img_WU_FILE_0" ></li>
		 <table>
        <li class="tab" >
        <tr>
        <td><img name="pic" src="images/hh.jpg" id="imgShow_WU_FILE_0" ></td>
        <td> <input type="text" id="te"/></td>
         <td><input type="file" id="up_img_WU_FILE_0" ></td>
         </tr>
         </li>
        <li class="tab"><input  type="file" id="up_img_WU_FILE_0" ></li>
         </table> -->
        </ul>
		<ul class="hh">
       <!--  <li class="tab"><input  type="file" id="up_img_WU_FILE_0" ></li>
        <li class="tab"><input type="text" id="te"/></li>
        <li class="tab"><input type="button"  value="移除文件"></li>       
      </ul></td>
		</tr>		
	</table> -->
    
        
                        <div class="form-group">
                          <div class="col-md-offset-2 col-md-10">
                            <button class="btn btn-info" type="submit">提交</button>
                          </div>
                        </div>
                      </form>
                    </div>
                  </div>

                </div>
                 
                </div>
              </div><!-- panel body -->
            </div>
        </div><!-- content -->
      </div>
    </div>
    <!--footer-->
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
    </script>
  </body>
</html>

