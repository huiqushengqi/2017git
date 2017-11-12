<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@taglib uri="/WEB-INF/MyPage.tld" prefix="pt"%>
<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb">
<head>
<script id="allmobilize" charset="utf-8" src="style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld"  />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>前端开发全国-职位搜索-拉勾网-最专业的互联网招聘平台</title>
<meta property="qc:admins" content="23635710066417756375" />
<meta content="前端开发招聘  全国地区招聘 紫色医疗招聘前端开发,月薪:10k-20k,要求:本科及以上学历,3-5年工作经验。职位诱惑：借移动医疗大势享受坐直升飞机的职场发展 公司规模:15-50人移动互联网 ,健康医疗类公司招聘信息汇总  最新最热门互联网行业招聘信息，尽在拉勾网" name="description">
<meta content="前端开发招聘,全国地区前端开发招聘,紫色医疗招聘前端开发,移动互联网 类公司招聘信息汇总,健康医疗类公司招聘信息汇总,拉勾招聘,拉勾网,互联网招聘" name="keywords">
<meta name="baidu-site-verification" content="QIQ6KC1oZ6" />

<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
var ctx = "h";
console.log(1);
</script>
<link rel="Shortcut Icon" href="http://www.lagou.com/h/images/favicon.ico">
<link rel="stylesheet" type="text/css" href="style/css/style.css"/>
<link rel="stylesheet" type="text/css" href="style/css/external.min.css"/>
<link rel="stylesheet" type="text/css" href="style/css/popup.css"/>
<script src="style/js/jquery.1.10.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/jquery.lib.min.js"></script>
<script src="style/js/ajaxfileupload.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/additional-methods.js"></script>
<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->
<script type="text/javascript">
var youdao_conv_id = 271546; 
</script> 
<script type="text/javascript" src="style/js/conv.js"></script>

<script type="text/javascript">
function myclick(){
	<%--
	 var str=$(".type_selected").html();
	 var str1=$("#search_input").val();
	 $.getJSON("TechServlet",{flag:"dosearch",sk:str,kd1:str1},function(data){
		   var str="";
           for(var i=0;i<data.length;i++){
              str=str+"data[i].comjob_job.jon_name";
              
               
           }
           $("#text").html(str);
		 });
		 --%>
	var str=$(".type_selected").html();	 
	$("#sk").val(str);
}

</script>

</head>
<body>
<div id="body">
	<div id="header">
	<jsp:include page="top.jsp"></jsp:include>
    </div><!-- end #header -->
    <div id="container">
        
       	<div class="sidebar">
       		            <div id="options" class="greybg">
                                <dl >
                   	<dt>月薪范围 <em ></em></dt>
	                <dd >
	                    	                    	<div>2k以下</div>
	                    	                    	<div>2k-5k</div>
	                    	                    	<div>5k-10k</div>
	                    	                    	<div>10k-15k</div>
	                    	                    	<div>15k-25k</div>
	                    	                    	<div>25k-50k</div>
	                    	                    	<div>50k以上</div>
	                    	                </dd> 
                </dl>
                                <dl >
                   	<dt>工作经验 <em ></em></dt>
	                <dd >
	                    	                    	<div>不限</div>
	                    	                    	<div>应届毕业生</div>
	                    	                    	<div>1年以下</div>
	                    	                    	<div>1-3年</div>
	                    	                    	<div>3-5年</div>
	                    	                    	<div>5-10年</div>
	                    	                    	<div>10年以上</div>
	                    	                </dd> 
                </dl>
                                <dl >
                   	<dt>最低学历 <em ></em></dt>
	                <dd >
	                    	                    	<div>不限</div>
	                    	                    	<div>大专</div>
	                    	                    	<div>本科</div>
	                    	                    	<div>硕士</div>
	                    	                    	<div>博士</div>
	                    	                </dd> 
                </dl>
                              
                            </div>
            
            <!-- QQ群 -->
            	            		            <div class="qq_group">
		            	加入<span>前端</span>QQ群
		            	<div class="f18">跟同行聊聊</div>
		            	<p>160541839</p>
		            </div>
		                                
            <!-- 对外合作广告位  -->
             	            		        	<a href="http://www.w3cplus.com/" target="_blank" class="partnersAd">
		            	<img src="style/images/w3cplus.png" width="230" height="80" alt="w3cplus" />
		            </a>
		            <a href="" target="_blank" class="partnersAd">
		            	<img src="style/images/jquery_school.jpg" width="230" height="80" alt="JQ学校" />
		            </a>
		                                	            <a href="http://linux.cn/" target="_blank" class="partnersAd">
	            	<img src="style/images/linuxcn.png" width="230" height="80" alt="Linux中文社区"  />
	            </a>
	            <a href="http://zt.zhubajie.com/zt/makesite? utm_source=lagou.com&utm_medium=referral&utm_campaign=BD-yl" target="_blank" class="partnersAd">
	            	<img src="style/images/zhubajie.jpg" width="230" height="80" alt="猪八戒" />
	            </a>
	            <a href="http://www.imooc.com" target="_blank" class="partnersAd">
	            	<img src="style/images/muke.jpg" width="230" height="80" alt="幕课网" />
	            </a>
	        	       	<!-- 	            <a href="http://www.osforce.cn/" target="_blank" class="partnersAd">
	            	<img src="style/images/osf-lg.jpg" width="230" height="80" alt="开源力量"  />
	            </a>
	         -->
        </div>
        
        <div class="content">
        	<div id="search_box">
	<form action="SearchServlet?flag=dosearch" method="post">
        <ul id="searchType">
        	        	<li data-searchtype="1" class="type_selected">职位</li>
        	<li data-searchtype="4">公司</li>
        	        </ul>
        <div class="searchtype_arrow"></div>
        <input type="hidden" name="sk" id="sk">
        <input type="text" id="search_input" name = "kd1"  tabindex="1" value=""  placeholder="请输入职位名称，如：产品经理"  />
        <input type="hidden" name="city" id="cityInput" value="全国"/>
        <input type="submit" id="search_button" onclick="myclick()" value="搜索" />
    </form>
</div>
<style>
.ui-autocomplete{width:488px;background:#fafafa !important;position: relative;z-index:10;border: 2px solid #91cebe;}
.ui-autocomplete-category{font-size:16px;color:#999;width:50px;position: absolute;z-index:11; right: 0px;/*top: 6px; */text-align:center;border-top: 1px dashed #e5e5e5;padding:5px 0;}
.ui-menu-item{ *width:439px;vertical-align: middle;position: relative;margin: 0px;margin-right: 50px !important;background:#fff;border-right: 1px dashed #ededed;}
.ui-menu-item a{display:block;overflow:hidden;}
</style>
<script type="text/javascript" src="style/js/search.min.js"></script>
<dl class="hotSearch">
	<div></div>
</dl>			<div class="breakline"></div>
            <dl class="workplace" id="workplaceSelect">
                <dt class="fl">工作地点：</dt>
               	               	<dd >
                	<a href="javascript:;" class="current">全国</a> 
                	                	|
                	               	</dd>
               	               	<dd >
                	<a href="javascript:;" >北京</a> 
                	                	|
                	               	</dd>
               	               	<dd >
                	<a href="javascript:;" >上海</a> 
                	                	|
                	               	</dd>
               	               	<dd >
                	<a href="javascript:;" >广州</a> 
                	                	|
                	               	</dd>
               	               	<dd >
                	<a href="javascript:;" >深圳</a> 
                	                	|
                	               	</dd>
               	               	<dd >
                	<a href="javascript:;" >成都</a> 
                	                	|
                	               	</dd>
               	               	<dd >
                	<a href="javascript:;" >杭州</a> 
                	                	|
                	               	</dd>
               	               	<dd >
                	<a href="javascript:;" >武汉</a> 
                	                	|
                	               	</dd>
               	               	<dd >
                	<a href="javascript:;" >南京</a> 
                	                	|
                	               	</dd>
               	               	<dd  class="more" >
                	<a href="javascript:;" >其他</a> 
                	                	<div class="triangle citymore_arrow"></div>
                	               	</dd>
               	                <dd id="box_expectCity" class="searchlist_expectCity dn">
	            	<span class="bot"></span>
	            	<span class="top"></span>	    						    			    						    		<dl>
			    			<dt>ABCDEF</dt>
			    			<dd>
			     						     				<span>北京</span>
			     						     				<span>长春</span>
			     						     				<span>成都</span>
			     						     				<span>重庆</span>
			     						     				<span>长沙</span>
			     						     				<span>常州</span>
			     						     				<span>东莞</span>
			     						     				<span>大连</span>
			     						     				<span>佛山</span>
			     						     				<span>福州</span>
			     						    			</dd>
			    	  	</dl>
			    	  				    			    						    		<dl>
			    			<dt>GHIJ</dt>
			    			<dd>
			     						     				<span>贵阳</span>
			     						     				<span>广州</span>
			     						     				<span>哈尔滨</span>
			     						     				<span>合肥</span>
			     						     				<span>海口</span>
			     						     				<span>杭州</span>
			     						     				<span>惠州</span>
			     						     				<span>金华</span>
			     						     				<span>济南</span>
			     						     				<span>嘉兴</span>
			     						    			</dd>
			    	  	</dl>
			    	  				    			    						    		<dl>
			    			<dt>KLMN</dt>
			    			<dd>
			     						     				<span>昆明</span>
			     						     				<span>廊坊</span>
			     						     				<span>宁波</span>
			     						     				<span>南昌</span>
			     						     				<span>南京</span>
			     						     				<span>南宁</span>
			     						     				<span>南通</span>
			     						    			</dd>
			    	  	</dl>
			    	  				    			    						    		<dl>
			    			<dt>OPQR</dt>
			    			<dd>
			     						     				<span>青岛</span>
			     						     				<span>泉州</span>
			     						    			</dd>
			    	  	</dl>
			    	  				    			    						    		<dl>
			    			<dt>STUV</dt>
			    			<dd>
			     						     				<span>上海</span>
			     						     				<span>石家庄</span>
			     						     				<span>绍兴</span>
			     						     				<span>沈阳</span>
			     						     				<span>深圳</span>
			     						     				<span>苏州</span>
			     						     				<span>天津</span>
			     						     				<span>太原</span>
			     						     				<span>台州</span>
			     						    			</dd>
			    	  	</dl>
			    	  				    			    						    		<dl>
			    			<dt>WXYZ</dt>
			    			<dd>
			     						     				<span>武汉</span>
			     						     				<span>无锡</span>
			     						     				<span>温州</span>
			     						     				<span>西安</span>
			     						     				<span>厦门</span>
			     						     				<span>烟台</span>
			     						     				<span>珠海</span>
			     						     				<span>中山</span>
			     						     				<span>郑州</span>
			     						    			</dd>
			    	  	</dl>
			    	  				    				    </dd>  
            </dl>
         
            <div id="tip_didi" class="dn">
            	<span>亲，“嘀嘀打车”已更名为“滴滴打车”了哦，我们已帮您自动跳转~</span>
            	<a href="javascript:;">我知道了</a>
            </div>
               <c:forEach items="${requestScope.list}" var="companyjob">
            	            <ul class="hot_pos reset">
			                
	                    		                    			                <li class="odd clearfix">
			                			                				                	<div class="hot_pos_l">
			                        <div class="mb10">
			                            <a href="#" title="${companyjob.comjob_job.job_name}" target="_blank">${companyjob.comjob_job.job_name}</a> 
			                            &nbsp;
			                            <span class="c9">[${companyjob.comjob_job.job_address}]</span>
			                            			                        </div>
			                        <span><em class="c7">月薪：</em>${companyjob.comjob_job.job_salary}</span>
			                        <span><em class="c7">经验：</em>${companyjob.comjob_job.job_exp}</span>
			                        <span><em class="c7">最低学历： </em>${companyjob.comjob_job.job_education}</span>
			                        <span>${companyjob.comjob_job.job_date}</span>
			                    </div> 
						        <div class="hot_pos_r">
			                        <div class="apply">
			                        				                        		<a href="CompanyServlet?flag=userlookcompanyInfo&myid=${companyjob.comjob_com.company_id}&myjobid=${companyjob.comjob_job.job_id}" target="_blank">投个简历</a>
			                        				                        </div>
			                        <div class="mb10"><a href="#" title="${companyjob.comjob_com.company_name}" target="_blank">${companyjob.comjob_com.company_name}</a></div>
			                        <span><em class="c7">领域： </em>${companyjob.comjob_com.company_attibute}</span>
			                        			                        <span><em class="c7">地址：</em>${companyjob.comjob_com.company_address} </span>
			                        			                        <br />
			                        <span><em class="c7">电话： </em>${companyjob.comjob_com.company_tel}</span>
			                        <span><em class="c7">规模： </em>${companyjob.comjob_com.company_scale}</span>
			                 
			                    </div>
			                 </li>
			                
	                    	            </ul>
	                 </c:forEach>
	                  <c:forEach items="${requestScope.clist}" var="comjob">
            	            <ul class="hot_pos reset">
			                
	                    		                    			                <li class="odd clearfix">
			                			                				                	<div class="hot_pos_l">
			                        <div class="mb10">
			                            <a href="#" title="${comjob.comjob_job.job_name}" target="_blank">${comjob.comjob_job.job_name}</a> 
			                            &nbsp;
			                            <span class="c9">[${comjob.comjob_job.job_address}]</span>
			                            			                        </div>
			                        <span><em class="c7">月薪：</em>${comjob.comjob_job.job_salary}</span>
			                        <span><em class="c7">经验：</em>${comjob.comjob_job.job_exp}</span>
			                        <span><em class="c7">最低学历： </em>${comjob.comjob_job.job_education}</span>
			                        <span>${comjob.comjob_job.job_date}发布</span>
			                    </div> 
						        <div class="hot_pos_r">
			                        <div class="apply">
			                        				                        		<a href="CompanyServlet?flag=userlookcompanyInfo&myid=${comjob.comjob_com.company_id}&myjobid=${comjob.comjob_job.job_id}" target="_blank">投个简历</a>
			                        				                        </div>
			                        <div class="mb10"><a href="#" title="${comjob.comjob_com.company_name}" target="_blank">${comjob.comjob_com.company_name}</a></div>
			                        <span><em class="c7">领域： </em>${comjob.comjob_com.company_attibute}</span>
			                        			                         <span><em class="c7">地址：</em>${comjob.comjob_com.company_address} </span>
			                        			                        <br />
			                        <span><em class="c7">电话： </em>${comjob.comjob_com.company_tel}</span>
			                        <span><em class="c7">规模： </em>${comjob.comjob_com.company_scale}</span>
			                 
			                    </div>
			                 </li>
			                
	                    	            </ul>
	                 </c:forEach>
	                   <c:forEach items="${requestScope.li}" var="job">
            	            <ul class="hot_pos reset">
			                
	                    		                    			                <li class="odd clearfix">
			                			                				                	<div class="hot_pos_l">
			                        <div class="mb10">
			                            <a href="#" title="${job.comjob_job.job_name}" target="_blank">${job.comjob_job.job_name}</a> 
			                            &nbsp;
			                            <span class="c9">[${job.comjob_job.job_address}]</span>
			                            			                        </div>
			                        <span><em class="c7">月薪：</em>${job.comjob_job.job_salary}</span>
			                        <span><em class="c7">经验：</em>${job.comjob_job.job_exp}</span>
			                        <span><em class="c7">最低学历： </em>${job.comjob_job.job_education}</span>
			                        <span>${job.comjob_job.job_date}发布</span>
			                    </div> 
						        <div class="hot_pos_r">
			                        <div class="apply">
			                        				                        		<a href="CompanyServlet?flag=userlookcompanyInfo&myid=${job.comjob_com.company_id}&myjobid=${job.comjob_job.job_id}" target="_blank">投个简历</a>
			                        				                        </div>
			                        <div class="mb10"><a href="#" title="${job.comjob_com.company_name}" target="_blank">${job.comjob_com.company_name}</a></div>
			                        <span><em class="c7">领域： </em>${job.comjob_com.company_attibute}</span>
			                        			                        <span><em class="c7">地址：</em>${job.comjob_com.company_address} </span>
			                        			                        <br />
			                        <span><em class="c7">电话： </em>${job.comjob_com.company_tel}</span>
			                        <span><em class="c7">规模： </em>${job.comjob_com.company_scale}</span>
			                 
			                    </div>
			                 </li>
			                
	                    	            </ul>
	                 </c:forEach>
	                  <c:forEach items="${requestScope.alist}" var="aaa">
            	            <ul class="hot_pos reset">
			                
	                    		                    			                <li class="odd clearfix">
			                			                				                	<div class="hot_pos_l">
			                        <div class="mb10">
			                            <a href="#" title="${aaa.comjob_job.job_name}" target="_blank">${aaa.comjob_job.job_name}</a> 
			                            &nbsp;
			                            <span class="c9">[${aaa.comjob_job.job_address}]</span>
			                            			                        </div>
			                        <span><em class="c7">月薪：</em>${aaa.comjob_job.job_salary}</span>
			                        <span><em class="c7">经验：</em>${aaa.comjob_job.job_exp}</span>
			                        <span><em class="c7">最低学历： </em>${aaa.comjob_job.job_education}</span>
			                        <span>${aaa.comjob_job.job_date}发布</span>
			                    </div> 
						        <div class="hot_pos_r">
			                        <div class="apply">
			                        				                        		<a href="CompanyServlet?flag=userlookcompanyInfo&myid=${aaa.comjob_com.company_id }&myjobid=${aaa.comjob_job.job_id}" target="_blank">投个简历</a>
			                        				                        </div>
			                        <div class="mb10"><a href="#" title="${aaa.comjob_com.company_name}" target="_blank">${aaa.comjob_com.company_name}</a></div>
			                        <span><em class="c7">领域： </em>${aaa.comjob_com.company_attibute}</span>
			                        			                         <span><em class="c7">地址：</em>${aaa.comjob_com.company_address} </span>
			                        			                        <br />
			                        <span><em class="c7">电话： </em>${aaa.comjob_com.company_tel}</span>
			                        <span><em class="c7">规模： </em>${aaa.comjob_com.company_scale}</span>
			                 
			                    </div>
			                 </li>
			                
	                    	            </ul>
	                 </c:forEach>
	                  <c:forEach items="${requestScope.dlist}" var="ddd">
            	            <ul class="hot_pos reset">
			                
	                    		                    			                <li class="odd clearfix">
			                			                				                	<div class="hot_pos_l">
			                        <div class="mb10">
			                            <a href="#" title="${ddd.comjob_job.job_name}" target="_blank">${ddd.comjob_job.job_name}</a> 
			                            &nbsp;
			                            <span class="c9">[${ddd.comjob_job.job_address}]</span>
			                            			                        </div>
			                        <span><em class="c7">月薪：</em>${ddd.comjob_job.job_salary}</span>
			                        <span><em class="c7">经验：</em>${ddd.comjob_job.job_exp}</span>
			                        <span><em class="c7">最低学历： </em>${ddd.comjob_job.job_education}</span>
			                        <span>${ddd.comjob_job.job_date}发布</span>
			                    </div> 
						        <div class="hot_pos_r">
			                        <div class="apply">
			                        				                        		<a href="CompanyServlet?flag=userlookcompanyInfo&myid=${ddd.comjob_com.company_name}&myjobid=${ddd.comjob_job.job_id}" target="_blank">投个简历</a>
			                        				                        </div>
			                        <div class="mb10"><a href="#" title="${ddd.comjob_com.company_name}" target="_blank">${ddd.comjob_com.company_name}</a></div>
			                        <span><em class="c7">领域： </em>${ddd.comjob_com.company_attibute}</span>
			                        			                         <span><em class="c7">地址：</em>${ddd.comjob_com.company_address} </span>
			                        			                        <br />
			                        <span><em class="c7">电话： </em>${ddd.comjob_com.company_tel}</span>
			                        <span><em class="c7">规模： </em>${ddd.comjob_com.company_scale}</span>
			                 
			                    </div>
			                 </li>
			                
	                    	            </ul>
	                 </c:forEach>
	                 <div id="text"></div>
	                 
	                 	<pt:page pageIndex="${requestScope.curpage }" url="/Team6/TechServlet?flag=dotype&text=${requestScope.text }&" pageMax="${requestScope.pagecount }" />
	                       <!--              <div align="center">
	                                                 <a href="index.jsp">首页</a>&nbsp;&nbsp;&nbsp;&nbsp;
	                 	                        	<a href="flag=">上一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
	                 	                        	<a href="index.jsp">下一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
	                 	                        	<a href="index.jsp">尾页</a>
	                 	                </div> -->
            	                    </div>	
            	                    
            	                    
            	                    
          
	                        	

<script>
$(function(){
	/***************************
 	 * 分页
 	 */
 	 						$('.Pagination').pager({
		      currPage: 1,
		      pageNOName: "pn",
		      form: "searchForm",
		      pageCount: 30,
		      pageSize:2
		});                                    
		
	$(".workplace dd").not('.more').children('a').click(function(){
		$('#lc').val(1);
		editForm("cityInput" , $(this).html());
	});
	
	$("#box_expectCity dd span").click(function(){
		$('#lc').val(1);2
		editForm("cityInput" , $(this).html());
	});
	
	$('#options dd div').click(function(){
		var firstName = $(this).parents('dl').children('dt').text();
		var fn = $.trim(firstName);
		if (fn=="月薪范围"){
			editForm("yxInput" , $(this).html());
		}
		else if(fn=="工作经验"){
			editForm("gjInput" , $(this).html());
		}
		else if(fn=="最低学历"){
			editForm("xlInput" , $(this).html());
		}
		else if(fn=="工作性质"){
			editForm("gxInput" , $(this).html());
		}
		else if(fn=="发布时间"){
			editForm("stInput" , $(this).html());
		}
	});
	
	$('#selected ul').delegate('li span.select_remove','click',function(event){
		var firstName = $(this).parent('li').find('strong').text();
		var fn = $.trim(firstName);
		if (fn=="月薪范围")
			editForm("yxInput" , "");
		else if(fn=="工作经验")
			editForm("gjInput" , "");
		else if(fn=="最低学历")
			editForm("xlInput" , "");
		else if(fn=="工作性质")
			editForm("gxInput" , "");
		else if(fn=="发布时间")
			editForm("stInput" , "");
	});
	
	/* search结果飘绿	*/
	(function($) {
		var searchVal = $('#search_input').val();
		var reg = /\s/g;     
		searchVal = searchVal.replace(reg, "").split(""); 
		
		var resultL = '';
		var resultR = '';
		$('.hot_pos li').each(function(){
			resultL = $('.hot_pos_l a',this).text().split("");
			$.each(resultL,function(i,v){
				if($.inArray(v.toLowerCase(),searchVal) != -1 || $.inArray(v.toUpperCase(),searchVal) != -1){
					resultL[i] = '<span>'+ v +'</span>';
				}
			});
			$('.hot_pos_l a',this).html(resultL.join(''));
			
			resultR = $('.hot_pos_r .mb10 a',this).text().split("");
			$.each(resultR,function(i,v){
				if($.inArray(v.toLowerCase(),searchVal) != -1 || $.inArray(v.toUpperCase(),searchVal) != -1){
					resultR[i] = '<span>'+ v +'</span>';
				}
			});
			$('.hot_pos_r .mb10 a',this).html(resultR.join(''));
		});
		
	})(jQuery);
	
	//didi tip
   	if($.cookie('didiTip') != 1 && false){
		$('#tip_didi').show();
	}
	$('#tip_didi a').click(function(){
		$(this).parent().remove();
		$.cookie('didiTip',1,{ expires: 30, path: '/'});
	});
	
});

function editForm(inputId,inputValue){
	$("#"+inputId).val(inputValue);
	var keyword = $.trim($('#search_input').val());
	var reg =  /[`~!@\$%\^\&\*\(\)_<>\?:"\{\},\\\/;'\[\]]/ig;
	var re = /#/g;
	var r = /\./g;
	var kw = keyword.replace(reg," ");

	if(kw == ''){
		$('#searchForm').attr('action','list.html所有职位').submit();	
	}else{
		kw = kw.replace(re,'井');
		kw = kw.replace(r,'。');
		$('#searchForm').attr('action','list.html'+kw).submit();
	}
	//$("#searchForm").submit();
}
</script>

			<div class="clear"></div>
			<input type="hidden" id="resubmitToken" value="" />
	    	<a id="backtop" title="回到顶部" rel="nofollow"></a>
	    </div><!-- end #container -->
	</div><!-- end #body -->
	<div id="footer">
		<div class="wrapper">
			<a href="h/about.html" target="_blank" rel="nofollow">联系我们</a>
		    <a href="h/af/zhaopin.html" target="_blank">互联网公司导航</a>
		    <a href="http://e.weibo.com/lagou720" target="_blank" rel="nofollow">拉勾微博</a>
		    <a class="footer_qr" href="javascript:void(0)" rel="nofollow">拉勾微信<i></i></a>
			<div class="copyright">&copy;2013-2014 Lagou <a target="_blank" href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action">京ICP备14023790号-2</a></div>
		</div>
	</div>

<script type="text/javascript" src="style/js/core.min.js"></script>
<script type="text/javascript" src="style/js/popup.min.js"></script>

<!--  -->

</body>
</html>