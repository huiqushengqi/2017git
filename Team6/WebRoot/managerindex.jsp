<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb">
<head>
<script id="allmobilize" charset="utf-8" src="style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld"  />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>拉勾网-最专业的互联网招聘平台</title>
<meta property="qc:admins" content="23635710066417756375" />
<meta content="" name="description">
<meta content="" name="keywords">
<meta name="baidu-site-verification" content="QIQ6KC1oZ6" />

<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
var ctx = "h";
console.log(1);
</script>
<link rel="Shortcut Icon" href="h/images/favicon.ico">
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
$(document).ready(function(){
	   $.getJSON("TechServlet",{flag:"techno"},function(data){
		   var str1="";
		   var str2="";
		   var str3="";
		   var str4="";
		   var str5="";
		   var str6="";
		   var str7="";
		   for(var i=0;i<data.length;i++){
			  if(data[i].tech_type=="后端"){
				  str1=str1+"<a href='#'>"+data[i].tech_name+"</a>";
			  }
			  if(data[i].tech_type=="前端"){
				  str2=str2+"<a href='#'>"+data[i].tech_name+"</a>";
			    }
			  if(data[i].tech_type=="移动开发"){
				  str3=str3+"<a href='#'>"+data[i].tech_name+"</a>";
			    }
			  if(data[i].tech_type=="测试"){
				  str4=str4+"<a href='#'>"+data[i].tech_name+"</a>";
			    }
			  if(data[i].tech_type=="运维"){
				  str5=str5+"<a href='#'>"+data[i].tech_name+"</a>";
			    }
			  if(data[i].tech_type=="DBA"){
				  str6=str6+"<a href='#'>"+data[i].tech_name+"</a>";
			    }
			  if(data[i].tech_type=="高端职位"){
				  str7=str7+"<a href='#'>"+data[i].tech_name+"</a>";
			    }
		   }
		   $("#hou").html(str1); 
		   $("#qian").html(str2);
		   $("#yidong").html(str3);
		   $("#ceshi").html(str4);
		   $("#yunwei").html(str5);
		   $("#dba").html(str6);
		   $("#gaoduan").html(str7);
		});
	});

$(document).ready(function(){
	$.getJSON("TechServlet",{flag:"newjobsearch"},function(data){
          var str="";
          for(var i=0;i<data.length;i++){
        	  str=str+"<a href='#'>"+data[i].job_name+"</a>"+"<span class='c9'>"+"["+data[i].job_address+"]"+"</span><br/>"+"<span class='c7'>月薪:</span>"+data[i].job_salary+"<span class='c7'>经验：</span>"+data[i].job_exp+"<span class='c7'>学历要求：</span>"+data[i].job_education+"</br>"+data[i].job_date+"</br>";
            
          }
          $("#left").html(str);
		});
});


</script>




</head>
<body>
<div id="body">
	<div id="header">
    	<div class="wrapper">
    		<a href="index.html" class="logo">
    			<img src="style/images/logo.png" width="229" height="43" alt="拉勾招聘-专注互联网招聘" />
    		</a>
    		<ul class="reset" id="navheader">

    			<li class="current"><a href="/Team6/index.jsp">首页</a></li>
    			<li ><a href="#" >公司</a></li>
    			<li ><a href="/Team6/Controller?flag=showdiscuss" target="_blank">讨论区</a></li>


    		    <li ><a href="ManagerServlet?flag=querynocheckjob" rel="nofollow">审核企业的岗位</a></li>
	    		<li ><a href="managerreleasemeans.jsp" rel="nofollow">发布学习资料</a></li>
	    	</ul>
        	<ul class="loginTop">
        	    <li>&nbsp;&nbsp;&nbsp;&nbsp;管理员：${sessionScope.manager.manager_name }&nbsp;&nbsp;&nbsp;&nbsp;</li>
            </ul>
             </div>
    </div><!-- end #header -->
    <div id="container">
		<div id="sidebar">
			<div class="mainNavs">
						

						<div>
						<div class="menu_main">
							<h2>后端</h2>
							<div id="hou"></div>
				     	</div>	
				     	
				     	
				     	<div class="menu_main">
							<h2>前端 </h2>
							<div id="qian"></div>
				     	</div>		
				     	
				     	
				     	<div class="menu_main">
							<h2>移动开发</h2>
							<div id="yidong"></div>
				     	</div>	
				     	
				     	<div class="menu_main">
							<h2>测试</h2>
							<div id="ceshi"></div>
				     	</div>
				     	
				     	<div class="menu_main">
							<h2>运维 </h2>
							<div id="yunwei"></div>
				     	</div>
				     	
				     	<div class="menu_main">
							<h2>DBA</h2>
							<div id="dba"></div>
				     	</div>
				 
				     	
				     	<div class="menu_main">
							<h2>高端职位 </h2>
							<div id="gaoduan"></div>
				     	</div>		
					</div>
				</div>
			
			<a class="subscribe" href="subscribe.html" target="_blank">订阅职位</a>
		</div>
        <div class="content">	
	        			<div id="search_box">
		<form id="searchForm" name="searchForm" action="list.html" method="get">
        <ul id="searchType">
        	        	<li data-searchtype="1" class="type_selected">职位</li>
        	<li data-searchtype="4">公司</li>
        	        </ul>
        <div class="searchtype_arrow"></div>
        <input type="text" id="search_input" name = "kd"  tabindex="1" value=""  placeholder="请输入职位名称，如：产品经理"  />
        <input type="hidden" name="spc" id="spcInput" value=""/>
        <input type="hidden" name="pl" id="plInput" value=""/>
        <input type="hidden" name="gj" id="gjInput" value=""/>
        <input type="hidden" name="xl" id="xlInput" value=""/>
        <input type="hidden" name="yx" id="yxInput" value=""/>
        <input type="hidden" name="gx" id="gxInput" value="" />
        <input type="hidden" name="st" id="stInput" value="" />
        <input type="hidden" name="labelWords" id="labelWords" value="" />
        <input type="hidden" name="lc" id="lc" value="" />
        <input type="hidden" name="workAddress" id="workAddress" value=""/>
                <input type="hidden" name="city" id="cityInput" value=""/>
                <input type="submit" id="search_button" value="搜索" />
				
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
	<dt>热门搜索：</dt>
	<dd><a href="list.htmlJava?labelWords=label&city=">Java</a></dd>
	<dd><a href="list.htmlPHP?labelWords=label&city=">PHP</a></dd>
	<dd><a href="list.htmlAndroid?labelWords=label&city=">Android</a></dd>
	<dd><a href="list.htmliOS?labelWords=label&city=">iOS</a></dd>
	<dd><a href="list.html前端?labelWords=label&city=">前端</a></dd>
	<dd><a href="list.html产品经理?labelWords=label&city=">产品经理</a></dd>
	<dd><a href="list.htmlUI?labelWords=label&city=">UI</a></dd>
	<dd><a href="list.html运营?labelWords=label&city=">运营</a></dd>
	<dd><a href="list.htmlBD?labelWords=label&city=">BD</a></dd>
	<dd><a href="list.html?gx=实习&city=">实习</a></dd>
</dl>			
			<div id="home_banner">
	            <ul class="banner_bg">
	            		                <li  class="banner_bg_1 current" >
	                    <a href="h/subject/s_buyfundation.html?utm_source=DH__lagou&utm_medium=banner&utm_campaign=haomai" target="_blank"><img src="style/images/d05a2cc6e6c94bdd80e074eb05e37ebd.jpg" width="612" height="160" alt="好买基金——来了就给100万" /></a>
	                </li>
	                	                <li  class="banner_bg_2" >
	                    <a href="h/subject/s_worldcup.html?utm_source=DH__lagou&utm_medium=home&utm_campaign=wc" target="_blank"><img src="style/images/c9d8a0756d1442caa328adcf28a38857.jpg" width="612" height="160" alt="世界杯放假看球，老板我也要！" /></a>
	                </li>
	                	                <li  class="banner_bg_3" >
	                    <a href="h/subject/s_xiamen.html?utm_source=DH__lagou&utm_medium=home&utm_campaign=xiamen" target="_blank"><img src="style/images/d03110162390422bb97cebc7fd2ab586.jpg" width="612" height="160" alt="出北京记——第一站厦门" /></a>
	                </li>
	                	            </ul>
	            <div class="banner_control">
	                <em></em> 
	                <ul class="thumbs">
	                		                    <li  class="thumbs_1 current" >
	                        <i></i>
	                        <img src="style/images/4469b1b83b1f46c7adec255c4b1e4802.jpg" width="113" height="42" />
	                    </li>
	                    	                    <li  class="thumbs_2" >
	                        <i></i>
	                        <img src="style/images/381b343557774270a508206b3a725f39.jpg" width="113" height="42" />
	                    </li>
	                    	                    <li  class="thumbs_3" >
	                        <i></i>
	                        <img src="style/images/354d445c5fd84f1990b91eb559677eb5.jpg" width="113" height="42" />
	                    </li>
	                    	                </ul>
	            </div>
	        </div><!--/#main_banner-->
			
        	<ul id="da-thumbs" class="da-thumbs">
	        		        		<li >
	                    <a href="h/c/1650.html" target="_blank">
	                        <img src="style/images/a254b11ecead45bda166afa8aaa9c8bc.jpg" width="113" height="113" alt="联想" />
	                        <div class="hot_info">
	                        	<h2 title="联想">联想</h2>
	                            <em></em>
	                            <p title="世界因联想更美好">
	                            	世界因联想更美好
	                            </p>
	                        </div>
	                    </a>
	                </li>
                	        		<li >
	                    <a href="h/c/9725.html" target="_blank">
	                        <img src="style/images/c75654bc2ab141df8218983cfe5c89f9.jpg" width="113" height="113" alt="淘米" />
	                        <div class="hot_info">
	                        	<h2 title="淘米">淘米</h2>
	                            <em></em>
	                            <p title="将心注入 追求极致">
	                            	将心注入 追求极致
	                            </p>
	                        </div>
	                    </a>
	                </li>
                	        		<li >
	                    <a href="h/c/1914.html" target="_blank">
	                        <img src="style/images/2bba2b71d0b0443eaea1774f7ee17c9f.png" width="113" height="113" alt="优酷土豆" />
	                        <div class="hot_info">
	                        	<h2 title="优酷土豆">优酷土豆</h2>
	                            <em></em>
	                            <p title="专注于视频领域，是中国网络视频行业领军企业">
	                            	专注于视频领域，是中国网络视频行业领军企业
	                            </p>
	                        </div>
	                    </a>
	                </li>
                	        		<li >
	                    <a href="h/c/6630.html" target="_blank">
	                        <img src="style/images/f4822a445a8b495ebad81fcfad3e40e2.jpg" width="113" height="113" alt="思特沃克" />
	                        <div class="hot_info">
	                        	<h2 title="思特沃克">思特沃克</h2>
	                            <em></em>
	                            <p title="一家全球信息技术服务公司">
	                            	一家全球信息技术服务公司
	                            </p>
	                        </div>
	                    </a>
	                </li>
                	        		<li >
	                    <a href="h/c/2700.html" target="_blank">
	                        <img src="style/images/5caf8f9631114bf990f87bb11360653e.png" width="113" height="113" alt="奇猫" />
	                        <div class="hot_info">
	                        	<h2 title="奇猫">奇猫</h2>
	                            <em></em>
	                            <p title="专注于移动互联网、互联网产品研发">
	                            	专注于移动互联网、互联网产品研发
	                            </p>
	                        </div>
	                    </a>
	                </li>
                	        		<li  class="last" >
	                    <a href="h/c/1335.html" target="_blank">
	                        <img src="style/images/c0052c69ef4546c3b7d08366d0744974.jpg" width="113" height="113" alt="堆糖网" />
	                        <div class="hot_info">
	                        	<h2 title="堆糖网">堆糖网</h2>
	                            <em></em>
	                            <p title="分享收集生活中的美好，遇见世界上的另外一个你">
	                            	分享收集生活中的美好，遇见世界上的另外一个你
	                            </p>
	                        </div>
	                    </a>
	                </li>
                            </ul>
            
            <ul class="reset hotabbing">
            	            	<li class="current">热门职位</li>
            	            	<li>最新职位</li>
            </ul>
            <div id="hotList">
            
	            <ul class="hot_pos reset">
	                	 <li class="clearfix">
		            			<div class="hot_pos_l" >
			                    	<div class="mb10" id="left">
			                    	
			                    	 </div> 
			                    </div>
			                	<div class="hot_pos_r">
			                    	<div class="mb10 recompany">
			                    	  
			                    	    
			                    	</div>
			                        <ul class="companyTags reset">
			                        </ul>
			                    </div>
			             	                
			                    			                
			                    			                
			                    			                
	                		                	            				            		<li class="odd clearfix">
		            																		            <div class="hot_pos_l">
			                    	<div class="mb10" >
			                        	<a href="h/jobs/145249.html" target="_blank">手游商务</a> 
			                            &nbsp;
			                            <span class="c9">[上海]</span>
			                            			                        </div>
			                        <span><em class="c7">月薪： </em>6k-10k</span>
			                        <span><em class="c7">经验：</em> 1-3年</span>
			                        <span><em class="c7">最低学历： </em>大专</span>
			                        <br />
			                        <span><em class="c7">职位诱惑：</em>一年两次调薪，免费早、晚餐，项目、年终奖</span>
			                        <br />
				                    <span>2014-06-27</span>
			                        <!-- <a  class="wb">分享到微博</a> -->
			                    </div>
			                	<div class="hot_pos_r">
			                    	<div class="mb10 recompany"><a href="h/c/4428.html" target="_blank">恺英网络</a></div>
			                        <span><em class="c7">领域：</em> 移动互联网,游戏</span>
			                        			                        <span><em class="c7">创始人：</em>王悦</span>
			                        			                        <br />
			                        <span><em class="c7">阶段：</em> 初创型(未融资)</span>
			                        <span><em class="c7">规模：</em>500-2000人</span>
			                        <ul class="companyTags reset">
			                        				         <li>游戏公司</li>
			                        					   <li>页游</li>
			                        					    <li>手游</li>                     				                        					                        			
			                        					 </ul>
			                    </div>
			                    			                </li>
	                		                	            				            	
	                		                	            				            	
	                		                	            				            	
	                		                	            				            	
	                		                	            				            	
	                		                	            				            	
	                		                	                
	                	                <a href="list.html" class="btn fr" target="_blank">查看更多</a>
	                	            </ul>
	            <ul class="hot_pos hot_posHotPosition reset" style="display:none;">   
	                	                	            				            		<li class="odd clearfix">
		            				            					                	<div class="hot_pos_l">
			                    	<div class="mb10">
			                        	<a href="h/jobs/120282.html" target="_blank">资深.Net开发工程师-北京-02466</a> 
			                            &nbsp;
			                            <span class="c9">[北京]</span>
			                            			                        </div>
			                        <span><em class="c7">月薪： </em>15k-22k</span>
			                        <span><em class="c7">经验：</em>5-10年</span>
			                        <span><em class="c7">最低学历：</em> 本科</span>
			                        <br />
			                        <span><em class="c7">职位诱惑：</em>六险一金，饭补，班车，晋升机制，氛围好</span>
			                        <br />
				                    <span>14:16发布</span>
			                        <!-- <a  class="wb">分享到微博</a> -->
			                    </div>
			                	<div class="hot_pos_r">
			                    	<div class="mb10"><a href="h/c/8143.html" target="_blank">途家网</a></div>
			                        <span><em class="c7">领域：</em> 移动互联网,O2O</span>
			                        			                        <span><em class="c7">创始人：</em>罗军</span>
			                        			                        <br />
			                        <span> <em class="c7">阶段： </em>成长型(B轮)</span>
			                        <span> <em class="c7">规模：</em>500-2000人</span>
			                        <ul class="companyTags reset">
			                        				         <li>绩效奖金</li>
			                        					           <li>五险一金</li>
			                        					            <li>带薪年假</li>
			                          </ul>
			                    </div>
			                </li>
	                	                	            				            		<li class="clearfix">
		            				            					                	<div class="hot_pos_l">
			                    	<div class="mb10">
			                        	<a href="h/jobs/91655.html" target="_blank">市场策划经理-线上活动-北京-02267</a> 
			                            &nbsp;
			                            <span class="c9">[北京]</span>
			                            			                        </div>
			                        <span><em class="c7">月薪： </em>10k-15k</span>
			                        <span><em class="c7">经验：</em>5-10年</span>
			                        <span><em class="c7">最低学历：</em> 本科</span>
			                        <br />
			                        <span><em class="c7">职位诱惑：</em>六险一金，饭补，班车，晋升机制，氛围好</span>
			                        <br />
				                    <span>14:16发布</span>
			                        <!-- <a  class="wb">分享到微博</a> -->
			                    </div>
			                	<div class="hot_pos_r">
			                    	<div class="mb10"><a href="h/c/8143.html" target="_blank">途家网</a></div>
			                        <span><em class="c7">领域：</em> 移动互联网,O2O</span>
			                        			                        <span><em class="c7">创始人：</em>罗军</span>
			                        			                        <br />
			                        <span> <em class="c7">阶段： </em>成长型(B轮)</span>
			                        <span> <em class="c7">规模：</em>500-2000人</span>
			                        <ul class="companyTags reset">
			                        				                        			<li>绩效奖金</li>
			                        					                        		<li>五险一金</li>
			                        					                        		<li>带薪年假</li>
			                        					                        		</ul>
			                    </div>
			                </li>
	                	                	                <a href="list.html?city=%E5%85%A8%E5%9B%BD" class="btn fr" target="_blank">查看更多</a>
	            </ul>
            </div>
            
            <div class="clear"></div>
			<div id="linkbox">
			    <dl>
			        <dt>友情链接</dt>
			        <dd>
			        		<a href="http://www.zhuqu.com/" target="_blank">住趣家居网</a> <span>|</span>
			        		<a href="http://www.woshipm.com/" target="_blank">人人都是产品经理</a> <span>|</span>
			        		<a href="http://zaodula.com/" target="_blank">互联网er的早读课</a> <span>|</span>
			                <a href="http://lieyunwang.com/" target="_blank">猎云网</a> <span>|</span>
			        		<a href="http://www.ucloud.cn/" target="_blank">UCloud</a> <span>|</span>
			          		<a href="http://www.iconfans.com/" target="_blank">iconfans</a>  <span>|</span>
			          		<a href="http://www.html5dw.com/" target="_blank">html5梦工厂</a>   <span>|</span>
			          		<a href="http://www.sykong.com/" target="_blank">手游那点事</a> 
			          		
			          		<a href="http://www.mycodes.net/" target="_blank">源码之家</a> <span>|</span>
			          		<a href="http://www.uehtml.com/" target="_blank">uehtml</a> <span>|</span>
			          		<a href="http://www.w3cplus.com/" target="_blank">W3CPlus</a> <span>|</span>
			          		<a href="http://www.boxui.com/" target="_blank">盒子UI</a> <span>|</span>
			          		<a href="http://www.uimaker.com/" target="_blank">uimaker</a> <span>|</span>
			          		<a href="http://www.yixieshi.com/" target="_blank">互联网的一些事</a> <span>|</span>
			          		<a href="http://www.chuanke.com/" target="_blank">传课网</a> <span>|</span>
			          		<a href="http://www.eoe.cn/" target="_blank">安卓开发</a> <span>|</span>
			          		<a href="http://www.eoeandroid.com/" target="_blank">安卓开发论坛</a> 
			          		<a href="http://hao.360.cn/" target="_blank" >360安全网址导航</a> <span>|</span>
			          		<a href="http://se.360.cn/" target="_blank" >360安全浏览器</a> <span>|</span>
			          		<a href="http://www.hao123.com/" target="_blank" >hao123上网导航</a> <span>|</span>
			          		<a href="http://www.ycpai.com" target="_blank" >互联网创业</a><span>|</span>
			          		<a href="http://www.zhongchou.cn" target="_blank" >众筹网</a><span>|</span>
			          		<a href="http://www.marklol.com/" target="_blank" >马克互联网</a><span>|</span>
			          		<a href="http://www.chaohuhr.com/" target="_blank" >巢湖英才网</a>
			          		
			          		<a href="http://www.zhubajie.com/" target="_blank" >创意服务外包</a><span>|</span>
			          		<a href="http://www.thinkphp.cn/" target="_blank" >thinkphp</a><span>|</span>
			          		<a href="http://www.chuangxinpai.com/" target="_blank" >创新派</a><span>|</span>

			          		<a href="http://w3cshare.com/" target="_blank" >W3Cshare</a><span>|</span>
			          		<a href="http://www.518lunwen.cn/" target="_blank" >论文发表网</a><span>|</span>
			          		<a href="http://www.199it.com" target="_blank" >199it</a><span>|</span>

			          		<a href="http://www.shichangbu.com" target="_blank" >市场部网</a><span>|</span>
			          		<a href="http://www.meitu.com/" target="_blank" >美图公司</a><span>|</span>
			          		<a href="https://www.teambition.com/" target="_blank" >Teambition</a>
			          		<a href="http://oupeng.com/" target="_blank" >欧朋浏览器</a><span>|</span>
			          		<a href="http://iwebad.com/" target="_blank">网络广告人社区</a>
			          		<a href="h/af/flink.html" target="_blank" class="more">更多</a>
			        </dd>
			    </dl>
			</div>
        </div>	
 	    <input type="hidden" value="" name="userid" id="userid" />
 		<!-- <div id="qrSide"><a></a></div> -->
<!--  -->

<!-- <div id="loginToolBar">
	<div>
		<em></em>
		<img src="style/images/footbar_logo.png" width="138" height="45" />
		<span class="companycount"></span>
		<span class="positioncount"></span>
		<a href="#loginPop" class="bar_login inline" title="登录"><i></i></a>
		<div class="right">
			<a href="register.html?from=index_footerbar" onclick="_hmt.push(['_trackEvent', 'button', 'click', 'register'])" class="bar_register" id="bar_register" target="_blank"><i></i></a>
		</div>
		<input type="hidden" id="cc" value="16002" />
		<input type="hidden" id="cp" value="96531" />
	</div>
</div>
 -->
<!-------------------------------------弹窗lightbox  ----------------------------------------->
<div style="display:none;">
	<!-- 登录框 -->
	<div id="loginPop" class="popup" style="height:240px;">
       	<form id="loginForm">
			<input type="text" id="email" name="email" tabindex="1" placeholder="请输入登录邮箱地址" />
			<input type="password" id="password" name="password" tabindex="2" placeholder="请输入密码" />
			<span class="error" style="display:none;" id="beError"></span>
		    <label class="fl" for="remember"><input type="checkbox" id="remember" value="" checked="checked" name="autoLogin" /> 记住我</label>
		    <a href="h/reset.html" class="fr">忘记密码？</a>
		    <input type="submit" id="submitLogin" value="登 &nbsp; &nbsp; 录" />
		</form>
		<div class="login_right">
			<div>还没有拉勾帐号？</div>
			<a href="register.html" class="registor_now">立即注册</a>
		    <div class="login_others">使用以下帐号直接登录:</div>
		    <a href="h/ologin/auth/sina.html" target="_blank" id="icon_wb" class="icon_wb" title="使用新浪微博帐号登录"></a>
		    <a href="h/ologin/auth/qq.html" class="icon_qq" id="icon_qq" target="_blank" title="使用腾讯QQ帐号登录" ></a>
		</div>
    </div><!--/#loginPop-->
</div>
<!------------------------------------- end ----------------------------------------->
<script type="text/javascript" src="style/js/Chart.min.js"></script>
<script type="text/javascript" src="style/js/home.min.js"></script>
<script type="text/javascript" src="style/js/count.js"></script>
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

<!-- <script src="style/js/wb.js" type="text/javascript" charset="utf-8"></script>
 -->

</body>
</html>	