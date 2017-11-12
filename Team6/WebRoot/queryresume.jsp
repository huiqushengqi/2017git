<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" async="" src="style/js/conversion.js"></script><script src="style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script><style type="text/css"></style><style type="text/css"></style>
<meta content="no-siteapp" http-equiv="Cache-Control">
<link media="handheld" rel="alternate">
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>我的简历-拉勾网-最专业的互联网招聘平台</title>
<meta content="23635710066417756375" property="qc:admins">
<meta name="description" content="拉勾网是3W旗下的互联网领域垂直招聘网站,互联网职业机会尽在拉勾网">
<meta name="keywords" content="拉勾,拉勾网,拉勾招聘,拉钩, 拉钩网 ,互联网招聘,拉勾互联网招聘, 移动互联网招聘, 垂直互联网招聘, 微信招聘, 微博招聘, 拉勾官网, 拉勾百科,跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘,O2O招聘, LBS招聘, 社交招聘, 校园招聘, 校招,社会招聘,社招">
<meta content="QIQ6KC1oZ6" name="baidu-site-verification">

<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
var ctx = "h";
console.log(1);
</script>
<link href="h/images/favicon.ico" rel="Shortcut Icon">
<link href="style/css/style.css" type="text/css" rel="stylesheet">
<link href="style/css/external.min.css" type="text/css" rel="stylesheet">
<link href="style/css/popup.css" type="text/css" rel="stylesheet">
 
<script type="text/javascript" src="style/js/jquery.1.10.1.min.js"></script>
<script src="style/js/jquery.lib.min.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/ajaxfileupload.js"></script>
<script src="style/js/additional-methods.js" type="text/javascript"></script>
<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->
<script type="text/javascript">
function submit(){
	
}
</script>
<script type="text/javascript">
var youdao_conv_id = 271546; 
</script> 
<!-- 
<script src="style/js/conv.js" type="text/javascript"></script>
<script src="style/js/ajaxCross.json" charset="UTF-8"></script>
 -->
<script>
function zyytest(){
}

</script>
<script type="text/javascript">  

function viewImage(file){
    var preview = document.getElementById('preview');
    if(file.files && file.files[0]){
        //火狐下
        preview.style.display = "block";
        preview.style.width = "120px";
        preview.style.height = "120px";
        preview.src = window.URL.createObjectURL(file.files[0]);
    }else{
        //ie下，使用滤镜
        file.select();
        var imgSrc = document.selection.createRange().text;
        var localImagId = document.getElementById("localImag"); 
        //必须设置初始大小 
        localImagId.style.width = "120px"; 
        localImagId.style.height = "120px"; 
        try{ 
        localImagId.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
        locem("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc; 
        }catch(e){ 
        alert("您上传的图片格式不正确，请重新选择!"); 
        return false; 
        } 
        preview.style.display = 'none'; 
        document.selection.empty(); 
        } 
        return true; 
} 
</script></head>
<body style="">
<div id="body">
	<div id="header">
<jsp:include page="top.jsp"></jsp:include>
    </div><!-- end #header -->
    <div id="container">
        
  		<div class="clearfix">
            <div class="content_l">
            	<div class="fl" id="resume_name">
	            	<div class="nameShow fl">
	            		<h1 title="jason的简历">${requestScope.bs0.basic_name }的简历</h1>
	            		
            		</div>
            		<form class="fl dn" id="resumeNameForm" action="#" method="post">
            			<input type="text" value="jason的简历" name="resumeName" class="nameEdit c9">	
            			<input type="submit" value="保存" onclick="this.form.submit()"> | <a target="_blank" href="#">预览</a>
            		</form>
            	</div><!--end #resume_name-->
            	

            	<div class="profile_box" id="basicInfo">
            		<h2>基本信息</h2>
            		<span class="c_edit dn"></span>
            		<div class="basicShow dn">
            			            			<span> &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;     <br>
            			            			 &nbsp;&nbsp;&nbsp;&nbsp; <br>
            			</span>
            			<div class="m_portrait">
	                    	<div></div>
	                    	<img width="120" height="120" alt="jason" src="style/images/default_headpic.png">
	                    </div>
            		</div><!--end .basicShow-->

            		<div class="basicEdit">
            			<form id="profileForm" action="#" method="post" enctype="multipart/form-data">
						  <table width="630px">
						    <tbody><tr>
						      <td valign="top">
					
						      </td> 
						      <td>
						        姓名<input type="text" placeholder="姓名" readonly="readonly" value=" ${requestScope.bs0.basic_name }">
						      </td>
						      <td valign="top"></td> 
						      <td>
						          <ul class="profile_radio clearfix reset">
						          <font size="2">性别</font><input type="text" placeholder="性别" readonly="readonly" name="name" id="name" value=" ${requestScope.bs0.basic_gender }">
						            
						            </li>
						          </ul>  
						      </td>
						      <td rowspan="4" align="center">
						      
						    <div class="form-group" id="caseIma">
  							<div id="localImag"><img id="preview" width="120px" height="120px" style="diplay:none">
							<label class="btn btn-primary"><strong>选择图片</strong>
							<input type="file" style="display: none" class="form-control" id="caseImage" name="caseImage" onchange="viewImage(this)">
							</label><br>
							<p class="help-block">建议尺寸120*120</p>
							</div>
							</div>					 
						      </td>
						    </tr>
						    <tr><td valign="top">
						        <span class="redstar">出生日期</span>
						      </td>
						      <td><input name="birth" placeholder="出生日期" readonly="readonly" value=" ${requestScope.bs0.basic_birthday }"></td>						      
						      <td valign="top">
						        <span class="redstar">证件</span>
						      </td>
						      <td><input type="text" name="idnub" placeholder="身份证号" readonly="readonly" value=" ${requestScope.bs0.basic_idNumber}"></td>
						      </tr>	
						      <tr>
						      <td valign="top">
						        <span class="redstar">住址</span>
						      </td>
						      <td colspan="3"><input name="addr" placeholder="家庭住址" readonly="readonly" size="50" value=" ${requestScope.bs0.basic_home}"></td>
						      </tr>					     
						    
						    <tr>
						      <td valign="top">
						        <span class="redstar">手机</span>
						      </td> 
						      <td colspan="3">
						          <input type="text" placeholder="手机号码" name="tel" readonly="readonly" id="tel" value=" ${requestScope.bs0.basic_mobilePhone}">
						      </td>
						   	</tr>
						   	<tr>
						      <td valign="top">
						        <span class="redstar">邮箱</span>
						      </td> 
						      <td colspan="4">
						          <input type="text" placeholder="接收面试通知的邮箱" name="email" readonly="readonly" id="email" value=" ${requestScope.bs0.basic_email}">
						      </td>
						    </tr>
						    <tr>
						      <td valign="top"> </td> 
						      <td colspan="4">
						      <input type="text" placeholder="状态" readonly="readonly" value=" ${requestScope.bs0.basic_state}">
						          </div>  
						      </td>
						    </tr>
						    <tr>
						      <td></td> 
						      <td colspan="3">
						      </td>
						    				          
						    </tr>
						  </tbody></table>
						  
						</form><!--end #profileForm-->
						
            		</div><!--end .basicEdit-->
            		
            	</div><!--end #basicInfo-->

            	<div class="profile_box" id="expectJob">
            		<h2>期望工作</h2>
            		            		<span class="c_edit dn"></span>
            		<div class="expectShow dn">
            		            			<span></span>
            		</div><!--end .expectShow-->
            		<div class="expectEdit">
            		
            			<form id="expectForm" action="#" method="get">
	            			<table>
	            				<tbody><tr>
	            					<td>
	            					  地址<input type="text" placeholder="" readonly="readonly" value=" ${requestScope.je0.expect_address }">
	            					
							
								        <div class="boxUpDown boxUpDown_596 dn" id="box_expectCity" style="display: none;">
								      
								         
								         <dl>
								        </div>  
	            					</td>
	            					<td>
	            						<ul class="profile_radio clearfix reset">
	            								  类型 <li>         									            							
									             	  ${requestScope.je0.expect_type}<em></em>
									              	<input type="radio" checked="" name="type" value="全职"> 
									            </li>
								            								        </ul> 
	            					</td>
	            				</tr>
	            				<tr>
	            					<td>
							        	职位<input type="text" placeholder="期望职位，如：产品经理" readonly="readonly" value=" ${requestScope.je0.expect_job }" name="expectPosition" id="expectPosition">
									</td>
	            					<td>
	            					薪资<input type="text" placeholder="期望" readonly="readonly" value=" ${requestScope.je0.expect_salary }" name="expectPosition" id="expectPosition">
	            				
								         </div>  
	            					</td>
	            				</tr>
	            				<tr>
	            					<td colspan="2">
	            					
	            					</td>
	            				</tr>
	            			</tbody></table>
            			</form><!--end #expectForm-->
            		</div><!--end .expectEdit-->
            		            		<div class="expectAdd pAdd dn">
            		            			填写准确的期望工作能大大提高求职成功率哦…<br>
						快来添加期望工作吧！
						<span>添加期望工作</span>
            		</div><!--end .expectAdd-->
            		
            		<input type="hidden" id="expectJobVal" value="">
            		<input type="hidden" id="expectCityVal" value="">
            		<input type="hidden" id="typeVal" value="">
            		<input type="hidden" id="expectPositionVal" value="">
            		<input type="hidden" id="expectSalaryVal" value="">
            	</div><!--end #expectJob-->
            		
           	<div class="profile_box" id="workExperience">
            		<h2>工作经历  <span> （投递简历时必填）</span></h2>
            		            	  	<span class="c_add dn"></span>
            		<div class="experienceShow dn">
								        <div class="clear"></div>
	            					</td>
	            				</tr>
	            				<tr>
	            					<td></td>
	            					<td colspan="3">
	            						
	            					</td>
	            				</tr>
	            			</tbody></table>
	            			<input type="hidden" class="expId" value="">
            			</form><!--end .experienceForm-->
            			
            			<ul class="wlist clearfix">
            				            				            			</ul>
            		</div><!--end .experienceShow-->
            		<div class="experienceEdit">
            			<form class="experienceForm" action="ResumeServlet" method="get">
	            			<table>
	            				<tbody><tr>
							      	<td valign="top">
							        	<span class="redstar">名称</span>
							        	<input type="hidden" name="flag" value="addworkexp">
							      	</td> 
							      	<td>
							        	<input type="text" placeholder="公司名称" readonly="readonly" value="${requestScope.wk0.work_company }" name="companyName" class="companyName">
							      	</td>
							      	<td valign="top">
							        	<span class="redstar">职位</span>
							      	</td> 
							      	<td>
							          	<input type="text" placeholder="职位名称，如：产品经理" readonly="readonly" value="${requestScope.wk0.work_resp }" name="positionName" class="positionName">
							      	</td>
							    </tr>
	            				<tr>
	            					<td valign="top">
							        	<span class="redstar">时间</span>
							      	</td> 
	            					<td>
	            					<input type="text" placeholder="" readonly="readonly" value="${requestScope.wk0.work_starttime }" name="positionName" class="positionName">
		            					
	            					</td>
	            					<td valign="top">
							        	<span class="redstar"></span>
							      	</td> 
	            					<td>
		            					<input type="text" placeholder="" readonly="readonly" value="${requestScope.wk0.work_endtime }" name="positionName" class="positionName">
		            					
	            					</td>
	            				</tr>
	            				<tr>
	            					<td></td>
	            					<td colspan="3">
	            					</td>
	            				</tr>
	            			</tbody></table>
	            			<input type="hidden" class="expId" value="">
            			</form><!--end .experienceForm-->
            		</div><!--end .experienceEdit-->
            		
            		            		<div class="experienceAdd pAdd dn">
            		            			工作经历最能体现自己的工作能力，<br>
						且完善后才可投递简历哦！
						<span>添加工作经历</span>
            		</div><!--end .experienceAdd-->
            	</div><!--end #workExperience-->

            	<div class="profile_box" id="projectExperience">
            		<h2>项目经验</h2>
            		            		<span class="c_add dn"></span>
            		<div class="projectShow dn">
            		            			<ul class="plist clearfix">
	            			            			</ul>
            		</div><!--end .projectShow-->
            		<div class="projectEdit">
            			<form class="projectForm" action="ResumeServlet?" method="get">
	            			<table>
	            				<tbody><tr>
	            					<td valign="top">
	            					<input type="hidden" name="flag" value="addprojectexp">
							        	<span class="redstar">名称</span>
							      	</td> 
							      	<td>
							        	<input type="text" placeholder="" readonly="readonly" value="${requestScope.pj0.project_name }"  name="projectName" class="projectName">
							      	</td>
	            					<td valign="top">
							        	<span class="redstar">角色</span>
							      	</td> 
							      	<td>
							          	<input type="text" placeholder="" readonly="readonly"  value="${requestScope.pj0.project_duty }" name="thePost" class="thePost">
							      	</td>
							    </tr>
	            				<tr>
	            					<td valign="top">
							        	<span class="redstar">时间</span>
							      	</td> 
	            					<td>
		            				<input type="text" placeholder="" readonly="readonly" value="${requestScope.pj0.project_stattime }" name="thePost" class="thePost">
		            				
	            					</td>
	            					<td valign="top">
							        	<span class="redstar"></span>
							      	</td> 
	            					<td>
	            						<input type="text" placeholder="" readonly="readonly"  value="${requestScope.pj0.project_endtime }" name="thePost" class="thePost">
	            						
	            					</td>
	            				</tr>
	            				<tr>
	            					<td valign="top"></td> 
									<td colspan="3">
										介绍<textarea class="projectDescription s_textarea" readonly="readonly" name="projectDescription" placeholder="项目描述">${requestScope.pj0.project_depict }</textarea>
										<div class="word_count">你还可以输入 <span>500</span> 字</div>
									</td>
	            				</tr>
	            				
	            				<tr>
	            					<td valign="top"></td> 
	            					<td colspan="3">
	            					</td>
	            				</tr>
	            			</tbody></table>
			            	<input type="hidden" value="" class="projectId">
            			</form><!--end .projectForm-->
            		</div><!--end .projectEdit-->
            		            		<div class="projectAdd pAdd dn">
            		            			项目经验是用人单位衡量人才能力的重要指标哦！<br>
						来说说让你难忘的项目吧！
						<span>添加项目经验</span>
            		</div><!--end .projectAdd-->
            	</div><!--end #projectExperience-->

            	<div class="profile_box" id="educationalBackground">
            		<h2>教育背景<span>（投递简历时必填）</span></h2>
            							<span class="c_add dn"></span>
            		<div class="educationalShow dn">
            		         

            			<ul class="elist clearfix">
            					            			            			</ul>
            		</div><!--end .educationalShow-->
            		<div class="educationalEdit">
            			<form class="educationalForm" action="ResumeServlet?" method="get">
	            			<table>
	            				<tbody><tr>
							      	<td valign="top">
							      	<input type="hidden" name="flag" value="addeducation">
							        	<span class="redstar">校名</span>
							      	</td> 
							      	<td>
							        	<input type="text" placeholder="学校名称" readonly="readonly" value="${requestScope.edu0.edu_School}" name="schoolName" class="schoolName">
							      	</td>
							      	<td valign="top">
							        	<span class="redstar">学历</span>
							      	</td> 
							      	<td>
							      	<input type="text" placeholder="专业名称" readonly="readonly" value="${requestScope.edu0.edu_cations}" name="professionalName" class="professionalName">
							      		
							        </td>
							    </tr>
	            				<tr>
	            					<td valign="top">
							        	<span class="redstar">专业</span>
							      	</td> 
	            					<td>
	            						<input type="text" placeholder="专业名称" readonly="readonly" value="${requestScope.edu0.edu_Major}" name="professionalName" class="professionalName">
	            					</td>
	            					<td valign="top">
							        	<span class="redstar">时间</span>
							      	</td> 
	            					<td>
		            					<input type="text" placeholder="开始时间" readonly="readonly" value="${requestScope.edu0.edu_StartDate}~~~~${requestScope.edu0.edu_EndDate}" name="professionalName" class="professionalName">
		            				</td>
		            
	            				</tr>
	            				<tr>
	            					<td></td>
	            					<td colspan="3">
	            					</td>
	            				</tr>
	            			</tbody></table>
	            			<input type="hidden" class="eduId" value="">
            			</form><!--end .educationalForm-->
            		</div><!--end .educationalEdit-->
            		            		<div class="educationalAdd pAdd dn">
            		            			教育背景可以充分体现你的学习和专业能力，<br>
						且完善后才可投递简历哦！
						<span>添加教育经历</span>
            		</div><!--end .educationalAdd-->
            	</div><!--end #educationalBackground-->

            	
				<input type="hidden" id="resumeId" value="268472">
            </div><!--end .content_l-->
            <div class="content_r">
            	<div class="mycenterR" id="myInfo">
            		<h2>本地简历</h2>
            		<c:forEach items="${requestScope.rlist }" var="a">
            		<a href="#"> ${a.resume_name }</a></br>
            		</c:forEach>
            
            	</div>
            	
            </div><!--end .content_r-->
        </div>
        
      <input type="hidden" id="userid" name="userid" value="314873">

<!-------------------------------------弹窗lightbox ----------------------------------------->
<div style="display:none;">
	<!-- 上传简历 -->
	<div class="popup" id="uploadFile">
	    <table width="100%">
	    	<tbody><tr>
	        	<td align="center">
	                <form>
	                    <a class="btn_addPic" href="javascript:void(0);">
	                    	<span>选择上传文件</span>
	                        <input type="file" onchange="file_check(this,'h/nearBy/updateMyResume.json','resumeUpload')" class="filePrew" id="resumeUpload" name="newResume" size="3" title="支持word、pdf、ppt、txt、wps格式文件，大小不超过10M" tabindex="3">
	                    </a>
	                </form>
	            </td>
	        </tr>
	    	<tr>
	        	<td align="left">支持word、pdf、ppt、txt、wps格式文件<br>文件大小需小于10M</td>
	        </tr>
	        <tr>
	        	<td align="left" style="color:#dd4a38; padding-top:10px;">注：若从其它网站下载的word简历，请将文件另存为.docx格式后上传</td>
	        </tr>
	    	<tr>
	        	<td align="center"><img width="55" height="16" alt="loading" style="visibility: hidden;" id="loadingImg" src="style/images/loading.gif"></td>
	        </tr>
	    </tbody></table>
	</div><!--/#uploadFile-->
	
	<!-- 简历上传成功 -->
	<div class="popup" id="uploadFileSuccess">
     	<h4>简历上传成功！</h4>
         <table width="100%">
             <tbody><tr>
                 <td align="center"><p>你可以将简历投给你中意的公司了。</p></td>
             </tr>
         	<tr>
             	<td align="center"><a class="btn_s" href="javascript:;">确&nbsp;定</a></td>
             </tr>
         </tbody></table>
     </div><!--/#uploadFileSuccess-->
     
	<!-- 没有简历请上传 -->
    <div class="popup" id="deliverResumesNo">
        <table width="100%">
            <tbody><tr>
                <td align="center"><p class="font_16">你在拉勾还没有简历，请先上传一份</p></td>
            </tr>
        	<tr>
            	<td align="center">
                    <form>
                        <a class="btn_addPic" href="javascript:void(0);">
                        	<span>选择上传文件</span>
                        	<input type="file" onchange="file_check(this,'h/nearBy/updateMyResume.json','resumeUpload1')" class="filePrew" id="resumeUpload1" name="newResume" size="3" title="支持word、pdf、ppt、txt、wps格式文件，大小不超过10M">
                        </a>
                    </form>
                </td>
            </tr>
        	<tr>
            	<td align="center">支持word、pdf、ppt、txt、wps格式文件，大小不超过10M</td>
            </tr>
        </tbody></table>
    </div><!--/#deliverResumesNo-->
    
    <!-- 上传附件简历操作说明-重新上传 -->
    <div class="popup" id="fileResumeUpload">
        <table width="100%">
            <tbody><tr>
                <td>
                	<div class="f18 mb10">请上传标准格式的word简历</div>
                </td>
            </tr>
            <tr>
                <td>
                	<div class="f16">
                		操作说明：<br>
                		打开需要上传的文件 - 点击文件另存为 - 选择.docx - 保存
                	</div>
                </td>
            </tr>
        	<tr>
            	<td align="center">
            		<a title="上传附件简历" href="#uploadFile" class="inline btn cboxElement">重新上传</a>
            	</td>
            </tr>
        </tbody></table>
    </div><!--/#fileResumeUpload-->
    
    <!-- 上传附件简历操作说明-重新上传 -->
    <div class="popup" id="fileResumeUploadSize">
        <table width="100%">
            <tbody><tr>
                <td>
                	<div class="f18 mb10">上传文件大小超出限制</div>
                </td>
            </tr>
            <tr>
                <td>
                	<div class="f16">
                		提示：<br>
                		单个附件不能超过10M，请重新选择附件简历！
                	</div>
                </td>
            </tr>
        	<tr>
            	<td align="center">
            		<a title="上传附件简历" href="#uploadFile" class="inline btn cboxElement">重新上传</a>
            	</td>
            </tr>
        </tbody></table>
    </div><!--/#deliverResumeConfirm-->
    
</div>
<!------------------------------------- end ----------------------------------------->  

<script src="style/js/Chart.min.js" type="text/javascript"></script>
<script src="style/js/profile.min.js" type="text/javascript"></script>
<!-- <div id="profileOverlay"></div> -->
<div class="" id="qr_cloud_resume" style="display: none;">
	<div class="cloud">
		<img width="134" height="134" src="">
		<a class="close" href="javascript:;"></a>
	</div>
</div>
<script>
$(function(){
	$.ajax({
        url:ctx+"/mycenter/showQRCode",
        type:"GET",
        async:false
   	}).done(function(data){
        if(data.success){
             $('#qr_cloud_resume img').attr("src",data.content);
        }
   	}); 
	var sessionId = "resumeQR"+314873;
	if(!$.cookie(sessionId)){
		$.cookie(sessionId, 0, {expires: 1});
	}
	
	$('#qr_cloud_resume .close').click(function(){
		$('#qr_cloud_resume').fadeOut(200);
		resumeQR = parseInt($.cookie(sessionId)) + 1;
		$.cookie(sessionId, resumeQR, {expires: 1});
	});
});
</script>
			<div class="clear"></div>
			<input type="hidden" value="97fd449bcb294153a671f8fe6f4ba655" id="resubmitToken">
	    	<a rel="nofollow" title="回到顶部" id="backtop" style="display: inline;"></a>
	    </div><!-- end #container -->
	</div><!-- end #body -->
	<div id="footer">
		<div class="wrapper">
			<a rel="nofollow" target="_blank" href="h/about.html">联系我们</a>
		    <a target="_blank" href="h/af/zhaopin.html">互联网公司导航</a>
		    <a rel="nofollow" target="_blank" href="http://e.weibo.com/lagou720">拉勾微博</a>
		    <a rel="nofollow" href="javascript:void(0)" class="footer_qr">拉勾微信<i></i></a>
			<div class="copyright">©2013-2014 Lagou <a href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action" target="_blank">京ICP备14023790号-2</a></div>
		</div>
	</div>

<script src="style/js/core.min.js" type="text/javascript"></script>
<script src="style/js/popup.min.js" type="text/javascript"></script>

<!--  -->

<script type="text/javascript">
$(function(){
	$('#noticeDot-1').hide();
	$('#noticeTip a.closeNT').click(function(){
		$(this).parent().hide();
	});
});
var index = Math.floor(Math.random() * 2);
var ipArray = new Array('42.62.79.226','42.62.79.227');
var url = "ws://" + ipArray[index] + ":18080/wsServlet?code=314873";
var CallCenter = {
		init:function(url){
			var _websocket = new WebSocket(url);
			_websocket.onopen = function(evt) {
				console.log("Connected to WebSocket server.");
			};
			_websocket.onclose = function(evt) {
				console.log("Disconnected");
			};
			_websocket.onmessage = function(evt) {
				//alert(evt.data);
				var notice = jQuery.parseJSON(evt.data);
				if(notice.status[0] == 0){
					$('#noticeDot-0').hide();
					$('#noticeTip').hide();
					$('#noticeNo').text('').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
					$('#noticeNoPage').text('').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
				}else{
					$('#noticeDot-0').show();
					$('#noticeTip strong').text(notice.status[0]);
					$('#noticeTip').show();
					$('#noticeNo').text('('+notice.status[0]+')').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
					$('#noticeNoPage').text(' ('+notice.status[0]+')').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
				}
				$('#noticeDot-1').hide();
			};
			_websocket.onerror = function(evt) {
				console.log('Error occured: ' + evt);
			};
		}
};
CallCenter.init(url);
</script>

<div id="cboxOverlay" style="display: none;"></div><div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div><div id="cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div><div id="cboxContent" style="float: left;"><div id="cboxTitle" style="float: left;"></div><div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button><div id="cboxLoadingOverlay" style="float: left;"></div><div id="cboxLoadingGraphic" style="float: left;"></div></div><div id="cboxMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div><div id="cboxOverlay" style="display: none;"></div><div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div><div id="cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div><div id="cboxContent" style="float: left;"><div id="cboxTitle" style="float: left;"></div><div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button><div id="cboxLoadingOverlay" style="float: left;"></div><div id="cboxLoadingGraphic" style="float: left;"></div></div><div id="cboxMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div></body>
</html>