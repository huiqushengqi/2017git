<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
  <meta http-equiv="x-pjax-version" content="v7">
  <link rel="apple-touch-icon" href="images/logo.jpg">
  <link rel="alternate" media="only screen and (max-width: 640px)" href="https://bbs.pku.edu.cn/v2/mobile/thread.php?bid=914">
  <script type="text/javascript">
        window.login = false;
        window.username = "guest";
  </script>

<!-- start _stylesheets_and_scripts.php-->
<link rel="stylesheet" href="css/all.css">
<script>
    if (typeof(window.console) == 'undefined')
        window.console = {};
    if (typeof(window.console.log) == 'undefined')
      window.console.log = function(a){};
</script>
<script src="js/config.js"></script>
<script src="js/crypto-js.js"></script>
<script src="js/jquery-1.11.3.min.js"></script>
<script src="js/jquery.pjax.js"></script>
<script src="js/jquery.ba-resize.min.js"></script>
<script src="js/underscore-min.js"></script>
<script src="js/jquery.gridly.js"></script>
<script src="js/jquery.transit.js"></script>
<script src="js/rangy-core.js"></script>
<script src="js/rangy-selectionsaverestore.js"></script>
<script src="js/perfect-scrollbar.jquery.min.js"></script>
<script src="js/sortable.min.js"></script>
<script src="js/jquery.selection.js"></script>
<script src="js/strophe.min.js"></script>
<script src="js/highlight.pack.js"></script>
<script src="js/highslide-with-gallery.js"></script>
<script src="js/bdwm.min.js"></script>
<script src="js/all.min.js"></script>
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/github.css">
<link rel="stylesheet" href="css/perfect-scrollbar.min.css">
<link rel="stylesheet" href="css/highslide.css" />
<!--[if lt IE 7]>
<link rel="stylesheet" href="css/highslide-ie6.css" />
<![endif]-->
<link rel="stylesheet" href="css/bdwm.min.css">

<!-- end _stylesheets_and_scripts.php-->
<script type="text/javascript">
function test(thispage){
	$.getJSON("querypost.action",
			{page:thispage},
			function(data){
        var str="";
        for ( var i = 0; i < data.length; i++) {
			str=str+data[i].post_title
		}
         $("#tip").html(str);
	});        
}
</script>
<!-- start meta -->
<title>二手市場(SecondMarket) - </title>

<!-- end meta -->
<script>
  var isShownWelcome = false;
</script>
</head>
<body>
<div style="margin:0 auto;width:0px;height:0px;overflow:hidden;"><img src="img/logo.jpg"></div> <!-- for wechat thumb -->
<!-- left title -->
<nav id="left-nav">
  <div id="logo"><a href="home.php"><img src="img/logo_jlem83.gif"></a></div>
  
  
</nav>



<div id="page-content">
   
    <!-- this is the real content, should be returned from server when PJAX working.-->
<!-- start main -->
  <div id="bdwm-title">二手图书(SecondBook)版 - 北大未名BBS</div>
  <script>
    $("#link-buttons > a").removeClass("cur");
  </script>
  <div id="page-thread" class="page-thread">

<!-- start _board-head.php-->
    <!-- start board-head -->
    <div class="breadcrumb-trail">
      <!--这里是面包屑导航，样式在global里面-->
      <a href="home.php">首页</a>
      <a href="twomarket.jsp">二手图书(SecondBook)</a>
      <a id="tip"></a>
    </div>

    <div id="board-head" data-bid="914">
      <div id="title-wrapper">
        <div id="title" class="gray limit">
          <span class="title-text eng">SecondBook</span>
          <span class="title-text black">二手图书</span>
        </div>
        <div id="stat" class="gray l">
          在线：<span class="num">100</span>
          今日：<span class="num">3</span>
          帖数：<span class="num">3282</span>
        </div>
      </div>
      <div id="add-fav" class="gray">
      
        <a data-no-pjax target="_blank" class="rss" href="rss.php?bid=914"></a>
      </div>
      <div id="content" class="gray">
        <div id="intro" class="limit">二手,&nbsp;书,&nbsp;市场</div>
        <div id="admin" class="limit">版务:
        </div>
      </div>

      <div id="tab">
        
      </div>

      <div class="search-box">
      </div>

      <div id="favorite-modal" class="modal bdwm-dialog" style="display: none;">
          <div class="text">
            <span>您已成功将</span>
            <span class="board-name"><span id="board-name">二手图书</span>(<span board-name-en>SecondBook</span>)</span>
            <span><br/>添加至版面收藏夹</span>
          </div>
          <a data-action="dialog-dismiss" class="button">确认</a>
        </div>

    </div>
    <!-- end board-head -->



<!-- end _board-head.php-->

    <!-- start board-body -->
    <script>
      $("#tab-button-thread").addClass("active");
    </script>
    <!-- 可以调整区域大小 -->
    <div id="board-body" style="margin-left:0px;">
      <div id="list-head" class="fw">
        <div id="list-filter" class="l" data-type="1">
       
        </div>
        
      </div>
      <div id="list-body" class="fw">
        <div id="list-title" class="fw list-title">
          <div class="l id">序号</div>
          
          
          <div class="l title">标题</div>
          <div class="l author">作者</div>
          <div class="l reply">回复</div>
          <div class="l time">最后发表</div>
        </div>
        <div id="list-content" class="fw">
          <!-- list pin -->
          <div class="list-item" data-itemid="5642439"><a class="link" href="post-read-single.php?bid=914&amp;type=0&amp;postid=5642439"></a>
            <div class="id l"><div class="pin">置顶</div></div>
            <div class="dot l" data-role="unread-dot"></div>
            <div class="title-cont l">
              <div class="title l limit" style="max-width: 456px;">SecondBook版规</div>
              <img src="img/bl.png">
            </div>
            <div class="avatar l"><a class="link"></a>
              <img src="img/cat.jpg">
            </div>
            <div class="author l"><a class="link"></a>
              <div class="name limit">mmmmmoney</div>
              <div class="time">2008-09-15</div>
            </div>
          </div>
          <!-- list pin -->
          <div class="list-item" data-itemid="8799110"><a class="link" href="post-read-single.php?bid=914&amp;type=0&amp;postid=8799110"></a>
            <div class="id l"><div class="pin">置顶</div></div>
            <div class="dot l" data-role="unread-dot"></div>
            <div class="title-cont l">
              <div class="title l limit" style="max-width: 479px;">【醒目】请将自己的图书信息分类后再发布</div>
              <img src="img/lock.png">
            </div>
            <div class="avatar l"><a class="link" href="user.php?uid=80558"></a>
              <img src="img/hoooony.jpg">
            </div>
            <div class="author l"><a class="link" href="user.php?uid=80558"></a>
              <div class="name limit">hoooony</div>
              <div class="time">2010-06-26</div>
            </div>
          </div>
          <!-- list pin -->
          <div class="list-item" data-itemid="9204141"><a class="link" href="post-read-single.php?bid=914&amp;type=0&amp;postid=9204141"></a>
            <div class="id l"><div class="pin">置顶</div></div>
            <div class="dot l" data-role="unread-dot"></div>
            <div class="title-cont l">
              <div class="title l limit" style="max-width: 499px;">提醒发文的网友注意保护个人信息</div>
            </div>
            <div class="avatar l"><a class="link" href="user.php?uid=33892"></a>
              <img src="img/windsline.jpg">
            </div>
            <div class="author l"><a class="link" href="user.php?uid=33892"></a>
              <div class="name limit">WindsLine</div>
              <div class="time">2010-10-03</div>
            </div>
          </div>
          <!-- list item -->
          <div class="list-item-topic list-item" data-itemid="16261163"><a class="link" href="post-read.php?bid=914&amp;threadid=16261163"></a>
            <div class="id l">3282</div>
            <div class="dot l" data-role="unread-dot"></div>
            <div class="title-cont l">
              <div class="title l limit" style="max-width: 480px;">【转】托福写作+真题全解</div>
              <img src="img/attach.png">
            </div>
            <div class="avatar l"><a class="link" href="user.php?uid=3965"></a>
              <img src="img/portrait-mas.png">
            </div>
            <div class="author l"><a class="link" href="user.php?uid=3965"></a>
              <div class="name limit">pkuhua</div>
              <div class="time">13:04</div>
            </div>
            <div class="reply-num l">0</div>
            <div class="author l"><a class="link" href="post-read.php?bid=914&amp;threadid=16261163&amp;page=a&amp;postid=17122967#17122967"></a>
              <div class="name limit">pkuhua</div>
              <div class="time">13:04</div>
            </div>
          </div>
          <!-- list item -->
          <div class="list-item-topic list-item" data-itemid="16229220"><a class="link" href="post-read.php?bid=914&amp;threadid=16229220"></a>
            <div class="id l">3025</div>
            <div class="dot l" data-role="unread-dot"></div>
            <div class="title-cont l">
              <div class="title l limit" style="max-width: 499px;">8.5折代购京东网上各类社科书籍！！！</div>
            </div>
            <div class="avatar l"><a class="link" href="user.php?uid=49456"></a>
              <img src="img/portrait-mas.png">
            </div>
            <div class="author l"><a class="link" href="user.php?uid=49456"></a>
              <div class="name limit">toshiyama</div>
              <div class="time">09-24 14:38</div>
            </div>
            <div class="reply-num l">3</div>
            <div class="author l"><a class="link" href="post-read.php?bid=914&amp;threadid=16229220&amp;page=a&amp;postid=17122868#17122868"></a>
              <div class="name limit">toshiyama</div>
              <div class="time">12:32</div>
            </div>
          </div>
          <!-- list item -->
          <div class="list-item-topic list-item" data-itemid="16260967"><a class="link" href="post-read.php?bid=914&amp;threadid=16260967"></a>
            <div class="id l">3280</div>
            <div class="dot l" data-role="unread-dot"></div>
            <div class="title-cont l">
              <div class="title l limit" style="max-width: 480px;">【转】德语A1A2B1B2C1全系列保存完好只需20元</div>
              <img src="img/attach.png">
            </div>
            <div class="avatar l"><a class="link" href="user.php?uid=13607"></a>
              <img src="img/portrait-mas.png">
            </div>
            <div class="author l"><a class="link" href="user.php?uid=13607"></a>
              <div class="name limit">robetta</div>
              <div class="time">10:15</div>
            </div>
            <div class="reply-num l">0</div>
            <div class="author l"><a class="link" href="post-read.php?bid=914&amp;threadid=16260967&amp;page=a&amp;postid=17122325#17122325"></a>
              <div class="name limit">robetta</div>
              <div class="time">10:15</div>
            </div>
          </div>
          <!-- list item -->
          <div class="list-item-topic list-item" data-itemid="16234068"><a class="link" href="post-read.php?bid=914&amp;threadid=16234068"></a>
            <div class="id l">3061</div>
            <div class="dot l" data-role="unread-dot"></div>
            <div class="title-cont l">
              <div class="title l limit" style="max-width: 437px;">基金从业资格的书两本，25</div>
              <img src="img/attach.png">
              <img src="img/wz.png">
            </div>
            <div class="avatar l"><a class="link" href="user.php?uid=15039"></a>
              <img src="img/portrait-fem.png">
            </div>
            <div class="author l"><a class="link" href="user.php?uid=15039"></a>
              <div class="name limit">freefly</div>
              <div class="time">09-28 14:16</div>
            </div>
            <div class="reply-num l">5</div>
            <div class="author l"><a class="link" href="post-read.php?bid=914&amp;threadid=16234068&amp;page=a&amp;postid=17121271#17121271"></a>
              <div class="name limit">freefly</div>
              <div class="time">昨天 22:40</div>
            </div>
          </div>
          <!-- list item -->
          <div class="list-item-topic list-item" data-itemid="16260464"><a class="link" href="post-read.php?bid=914&amp;threadid=16260464"></a>
            <div class="id l">3278</div>
            <div class="dot l" data-role="unread-dot"></div>
            <div class="title-cont l">
              <div class="title l limit" style="max-width: 499px;">【转】数据库&nbsp;图像处理&nbsp;信息安全</div>
            </div>
            <div class="avatar l"><a class="link" href="user.php?uid=5120"></a>
              <img src="img/extrovert.jpg">
            </div>
            <div class="author l"><a class="link" href="user.php?uid=5120"></a>
              <div class="name limit">extrovert</div>
              <div class="time">昨天 21:52</div>
            </div>
            <div class="reply-num l">0</div>
            <div class="author l"><a class="link" href="post-read.php?bid=914&amp;threadid=16260464&amp;page=a&amp;postid=17120978#17120978"></a>
              <div class="name limit">extrovert</div>
              <div class="time">昨天 21:52</div>
            </div>
          </div>
          <!-- list item -->
          <div class="list-item-topic list-item" data-itemid="16260143"><a class="link" href="post-read.php?bid=914&amp;threadid=16260143"></a>
            <div class="id l">3276</div>
            <div class="dot l" data-role="unread-dot"></div>
            <div class="title-cont l">
              <div class="title l limit" style="max-width: 499px;">【转】内外妇儿诊断影像-可供预防或基础用</div>
            </div>
            <div class="avatar l"><a class="link" href="user.php?uid=31269"></a>
              <img src="img/yilululu.jpg">
            </div>
            <div class="author l"><a class="link" href="user.php?uid=31269"></a>
              <div class="name limit">yilululu</div>
              <div class="time">昨天 16:04</div>
            </div>
            <div class="reply-num l">0</div>
            <div class="author l"><a class="link" href="post-read.php?bid=914&amp;threadid=16260143&amp;page=a&amp;postid=17119899#17119899"></a>
              <div class="name limit">yilululu</div>
              <div class="time">昨天 16:04</div>
            </div>
          </div>
          <!-- list item -->
          <div class="list-item-topic list-item" data-itemid="16231890"><a class="link" href="post-read.php?bid=914&amp;threadid=16231890"></a>
            <div class="id l">3041</div>
            <div class="dot l" data-role="unread-dot"></div>
            <div class="title-cont l">
              <div class="title l limit" style="max-width: 456px;">【求】求一套杨伯峻的《春秋左传注》，就是六本的那</div>
              <img src="img/bl.png">
            </div>
            <div class="avatar l"><a class="link" href="user.php?uid=12888"></a>
              <img src="img/portrait-mas.png">
            </div>
            <div class="author l"><a class="link" href="user.php?uid=12888"></a>
              <div class="name limit">yuankang</div>
              <div class="time">09-26 16:40</div>
            </div>
            <div class="reply-num l">1</div>
            <div class="author l"><a class="link" href="post-read.php?bid=914&amp;threadid=16231890&amp;page=a&amp;postid=17119842#17119842"></a>
              <div class="name limit">yilululu</div>
              <div class="time">昨天 15:47</div>
            </div>
          </div>
          <!-- list item -->
          <div class="list-item-topic list-item" data-itemid="16260025"><a class="link" href="post-read.php?bid=914&amp;threadid=16260025"></a>
            <div class="id l">3274</div>
            <div class="dot l" data-role="unread-dot"></div>
            <div class="title-cont l">
              <div class="title l limit" style="max-width: 480px;">【转】范里安微观经济学第九版</div>
              <img src="img/attach.png">
            </div>
            <div class="avatar l"><a class="link" href="user.php?uid=11688"></a>
              <img src="img/merryyundi.jpg">
            </div>
            <div class="author l"><a class="link" href="user.php?uid=11688"></a>
              <div class="name limit">Merryyundi</div>
              <div class="time">昨天 13:37</div>
            </div>
            <div class="reply-num l">0</div>
            <div class="author l"><a class="link" href="post-read.php?bid=914&amp;threadid=16260025&amp;page=a&amp;postid=17119387#17119387"></a>
              <div class="name limit">Merryyundi</div>
              <div class="time">昨天 13:37</div>
            </div>
          </div>
          <!-- list item -->
          <div class="list-item-topic list-item" data-itemid="16259479"><a class="link" href="post-read.php?bid=914&amp;threadid=16259479"></a>
            <div class="id l">3273</div>
            <div class="dot l" data-role="unread-dot"></div>
            <div class="title-cont l">
              <div class="title l limit" style="max-width: 499px;">【转】时间序列分析&nbsp;·汉密尔顿&nbsp;著；夏晓华&nbsp;译</div>
            </div>
            <div class="avatar l"><a class="link" href="user.php?uid=11427"></a>
              <img src="img/portrait-mas.png">
            </div>
            <div class="author l"><a class="link" href="user.php?uid=11427"></a>
              <div class="name limit">kante</div>
              <div class="time">前天 20:51</div>
            </div>
            <div class="reply-num l">0</div>
            <div class="author l"><a class="link" href="post-read.php?bid=914&amp;threadid=16259479&amp;page=a&amp;postid=17117273#17117273"></a>
              <div class="name limit">kante</div>
              <div class="time">前天 20:51</div>
            </div>
          </div>
          <!-- list item -->
          <div class="list-item-topic list-item" data-itemid="16259146"><a class="link" href="post-read.php?bid=914&amp;threadid=16259146"></a>
            <div class="id l">3272</div>
            <div class="dot l" data-role="unread-dot"></div>
            <div class="title-cont l">
              <div class="title l limit" style="max-width: 499px;">【求】再要你命三千</div>
            </div>
            <div class="avatar l"><a class="link" href="user.php?uid=25096"></a>
              <img src="img/llemonade.jpg">
            </div>
            <div class="author l"><a class="link" href="user.php?uid=25096"></a>
              <div class="name limit">llemonade</div>
              <div class="time">前天 10:28</div>
            </div>
            <div class="reply-num l">0</div>
            <div class="author l"><a class="link" href="post-read.php?bid=914&amp;threadid=16259146&amp;page=a&amp;postid=17115530#17115530"></a>
              <div class="name limit">llemonade</div>
              <div class="time">前天 10:28</div>
            </div>
          </div>
          <!-- list item -->
          <div class="list-item-topic list-item" data-itemid="16254626"><a class="link" href="post-read.php?bid=914&amp;threadid=16254626"></a>
            <div class="id l">3250</div>
            <div class="dot l" data-role="unread-dot"></div>
            <div class="title-cont l">
              <div class="title l limit" style="max-width: 480px;">出几本心理学书和哈弗给学生的1400个思维游戏</div>
              <img src="img/attach.png">
            </div>
            <div class="avatar l"><a class="link" href="user.php?uid=15752"></a>
              <img src="img/portrait-mas.png">
            </div>
            <div class="author l"><a class="link" href="user.php?uid=15752"></a>
              <div class="name limit">clingqiqi</div>
              <div class="time">10-30 18:57</div>
            </div>
            <div class="reply-num l">2</div>
            <div class="author l"><a class="link" href="post-read.php?bid=914&amp;threadid=16254626&amp;page=a&amp;postid=17114134#17114134"></a>
              <div class="name limit">clingqiqi</div>
              <div class="time">11-04 22:09</div>
            </div>
          </div>
          <!-- list item -->
          <div class="list-item-topic list-item" data-itemid="16254809"><a class="link" href="post-read.php?bid=914&amp;threadid=16254809"></a>
            <div class="id l">3254</div>
            <div class="dot l" data-role="unread-dot"></div>
            <div class="title-cont l">
              <div class="title l limit" style="max-width: 480px;">【转】深度学习、Java编程等书籍（优惠）</div>
              <img src="img/attach.png">
            </div>
            <div class="avatar l"><a class="link" href="user.php?uid=13766"></a>
              <img src="img/portrait-mas.png">
            </div>
            <div class="author l"><a class="link" href="user.php?uid=13766"></a>
              <div class="name limit">sdh</div>
              <div class="time">10-30 22:53</div>
            </div>
            <div class="reply-num l">1</div>
            <div class="author l"><a class="link" href="post-read.php?bid=914&amp;threadid=16254809&amp;page=a&amp;postid=17112559#17112559"></a>
              <div class="name limit">whupkufang</div>
              <div class="time">11-04 10:19</div>
            </div>
          </div>
          <!-- list item -->
          <div class="list-item-topic list-item" data-itemid="16257896"><a class="link" href="post-read.php?bid=914&amp;threadid=16257896"></a>
            <div class="id l">3269</div>
            <div class="dot l" data-role="unread-dot"></div>
            <div class="title-cont l">
              <div class="title l limit" style="max-width: 499px;">【求】中国语言文学系教材</div>
            </div>
            <div class="avatar l"><a class="link" href="user.php?uid=15909"></a>
              <img src="img/portrait-fem.png">
            </div>
            <div class="author l"><a class="link" href="user.php?uid=15909"></a>
              <div class="name limit">yukicece</div>
              <div class="time">11-03 14:15</div>
            </div>
            <div class="reply-num l">0</div>
            <div class="author l"><a class="link" href="post-read.php?bid=914&amp;threadid=16257896&amp;page=a&amp;postid=17110607#17110607"></a>
              <div class="name limit">yukicece</div>
              <div class="time">11-03 14:15</div>
            </div>
          </div>
          <!-- list item -->
          <div class="list-item-topic list-item" data-itemid="16243092"><a class="link" href="post-read.php?bid=914&amp;threadid=16243092"></a>
            <div class="id l">3150</div>
            <div class="dot l" data-role="unread-dot"></div>
            <div class="title-cont l">
              <div class="title l limit" style="max-width: 437px;">【转+送】经济学、法学相关、马原毛概等</div>
              <img src="img/attach.png">
              <img src="img/wz.png">
            </div>
            <div class="avatar l"><a class="link" href="user.php?uid=22244"></a>
              <img src="img/portrait-fem.png">
            </div>
            <div class="author l"><a class="link" href="user.php?uid=22244"></a>
              <div class="name limit">Garden</div>
              <div class="time">10-12 15:38</div>
            </div>
            <div class="reply-num l">2</div>
            <div class="author l"><a class="link" href="post-read.php?bid=914&amp;threadid=16243092&amp;page=a&amp;postid=17110572#17110572"></a>
              <div class="name limit">cellnature</div>
              <div class="time">11-03 14:06</div>
            </div>
          </div>
          <!-- list item -->
          <div class="list-item-topic list-item" data-itemid="16257752"><a class="link" href="post-read.php?bid=914&amp;threadid=16257752"></a>
            <div class="id l">3266</div>
            <div class="dot l" data-role="unread-dot"></div>
            <div class="title-cont l">
              <div class="title l limit" style="max-width: 480px;">【转书】中公版·2018国家公务员录用考试专业教材</div>
              <img src="img/attach.png">
            </div>
            <div class="avatar l"><a class="link" href="user.php?uid=15774"></a>
              <img src="img/portrait-neu.png">
            </div>
            <div class="author l"><a class="link" href="user.php?uid=15774"></a>
              <div class="name limit">shuidao</div>
              <div class="time">11-03 12:05</div>
            </div>
            <div class="reply-num l">0</div>
            <div class="author l"><a class="link" href="post-read.php?bid=914&amp;threadid=16257752&amp;page=a&amp;postid=17110073#17110073"></a>
              <div class="name limit">shuidao</div>
              <div class="time">11-03 12:05</div>
            </div>
          </div>
          <!-- list item -->
          <div class="list-item-topic list-item" data-itemid="16257390"><a class="link" href="post-read.php?bid=914&amp;threadid=16257390"></a>
            <div class="id l">3265</div>
            <div class="dot l" data-role="unread-dot"></div>
            <div class="title-cont l">
              <div class="title l limit" style="max-width: 480px;">出基本名人传和一些教材杂书</div>
              <img src="img/attach.png">
            </div>
            <div class="avatar l"><a class="link" href="user.php?uid=15752"></a>
              <img src="img/portrait-mas.png">
            </div>
            <div class="author l"><a class="link" href="user.php?uid=15752"></a>
              <div class="name limit">clingqiqi</div>
              <div class="time">11-02 23:45</div>
            </div>
            <div class="reply-num l">0</div>
            <div class="author l"><a class="link" href="post-read.php?bid=914&amp;threadid=16257390&amp;page=a&amp;postid=17108900#17108900"></a>
              <div class="name limit">clingqiqi</div>
              <div class="time">11-02 23:45</div>
            </div>
          </div>
          <!-- list item -->
          <div class="list-item-topic list-item" data-itemid="16257218"><a class="link" href="post-read.php?bid=914&amp;threadid=16257218"></a>
            <div class="id l">3264</div>
            <div class="dot l" data-role="unread-dot"></div>
            <div class="title-cont l">
              <div class="title l limit" style="max-width: 499px;">【求】2017&nbsp;CFA一级notes</div>
            </div>
            <div class="avatar l"><a class="link" href="user.php?uid=15455"></a>
              <img src="img/portrait-mas.png">
            </div>
            <div class="author l"><a class="link" href="user.php?uid=15455"></a>
              <div class="name limit">huangyuhua</div>
              <div class="time">11-02 19:50</div>
            </div>
            <div class="reply-num l">0</div>
            <div class="author l"><a class="link" href="post-read.php?bid=914&amp;threadid=16257218&amp;page=a&amp;postid=17108202#17108202"></a>
              <div class="name limit">huangyuhua</div>
              <div class="time">11-02 19:50</div>
            </div>
          </div>
          <!-- list item -->
          <div class="list-item-topic list-item" data-itemid="16256927"><a class="link" href="post-read.php?bid=914&amp;threadid=16256927"></a>
            <div class="id l">3263</div>
            <div class="dot l" data-role="unread-dot"></div>
            <div class="title-cont l">
              <div class="title l limit" style="max-width: 480px;">【转】天一金融的保代考试资料（全新）</div>
              <img src="img/attach.png">
            </div>
            <div class="avatar l"><a class="link" href="user.php?uid=4621"></a>
              <img src="img/yiyiguxing.jpg">
            </div>
            <div class="author l"><a class="link" href="user.php?uid=4621"></a>
              <div class="name limit">yiyiguxing</div>
              <div class="time">11-02 14:08</div>
            </div>
            <div class="reply-num l">0</div>
            <div class="author l"><a class="link" href="post-read.php?bid=914&amp;threadid=16256927&amp;page=a&amp;postid=17107236#17107236"></a>
              <div class="name limit">yiyiguxing</div>
              <div class="time">11-02 14:08</div>
            </div>
          </div>
          <!-- list item -->
          <div class="list-item-topic list-item" data-itemid="16256856"><a class="link" href="post-read.php?bid=914&amp;threadid=16256856"></a>
            <div class="id l">3262</div>
            <div class="dot l" data-role="unread-dot"></div>
            <div class="title-cont l">
              <div class="title l limit" style="max-width: 499px;">【求】投资学教材&nbsp;公司理财+投资学</div>
            </div>
            <div class="avatar l"><a class="link" href="user.php?uid=2360"></a>
              <img src="img/portrait-fem.png">
            </div>
            <div class="author l"><a class="link" href="user.php?uid=2360"></a>
              <div class="name limit">yanhualcyx</div>
              <div class="time">11-02 12:47</div>
            </div>
            <div class="reply-num l">0</div>
            <div class="author l"><a class="link" href="post-read.php?bid=914&amp;threadid=16256856&amp;page=a&amp;postid=17106967#17106967"></a>
              <div class="name limit">yanhualcyx</div>
              <div class="time">11-02 12:47</div>
            </div>
          </div>
          <!-- list item -->
          <div class="list-item-topic list-item" data-itemid="16255956"><a class="link" href="post-read.php?bid=914&amp;threadid=16255956"></a>
            <div class="id l">3261</div>
            <div class="dot l" data-role="unread-dot"></div>
            <div class="title-cont l">
              <div class="title l limit" style="max-width: 480px;">【急转】GRE全新书</div>
              <img src="img/attach.png">
            </div>
            <div class="avatar l"><a class="link" href="user.php?uid=32806"></a>
              <img src="img/portrait-neu.png">
            </div>
            <div class="author l"><a class="link" href="user.php?uid=32806"></a>
              <div class="name limit">corrinewu</div>
              <div class="time">11-01 10:43</div>
            </div>
            <div class="reply-num l">0</div>
            <div class="author l"><a class="link" href="post-read.php?bid=914&amp;threadid=16255956&amp;page=a&amp;postid=17103375#17103375"></a>
              <div class="name limit">corrinewu</div>
              <div class="time">11-01 10:43</div>
            </div>
          </div>
        </div>
      </div>
      <div class="paging">
        <div class="paging-button n active"><a class="link" href="?bid=914&amp;mode=topic"></a>1</div>
        <div class="paging-button n"><a class="link" href="?bid=914&amp;mode=topic&amp;page=2"></a>2</div>
        <div class="paging-button n"><a class="link" href="?bid=914&amp;mode=topic&amp;page=3"></a>3</div>
        <div class="paging-button n"><a class="link" href="?bid=914&amp;mode=topic&amp;page=4"></a>4</div>
        <div class="paging-button n"><a class="link" href="javascript:test(5)"></a>5</div>
        <div class="paging-button n"><a class="link" href="?bid=914&amp;mode=topic&amp;page=6"></a>6</div>
        <div class="paging-button n"><a class="link" href="?bid=914&amp;mode=topic&amp;page=7"></a>7</div>
        <div class="paging-button n"><a class="link" href="?bid=914&amp;mode=topic&amp;page=8"></a>8</div>
        <div class="paging-button n"><a class="link" href="?bid=914&amp;mode=topic&amp;page=9"></a>9</div>
        <div class="paging-button n"><a class="link" href="?bid=914&amp;mode=topic&amp;page=92"></a>...92</div>
        <div class="paging-button n"><a class="link" href="?bid=914&amp;mode=topic&amp;page=2"></a>下一页 &gt;</div>
        <div class="paging-input-wrapper"><input type="number" data-role="goto-input" max="92" min="1" value="1"></div>
        <div>/ 92</div>
        <div class="paging-button"><a data-action="goto-link" class="link" data-bid="914"></a>跳转</div>
      </div>
    </div>
    <!-- end board-body -->

<!-- start _new-thread-simple.php-->
    <!-- start new-thread-simple -->
    <div class="editor-wrapper">
      <div class="disable-mask"><p>请您先 <a href="javascript:document.getElementById('username').focus();">登录</a> 再进行发帖</p></div>
    <div id="bdwm-editor" class="bdwm-editor" data-bid="914" data-parentid=""
         data-title="" data-redirect="">
      <div class="row">
        <span>快捷发帖</span>
      </div>
      <div class="row">
        <span class="title">标题</span>
        <div class="input-wrapper title-input"><input type="text" data-role="post-title" maxlength="48" tabindex="-1" value=""></div>
        <span class="title-suggest">建议：≤ 24个字</span>
        <div class="r">
          <a class="switch-button" href="post-new.php?bid=914">
            <img src="img/iconfont-fatie.png">
            <span>切换到完整模式</span>
          </a>
        </div>
      </div>
      <div class="input-wrapper content-input" ><textarea data-role="new-post-textarea" tabindex="-1"  placeholder="插入图片、公式、附件，请点击右上方“切换到完整模式”。"></textarea></div>
      <div class="row">
        <span class="title">签名档</span>
        <div class="cs-select">
          <section>
            <select class="cs-select" data-role="signature" data-signature-count="0" >
              <option value="" >无</option>
            </select>
          </section>
        </div>
        <div class="r">
          <div class="input-wrapper">
            <input id="input-anonymous6741658" data-role="input-anonymous" type="checkbox" disabled>
            <label for="input-anonymous6741658">匿名</label>
            <input id="input-noreply6741658" data-role="input-noreply" type="hidden" value="false">
          </div>
          <div class="publish-button extended" data-action="new-post-publish" tabindex="-1">发布(Ctrl+回车)</div>
        </div>
      </div>
    </div>
    </div>
    <!-- end new-thread-simple -->

<!-- end _new-thread-simple.php-->

  </div>

<!-- end main -->
    <!-- content end-->
</div>

<div class="mask mask-without-header"></div>
<div class="mask mask-full-screen" id="page-notice-container">
  
</div>
<div class="mask mask-transparent"></div>
<div class="mask mask-transparent top-nav"></div>

<footer id="footer">
  <p><a data-no-pjax href="../123/" target="_blank">常用网站</a> - <a href="download.php">相关下载</a> - <a href="publication.php">未名站刊</a> - <a href="about-us.php">关于我们</a> - <a href="contact.php">联系我们</a> - <a href="join-us.php">加入我们</a> - <a href="help.php">帮助中心</a> - <a href="mail-new.php?username=SYSOP">意见反馈</a></p>
  <p>© 2000–2017 北大未名BBS</p>
</footer>
</body>
</html>
