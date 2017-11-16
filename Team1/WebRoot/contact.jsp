<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ç¦ç¹å­¦è</title>
<link rel="stylesheet" href="css/base.css">
<link rel="stylesheet" href="css/style.css">
</head>

<body>
<div class="head-box">
    <div class="head wrap">
          <div class="logo fl"><a href=""><img src="images/logo.png"></a></div>
          <div class="head-right fr">
              <div class="head-a fr">
                   <div class="hgt fl"><img src="images/hgt.png">
                        <div class="hgt-top">
                             <input type="text" class="hgt-text">
                         </div>
                   </div>
                   <div class="head-a1 fl"><a href=""><img src="images/tb-a.png"></a></div>
                   <div class="head-a1 fl"><a href=""><img src="images/tb-b.png"></a></div>
                   <div class="head-a3 login-click fl">ç»å½</div>
                   <div class="head-a4 reg-click fl">æ³¨å</div>
              
              </div>
              <div class="clearfix"></div>
              <div class="nav fr">
                  <ul>
                       <li><a href="index.html">é¦é¡µ</a></li>
                       <li><a href="article.html">æç« </a>
                           <div class="sub-nav">
                                <div class="bich-top"></div>
                                 <div class="bich">
                                     <a href="">æé¥°</a>
                                     <a href="">ç¾é£</a>
                                     <a href="">åºè¡</a>
                                     <a href="">çº¦ä¼</a>
                                 </div>
                           
                           </div>
                       </li>
                       <li><a href="community.html">ç¤¾åº</a></li>
                       <li><a href="course.html">è¯¾ç¨</a></li>
                       <li><a href="active.html">æ´»å¨</a></li>
                       <li class="nav-cut"><a href="contact.html">èç³»æä»¬</a></li>
                  
                  </ul>
              </div>
              <div class="clearfix"></div>
          </div>
    </div>
</div>

<div class="content">
    <div class="about-banner"><img src="upload/about-banner.jpg"></div>
    <div class="about-box">
        <div class="about"><div class="about-h4">èç³»æä»¬</div></div>
        <div class="about-btm">      
              <div class="ab">
                      <div class="about-a">èç³»æ¹å¼</div>
                      <div class="about-b">å®¢æï¼ä¼ä¸QQ â 800001357</div>
                      <div class="about-b">å®¢æèç³»/ä¸¾æ¥çµè¯ï¼400-081-2113 ï¼å¨ä¸è³å¨æ¥ï¼12:00-20:30ï¼èåæ¥é¤å¤ï¼</div>
                      <div class="about-b">åå¡åä½/åªä½æ¥éï¼QQ â 865179579ï¼é«ç£ï¼</div>
               </div>        
               <div class="ab">
                      <div class="about-a">èç³»æ¹å¼</div>
                      <div class="about-b">å®¢æï¼ä¼ä¸QQ â 800001357</div>
                      <div class="about-b">å®¢æèç³»/ä¸¾æ¥çµè¯ï¼400-081-2113 ï¼å¨ä¸è³å¨æ¥ï¼12:00-20:30ï¼èåæ¥é¤å¤ï¼</div>
                      <div class="about-b">åå¡åä½/åªä½æ¥éï¼QQ â 865179579ï¼é«ç£ï¼</div>
               </div>     
        </div>
    </div>

</div>


<div class="footer">
   <div class="wrap">
      <div class="foot">
            <div class="foot-left fl">
                 <a href="">å³äºæä»¬</a>
                 <a href="">å å¥æä»¬</a>
                 <a href="contact.html">èç³»æä»¬</a>
                 <a href="">åªä½éè®¿</a>
            </div>
            <div class="foot-c fl"><a href=""><img src="images/foot-logo.jpg"></a></div>
            <div class="foot-right fr">
                 <a href="">ååæ´»å¨</a>
                 <a href="">è¯¾ç¨èµè®¯</a>
                 <a href="">ææ°åå¸</a>
                 <a href="">ç­é¨æç« </a>
            </div>
       </div> 
       <div class="foot-btm">ç½é¡µå¶ä½byäºé¦</div>    
   </div>
</div>


<!--ç»å½æ³¨åå¼¹çª-->
<div class="mask"></div>
<div class="login">
    <div class="login-title">
        <div class="login-a">ç»å½</div>
        <div class="login-b"></div>
        <div class="login-c close">x</div>
    </div>
    <div class="login-btm">
        <div class="login-d"><input type="text" class="login-text" placeholder="æ³¨åæ¶å¡«åçé®ç®±"></div>
        <div class="login-d"><input type="password" class="login-pas" placeholder="å¯ç "></div>
        <div class="login-d"><input type="button" class="login-btn" placeholder="ç»å½"></div>
        <div class="login-f">
             <a href="">å¿è®°å¯ç </a>
             <span>è¿æ²¡æç¦ç¹è´¦å·?><a href="javascript:;" class="reg-href">ç¹å»æ³¨å</a></span>
        </div>
    </div>
</div>

<div class="reg">
    <div class="login-title">
        <div class="login-a">æ³¨å</div>
        <div class="login-b"></div>
        <div class="login-c close">x</div>
    </div>
    <div class="login-btm">
        <div class="login-d"><input type="text" class="login-text" placeholder="é®ç®±/ææºå·"></div>
        <div class="login-d"><input type="password" class="login-pas" placeholder="å¯ç "></div>
        <div class="login-d"><input type="button" class="login-btn" placeholder="æ³¨å"></div>
        <div class="login-f">
             <a href="">å¿è®°å¯ç </a>
        </div>
    </div>
</div>

<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/Action.js"></script>
</body>
</html>
