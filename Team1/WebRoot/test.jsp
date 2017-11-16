<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html>
<head>
<script src="js/jquery-1.11.3.min.js"></script>
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
    <meta charset="utf-8">
    <style>
        ul{
            height: 100px;
            
            width: 100px;
            overflow: auto;
            margin: 0;
            padding: 0;
        }
        input{
            width: 96px;
        }
    </style>
</head>
<body>

    <div>
        <input type="text" >
        <input type="button" value="aa"/>
        <ul id="ul">
            <li>1</li>
            <li>2</li>
            <li>3</li>
            <li>4</li>
            <li>4</li>
            <li>4</li>
            <li>4</li>
            <li>s</li>
        </ul>
    </div>

    <script >
    //要加载的数据
    var arr=[1,1,2,3,8,2,32,3,5,8,28,2,3,2,3,5,3,1,4,12,1,2,1,31,23,12,3,12,3,12,3,18,35,2,1,321,3,21,3,12,3,123,6,21321,3,17,3,2,3,12,3,12,1,5,23123,1,321,3,1,23,1,3];

        var ul=document.getElementById("ul");
        var start=0;

        //监听滚动事件，当滚动条的位置距离小于某个值的时候，就加载数据
        ul.onscroll=function(){
            if(ul.scrollHeight-ul.scrollTop-90<30){
                load(start,5,arr,ul);
                start+=5;
            }
        }

    //加载数据函数    
    function load(start,num,arr,ul){
        var html="";
        if(start+num>arr.length){return ;}
        for(var s=start;s<start+num;s++){
            html+='<li>'+arr[s]+'</li>';

        }
        ul.innerHTML=ul.innerHTML+html;
    }
    </script>


<button onclick="test(1)">点击</button>
<span id="tip"></span>
</body>
</html>

