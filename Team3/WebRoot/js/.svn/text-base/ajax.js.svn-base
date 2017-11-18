function shopzr(id){
	$.ajax({
		   type: "post", 
		   async: false, 
		   url : "shop_action.php?action=shopzr",
		   dataType: "html",
		   data: 'id='+id,
		   timeout: 30000,
		   success: function(data){
               sAlert(data);
           }
    });
}
function cardsy(id,cid){
	$.ajax({
		   type: "post", 
		   async: false, 
		   url : "shop_action.php?action=cardsy",
		   dataType: "html",
		   data: 'id='+id+'&cid'+cid,
		   timeout: 30000,
		   success: function(data){
               sAlert(data);
           }
    });
}
function cardsysd(id){
	var mbids = $("#mbids").val();
	$.ajax({
		   type: "post", 
		   async: false, 
		   url : "shop_action.php?action=cardsysd",
		   dataType: "html",
		   data: 'id='+id+'&mbids='+mbids,
		   timeout: 30000,
		   success: function(data){
               if(data==0){
				   document.getElementById("tishi").innerHTML = '<span style="color:#FF0000">* 对不起，您无权使用该道具</span>';}
			   else if(data==1){
				   document.getElementById("tishi").innerHTML = '<span style="color:#FF0000">* 对不起，请填写目标ID</span>';}
               else if(data==2){
				   document.getElementById("tishi").innerHTML = '<span style="color:#FF0000">* 对不起，目标不存在</span>';}
			   else if(data==3){
				   document.getElementById("tishi").innerHTML = '<span style="color:#FF0000">* 对不起，您无权对该目标进行操作</span>';}
			   else if(data==4){
				   document.getElementById("tishi").innerHTML = '<span style="color:#FF0000">* 该吧不存在</span>';}
			   else if(data==5){
				   document.getElementById("tishi").innerHTML = '<span style="color:#FF0000">* 您未在该吧遭到封锁</span>';}
			   else{
				   document.getElementById("tishi").innerHTML = '<span style="color:#00FF00">'+data+'</span>';
				   document.getElementById("djsd").disabled=true;
				   document.getElementById("djsy").disabled=false;}
           }
    });
}
function cardsysy(id){
	var mbids = $("#mbids").val();
    var theme = $("#theme").val();
    var content = $("#content").val();
	$.ajax({
		   type: "post", 
		   async: false, 
		   url : "shop_action.php?action=cardsysy",
		   dataType: "html",
		   data: 'id='+id+'&mbids='+mbids+'&theme='+theme+'&content='+content,
		   timeout: 30000,
		   success: function(data){
               if(data==0){
				   document.getElementById("tishi").innerHTML = '<span style="color:#FF0000">* 对不起，您无权使用该道具</span>';}
			   else if(data==1){
				   document.getElementById("tishi").innerHTML = '<span style="color:#FF0000">* 对不起，请填写目标ID</span>';}
               else if(data==2){
				   document.getElementById("tishi").innerHTML = '<span style="color:#FF0000">* 对不起，目标不存在</span>';}
			   else if(data==3){
				   document.getElementById("tishi").innerHTML = '<span style="color:#FF0000">* 对不起，您无权对该目标进行操作</span>';}
			   else if(data==4){
				   document.getElementById("tishi").innerHTML = '<span style="color:#00FF00">使用成功</span>';
				   window.location.href = "shop_manage.php?action=card";
				   return false;}
			   else if(data==5){
				   document.getElementById("tishi").innerHTML = '<span style="color:#FF0000">* 对不起，该吧不存在或您未被封锁</span>';}
			   else if(data==6){
				   document.getElementById("tishi").innerHTML = '<span style="color:#FF0000">* 对不起，内容不能为空</span>';
				   document.getElementById("djsd").disabled=false;
				   document.getElementById("djsy").disabled=true;}
			   else{
				   document.getElementById("tishi").innerHTML = '<span style="color:#FF0000">* 出错了！请重试或联系管理员</span>';}
           }
    });
}
function buydiv(classid,id){
	$.ajax({
		   type: "post", 
		   async: false, 
		   url : "shop_action.php?action=buydiv",
		   dataType: "html",
		   data: 'classid='+classid+'&id='+id,
		   timeout: 30000,
		   success: function(data){
               sAlert(data);
           }
    });
}
function buy(classid,id){
	var selltime="";
	if(classid==1){
		var radio=document.getElementsByName("selltime");
		for(var i=0;i<radio.length;i++){
			if(radio[i].checked==true){
	 	    	selltime=radio[i].value;
	 	    	break;
			}
		}
	}
	$.ajax({
		   type: "post", 
		   async: false, 
		   url : "shop_action.php?action=buy",
		   dataType: "html",
		   data: 'classid='+classid+'&id='+id+'&selltime='+selltime,
		   timeout: 30000,
		   success: function(data){
               if(data==1){
				   document.getElementById("tishi").innerHTML = '<span style="color:#FF0000">* 对不起，您的积分不足</span>';}
			   else if(data==2){
				   document.getElementById("tishi").innerHTML = '<span style="color:#FF0000">* 对不起，该商品暂时无货</span>';}
               else if(data==3){
				   document.getElementById("tishi").innerHTML = '<span style="color:#00FF00">* 购买成功</span>';				   
				   window.location.href = "shop.php";
				   return false;}
			   else if(data==4){
				   document.getElementById("tishi").innerHTML = '<span style="color:#FF0000">* 对不起，您的余额不足</span>';}
			   else if(data==5){
				   document.getElementById("tishi").innerHTML = '<span style="color:#FF0000">* 对不起，该服务目前不允许自助开通</span>';}
			   else if(data==6){
				   document.getElementById("tishi").innerHTML = '<span style="color:#FF0000">* 对不起，请选择购买时间</span>';}
			   else if(data==7){
				   document.getElementById("tishi").innerHTML = '<span style="color:#FF0000">* 对不起，该道具为会员专属</span>';}
			   else{
				   document.getElementById("tishi").innerHTML = '<span style="color:#FF0000">* 出错了！请重试或联系管理员</span>';}
           }
    });
}
function indexta(str){
	$.ajax({
		   type: "post", 
		   async: false,
		   url : "user.php?action=indext",
		   dataType: "html",
		   data: 'tid='+str,
		   timeout: 30000,
		   success: function(data){
			   if(data==1){
				   document.getElementById("waringt").innerHTML = '<span style="color:#FF0000">* 您好，该贴已被其他用户推荐</span>';}
               else if(data==2){
				   document.getElementById("waringt").innerHTML = '<span style="color:#00FF00">* 感谢您的推荐，管理员将尽快进行审核</span>';}
			   else{
				   document.getElementById("waringt").innerHTML = '<span style="color:#FF0000">* 出错了！请重试或联系管理员</span>';}
           }
    });
}
function create(){
	$("#creates").attr('disabled',true);
	var barnamez = $("#barnametj").val();
	var barnametj = encodeURIComponent($("#barnametj").val());
    var present = encodeURIComponent($("#present").val());
	var belong = $("#belong").val();
	if($("#verify").length>0){
		var verify = $("#verify").val();}
	else{verify = "0";}
	$.ajax({
		   type: "post",
		   async: false, 
		   url : "create.php?action=submit",
		   dataType: "html",
		   data: 'barname='+barnametj+'&present='+present+'&belong='+belong+'&verify='+verify,
		   timeout: 30000,
		   success: function(data){
			   if(data==1){
				   $("#creates").attr('disabled',false);
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，请将信息填写完整</span>';}
			   else if(data==2){
				   $("#creates").attr('disabled',false);
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，验证码错误</span>';}
			   else if(data==3){
				   $("#creates").attr('disabled',false);
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，吧名不能超过20个字符</span>';}
               else if(data==4){
				   document.getElementById("waring").innerHTML = '<span style="color:#00FF00">* 创建成功</span>';
				   window.location.href = "create.php?barname="+barnamez;
				   return false;}
			   else if(data==5){
				   $("#creates").attr('disabled',false);
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 提示：创建吧时，简介您只能输入100字，当您成为吧主时将无此限制</span>';}
			   else if(data==6){
				   $("#creates").attr('disabled',false);
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，吧名或简介中存在禁用内容</span>';}
			   else{
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 出错了！请重试或联系管理员</span>';}
           }
    });
}
function addsbm(str){
	var addsm = $("#addsm").val();
	$.ajax({
		   type: "post", 
		   async: false, 
		   url : "bar_manage.php?bid="+str+"&action=addsm",
		   dataType: "html",
		   data: 'addsm='+addsm,
		   timeout: 30000,
		   success: function(data){
			   if($("#addsm").val()==""){
				   sAlert("对不起，请将信息填写完整");}
			   else if(data==1){
				   sAlert("对不起，该用户不存在");}
			   else if(data==2){
				   sAlert("对不起，该用户已是小吧主");}
			   else if(data==3){
				   sAlert("对不起，小吧主已达到最高人数");}
			   else if(data==4){
				   sAlert("对不起，该会员尚未加入本吧");}
			   else if(data==5){
				   sAlert("对不起，该会员已是吧主");}
               else if(data==6){
				   window.location.href = "bar_manage.php?bid="+str+"&action=basic";
				   return false;}
			   else{
				   sAlert("出错了！请重试或联系管理员");}
           }
    });
}
function addfbb(str){
	var addfb = $("#addfb").val();
	$.ajax({
		   type: "post", 
		   async: false, 
		   url : "bar_manage.php?bid="+str+"&action=addfb",
		   dataType: "html",
		   data: 'addfb='+addfb,
		   timeout: 30000,
		   success: function(data){
			   if($("#addfb").val()==""){
				   sAlert("对不起，请将信息填写完整");}
			   else if(data==4){
				   sAlert("对不起，该吧不存在");}
			   else if(data==1){
				   sAlert("对不起，不能添加本吧");}
			   else if(data==2){
				   sAlert("对不起，该吧已被添加");}
               else if(data==3){
				   window.location.href = "bar_manage.php?bid="+str+"&action=basic";
				   return false;}
			   else{
				   sAlert("出错了！请重试或联系管理员");}
           }
    });
}
function addpc(str){
	var addpc = encodeURIComponent($("#addpc").val());
	$.ajax({
		   type: "post", 
		   async: false, 
		   url : "bar_manage.php?bid="+str+"&action=addpc",
		   dataType: "html",
		   data: 'addpc='+addpc,
		   timeout: 30000,
		   success: function(data){
			   if($("#addpc").val()==""){
				   sAlert("对不起，贴子分类不能为空");}
               else if(data==1){
				   window.location.href = "bar_manage.php?bid="+str+"&action=postclass";
				   return false;}
			   else{
				   sAlert("出错了！请重试或联系管理员");}
           }
    });
}
function loginjs(url){
	var username = encodeURIComponent($("#username").val());
	var passwd = $("#passwd").val();
	var long = "0";
	if($("#long").attr("checked")==true){
	    long = "1";}
	var url = url;
	url = url.replace("=and=","&");
	var verify ="0";
	if($("#verify").length>0){
	     verify = $("#verify").val();}
	$.ajax({
		   type: "post", 
		   async: false, 
		   url : "login.php?action=submit",
		   dataType: "html",
		   data: 'username='+username+'&passwd='+passwd+'&verify='+verify+'&long='+long,
		   timeout: 30000,
		   success: function(data){
			   if(data==5){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">&nbsp;&nbsp;* ID不存在、未被审核或已被关闭</span>';}
			   else if(data==1){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">&nbsp;&nbsp;* 对不起，请将信息填写完整</span>';}
			   else if(data==2){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">&nbsp;&nbsp;* 对不起，验证码错误</span>';}
			   else if(data==3){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">&nbsp;&nbsp;* 对不起，用户名或密码错误</span>';}
               else if(data==4){
				   document.getElementById("waring").innerHTML = '<span style="color:#00FF00">&nbsp;&nbsp;* 登陆成功</span>';				   
				   window.location.href = url;
				   return false;}
			   else{
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">&nbsp;&nbsp;* 出错了！请重试或联系管理员</span>';}
           }
    });
}
function lostpwjs(str){
	var username = $("#username").text();
	if($("#answer").length>0){
		var answer = encodeURIComponent($("#answer").val());}
	else{var answer ="0";}
	if($("#email").length>0){
		var safemail = $("#email").val();}
	else{var safemail ="0";}
	var passwd = $("#passwd").val();
	var passwdy = $("#passwdy").val();
	if($("#verify").length>0){
	    var verify = $("#verify").val();}
	else{var verify ="0";}
	$.ajax({
		   type: "post", 
		   async: false, 
		   url : "lostpw.php?action=submit&way="+str+"&un="+username,
		   dataType: "html",
		   data: 'answer='+answer+'&email='+email+'&passwd='+passwd+'&passwdy='+passwdy+'&verify='+verify,
		   timeout: 30000,
		   success: function(data){
			   if(data==6){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，密码保护答案错误</span>';}
			   else if(data==1){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，安全邮箱错误</span>';}
			   else if(data==2){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，密码长度不符合系统要求</span>';}
			   else if(data==3){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，两次输入的密码不同</span>';}
			   else if(data==4){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，验证码错误</span>';}
               else if(data==5){
				   document.getElementById("waring").innerHTML = '<span style="color:#00FF00">* 操作成功</span>';
				   window.location.href = "login.php?action=basic";
				   return false;}
			   else{
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 出错了！请重试或联系管理员</span>';}
           }
    });
}
function usercode(str){
	var email = $("#email").val();
	$.ajax({
		   type: "post", 
		   async: false,
		   url : "reg.php?action=usercode",
		   dataType: "html",
		   data: 'email='+email,
		   timeout: 30000,
		   success: function(data){
			   if(data==1){
				   document.getElementById("waring").innerHTML = '<span style="color:#00FF00">* 您的认证码已发送到您的邮箱</span>';}
               else if(data==2){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 该邮箱已被使用，请更换邮箱</span>';}
			   else if(data==3){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 邮箱未填写或不正确</span>';}
			   else if(data==4){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 您已用其它邮箱申请过验证码</span>';}
			   else{
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 出错了！请重试或联系管理员</span>';}
           }
    });
}
function regjs(){
	var username = encodeURIComponent($("#username").val());
	var passwd = $("#passwd").val();
	var passwdy = $("#passwdy").val();
	var email = $("#email").val();
	var question = encodeURIComponent($("#question").val());
	var answer = encodeURIComponent($("#answer").val());
	if($("#usercode").length>0){
	    var usercode = $("#usercode").val();}
	if($("#verify").length>0){
		var verify = $("#verify").val();}
	else{var verify ="0";}
	$.ajax({
		   type: "post", 
		   async: false, 
		   url : "reg.php?reg=submit",
		   dataType: "html",
		   data: 'username='+username+'&passwd='+passwd+'&passwdy='+passwdy+'&email='+email+'&question='+question+'&answer='+answer+'&verify='+verify+'&usercode='+usercode,
		   timeout: 100000,
		   success: function(data){
			   if(data==10){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，用户名包含系统不允许的字符</span>';}
			   else if(data==1){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，请将信息填写完整</span>';}
			   else if(data==2){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，用户名长度不符合要求</span>';}
			   else if(data==3){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，用户名已被占用</span>';}
			   else if(data==4){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，密码长度不符合要求</span>';}
               else if(data==5){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，二次输入的密码不同</span>';}
			   else if(data==6){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，请输入正确的邮箱地址</span>';}
			   else if(data==7){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，验证码错误</span>';}
			   else if(data==11){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，邮箱验证码不存在</span>';}
			   else if(data==12){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，邮箱验证码不正确</span>';}
               else if(data==8){
				   document.getElementById("waring").innerHTML = '<span style="color:#00FF00">* 注册成功</span>';
				   window.location.href = "user.php?action=basic";
				   return false;}
			   else if(data==9){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 注册成功,请等待审核</span>';
				   window.location.href = "index.php";
				   return false;}
			   else{
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 出错了！请重试或联系管理员</span>';}
           }
    });
}
function postjs(str,str1,str2){
	$("#posts").attr('disabled',true);
	var theme = encodeURIComponent($("#theme").val());
	var content = encodeURIComponent($("#content").val());
	var bduser = encodeURIComponent($("#bduser").val());
	var remind = "0";
	var namexs = $('input[name=namexs]:checked').val();
	if($("#remind").attr("checked")==true && namexs!="0"){
	    remind = "1";}
	var file = $("#file").val();
	var fsjrs=file.split("|");
	var fsjrss = fsjrs.length;
	var fsj = $("#fsj").val();
	$("#fsj").attr('id','fsjs');
	for (var i=1;i<fsjrss;i++) {
		fsj = fsj+"|"+$("#fsj").val();
		$("#fsj").attr('id','fsjs');}	
	var jflx = $("#jflx").val();
	$("#jflx").attr('id','jflxs');
	for (var i=1;i<fsjrss;i++) {
		jflx = jflx+"|"+$("#jflx").val();
		$("#jflx").attr('id','jflxs');}
	if($("#verify").length>0){
	    var verify = $("#verify").val();
	    var verifyopen ="1";	
	}
	else{
		var verify ="0";
		var verifyopen ="0";
	}
	$.ajax({
		   type: "post", 
		   async: false,
		   url : "post.php?action="+str+"&belong="+str1+'&bid='+str2,
		   dataType: "html",
		   data: 'theme='+theme+'&content='+content+'&bduser='+bduser+'&file='+file+'&namexs='+namexs+'&verify='+verify+'&verifyopen='+verifyopen+'&remind='+remind+'&fsj='+fsj+'&jflx='+jflx,
		   timeout: 30000,
		   success: function(data){
			   if(data==11){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，您目前被禁止在本吧发贴</span>';}
			   else if(data==1){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，您发布的文章含有系统禁止的内容</span>';}
			   else if(data==2){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，您的主题长度不符合系统要求</span>';}
			   else if(data==3){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，您的内容长度不符合系统要求</span>';}
			   else if(data==4){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，验证码错误</span>';}
               else if(data==5){
				   document.getElementById("waring").innerHTML = '<span style="color:#00FF00">* 回贴发布成功</span>';
				   window.location.href = "read.php?id="+str1+"&go=goend";
				   return false;}
			   else if(data==6){
				   document.getElementById("waring").innerHTML = '<span style="color:#00FF00">* 主题发布成功</span>';
				   window.location.href = "?list="+str2;
				   return false;}
			   else if(data==7){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 回贴发布成功，审核后显示</span>';
				   window.location.href = "error.php?id=10&last=read.php?id="+str1;
				   return false;}
			   else if(data==8){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 主题发布成功，审核后显示</span>';
				   window.location.href = "error.php?id=10&last=/?list="+str2;
				   return false;}
			   else if(data==9){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，请不要连续发重复贴</span>';}
			   else if(data==10){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，您的文章中不包含有意义的文字</span>';}
			   else if(data==12){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，目前不允许游客发布含有超链接的贴子</span>';}
			   else if(data==13){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 您的发贴速度过快，请您休息一下再试，如仍存在问题请与管理员联系</span>';}
			   else{
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 出错了！请重试或联系管理员</span>';}
			   var n = $("#fsjs").length;
	           for (var i=0;i<n;i++) {
		           $("#fsjs").attr('id','fsj');}
			   $("#posts").attr('disabled',false);
           }
    });
}
function votejs(str){
	var theme = encodeURIComponent($("#theme").val());
	var content = encodeURIComponent($("#content").val());
	var type = $("#type").val();
	var state = $("#state").val();
	var qita = $("#qita").val();
	var zdhf = $("#zdhf").val();
	var url = 'theme='+theme+'&content='+content+'&type='+type+'&state='+state+'&num='+$("#optionnum").val()+'&qita='+qita+'&zdhf='+zdhf;
	var i=1;
	var option=new Array(); 
    for (i=1;i<=$("#optionnum").val();i++)
	{
	  option[i] = encodeURIComponent($("#option"+i).val());
	  url = url+"&option"+i+"="+option[i] 
	}
	$.ajax({
		   type: "post",
		   async: false,  
		   url : "vote.php?action=submit&bid="+str,
		   dataType: "html",
		   data: url,
		   timeout: 30000,
		   success: function(data){
			   if(data==6){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，选项至少填写2项</span>';}
			   else if(data==1){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，您发布的文章含有系统禁止的内容</span>';}
			   else if(data==2){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，您的主题长度不符合系统要求</span>';}
			   else if(data==3){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，您的内容长度不符合系统要求</span>';}
			   else if(data==11){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，您目前被禁止在本吧发贴</span>';}
			   else if(data==4){
				   document.getElementById("waring").innerHTML = '<span style="color:#00FF00">* 投票发布成功</span>';
				   window.location.href = "?list="+str;
				   return false;}
			   else if(data==5){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 投票发布成功，审核后显示</span>';
				   window.location.href = "error.php?id=10&last=?list="+str;
				   return false;}
			   else{
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 出错了！请重试或联系管理员</span>';}
           }
    });
}
function votejss(str,str1,str2){
	var qita='';
	if(str2!=2){
		var votec=Number($("#votec").val())-1;
		if(str1==0){
	  		var option = $('input[name="options"]:checked').val();
	  		optionrs=$('input[name="options"]:checked').val();
	  	}
		else{
        	var option='';
			var optionrs='';
        	$('input[name="options"]:checked').each(function(){
		    if(option=='')
                option+=$(this).val();
		    else
			    option+='|'+$(this).val();
			optionrs=$(this).val();
        	});
    	}
		if(str2==1 && optionrs==votec){
	  		sAlert('请输入相关内容：<br><textarea id="contentqt" name="contentqt" cols="45" rows="3"></textarea><input type=hidden value="'+option+'" id="option" name="option"><br><div id="tishi"></div><br><input type="button" onclick="votejss('+str+','+str1+',2)"  value="确认投票" />');
	  		return false;
		}
	}
	else{
		option=$("#option").val();
		qita=encodeURIComponent($("#contentqt").val());
		if(qita==""){
			document.getElementById("tishi").innerHTML = '<span style="color:#FF0000">* 对不起，内容不能为空</span>';
			return false;
		}
	}
	$.ajax({
		   type: "post",
		   async: false,  
		   url : "vote.php?action=vote&bid="+str,
		   dataType: "html",
		   data: 'option='+option+'&qita='+qita,
		   timeout: 30000,
		   success: function(data){
			   if(data==4){
				   document.getElementById("warings").innerHTML = '<span style="color:#FF0000">* 对不起，请选择选项</span>';}
			   else if(data==1){
				   document.getElementById("warings").innerHTML = '<span style="color:#FF0000">* 对不起，本投票限制为登陆投票</span>';}
			   else if(data==2){
				   document.getElementById("warings").innerHTML = '<span style="color:#FF0000">* 对不起，您已成功投票</span>';}
			   else if(data==3){
				   document.getElementById("warings").innerHTML = '<span style="color:#00FF00">* 投票成功</span>';
				   window.location.href = "read.php?id="+str;}
			   else{
				   document.getElementById("warings").innerHTML = '<span style="color:#FF0000">* 出错了！请重试或联系管理员</span>';}
           }
    });
}
function userjs(){
	var passwd = $("#passwd").val();
	var picture = encodeURIComponent($("#picture").val());
	var sex = $("#sex").val();
	var qq = $("#qq").val();
	var idYear = $("#idYear").val();
	var idMonth = $("#idMonth").val();
	var idDay = $("#idDay").val();
	var zodiac = $("#zodiac").val();
	var school = $("#school").val();
	var age = $("#age").val();
    var provs = encodeURIComponent($("#provs").val());
    var citys = encodeURIComponent($("#citys").val());
	var email = $("#email").val();
	var blood = $("#blood").val();
	var constellation = $("#constellation").val();
	var profession = $("#profession").val();
	var istyle = $("#istyle").val();
	var userfriendp = $("#userfriendp").val();
	var autoremind = $("#autoremind").val();
	var emailxy = $("#emailxy").val();
	var qqxy = $("#qqxy").val();
	var signature = encodeURIComponent($("#signature").val());
	var introduction = encodeURIComponent($("#introduction").val());
	$.ajax({
		   type: "post", 
		   async: false, 
		   url : "user.php?action=basicsubmit",
		   dataType: "html",
		   data: 'passwd='+passwd+'&picture='+picture+'&sex='+sex+'&qq='+qq+'&idYear='+idYear+'&idMonth='+idMonth+'&idDay='+idDay+'&zodiac='+zodiac+'&school='+school+'&age='+age+'&provs='+provs+'&citys='+citys+'&email='+email+'&blood='+blood+'&constellation='+constellation+'&profession='+profession+'&istyle='+istyle+'&userfriendp='+userfriendp+'&autoremind='+autoremind+'&signature='+signature+'&introduction='+introduction+'&emailxy='+emailxy+'&qqxy='+qqxy,
		   timeout: 30000,
		   success: function(data){
			   if(data==3){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，密码错误</span>';}
			   else if(data==1){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，个性签名长度超过限制</span>';}
			   else if(data==4){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，请输入正确QQ号</span>';}
			   else if(data==2){
				   document.getElementById("waring").innerHTML = '<span style="color:#00FF00">* 操作成功</span>';
				   window.location.href = "user.php?action=basic";
				   return false;}
			   else{
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 出错了！请重试或联系管理员</span>';}
           }
    });
}
function usersjs(){
	var passwd = $("#passwd").val();
	var mobile = $("#mobile").val();
	var answer = encodeURIComponent($("#answer").val());
	var new_passwd = $("#new_passwd").val();
	var new_passwdy = $("#new_passwdy").val();
	var new_safemail = $("#new_safemail").val();
	var new_question = encodeURIComponent($("#new_question").val());
	var new_answer = encodeURIComponent($("#new_answer").val());
	$.ajax({
		   type: "post", 
		   async: false, 
		   url : "user.php?action=safetysubmit",
		   dataType: "html",
		   data: 'passwd='+passwd+'&answer='+answer+'&new_passwd='+new_passwd+'&new_passwdy='+new_passwdy+'&new_safemail='+new_safemail+'&new_question='+new_question+'&new_answer='+new_answer+'&mobile='+mobile,
		   timeout: 30000,
		   success: function(data){
			   if(data==6){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，密码错误</span>';}
			   else if(data==1){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，密保答案错误</span>';}
			   else if(data==2){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，密码长度不符合系统要求</span>';}
			   else if(data==3){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，两次输入的密码不相同</span>';}
			   else if(data==4){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，请输入正确邮箱</span>';}
			   else if(data==7){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，请输入正确手机号码</span>';}
			   else if(data==5){
				   document.getElementById("waring").innerHTML = '<span style="color:#00FF00">* 操作成功</span>';
				   window.location.href = "user.php?action=safety";
				   return false;}
			   else{
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 出错了！请重试或联系管理员</span>';}
           }
    });
}
function qdtj(){
	var qdtb = encodeURIComponent($("#qdtb").val());
	var qdss = encodeURIComponent($("#qdss").val());
	$.ajax({
		   type: "post", 
		   async: false, 
		   url : "user.php?action=qiandao",
		   dataType: "html",
		   data: 'qdtb='+qdtb+'&qdss='+qdss,
		   timeout: 30000,
		   success: function(data){
			   if(data==3){
				   document.getElementById("qdxz").style.display = 'block';
				   document.getElementById("qdxz").innerHTML = '<span style="color:#FF0000">* 内容不符合要求或未填写</span>';}
			   else if(data==2){
				   document.getElementById("qdxz").style.display = 'block';
				   document.getElementById("qdxz").innerHTML = '<span style="color:#FF0000">* 内容请不要超过140字</span>';}
			   else if(data==1){
				   document.getElementById("qdxz").style.display = 'block';
				   document.getElementById("qdxz").innerHTML = '<span style="color:#00FF00">* 签到成功</span>';
				   window.location.href = "index.php";
				   return false;}
			   else{
				   document.getElementById("qdxz").style.display = 'block';
				   document.getElementById("qdxz").innerHTML = '<span style="color:#FF0000">* 出错了！请重试或联系管理员</span>';}
           }
    });
}
function cvmtoi(){
	$("#cvmtoi").attr('disabled',true);
	var cvmoney = encodeURIComponent($("#cvmoney").val());
	$.ajax({
		   type: "post", 
		   async: false, 
		   url : "user.php?action=cvmtoi",
		   dataType: "html",
		   data: 'cvmoney='+cvmoney,
		   timeout: 30000,
		   success: function(data){
			   if(data==1){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 您的余额不足</span><br />&nbsp;';}
			   else if(data==2){
				   document.getElementById("waring").innerHTML = '<span style="color:#00FF00">* 兑换成功</span><br />&nbsp;';
				   window.location.href = "user.php?action=integral";
				   return false;}
			   else{
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 出错了！请重试或联系管理员</span><br />&nbsp;';}
			   $("#cvmtoi").attr('disabled',false);
           }
    });
}
function cvitom(){
	$("#cvitom").attr('disabled',true);
	var cvint = encodeURIComponent($("#cvint").val());
	$.ajax({
		   type: "post", 
		   async: false, 
		   url : "user.php?action=cvitom",
		   dataType: "html",
		   data: 'cvint='+cvint,
		   timeout: 30000,
		   success: function(data){
			   if(data==1){
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 您的余额不足</span><br />&nbsp;';}
			   else if(data==2){
				   document.getElementById("waring").innerHTML = '<span style="color:#00FF00">* 兑换成功</span><br />&nbsp;';
				   window.location.href = "user.php?action=integral";
				   return false;}
			   else{
				   document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 出错了！请重试或联系管理员</span><br />&nbsp;';}
			   $("#cvitom").attr('disabled',false);
           }
    });
}
function w_addurl(str){
    if(str==1)
	{
        sAlert('网站名称：<input id="addname" type="text" class="box1" size="18" value="" /><br>网站网址：<input id="addurl" type="text" class="box1" size="18" value="" /><br>网站顺序：<input id="addqueue" type="text" class="box1" size="18" value="" /><div style="height:25px; line-height:25px;">顺序中请填写数字，排序由小到大。</div><div id="tishi"></div><br><input type="button" onclick="w_addurl(2)" value="新增" />');
 		return false;
	}
	else
	{
		var addname = encodeURIComponent($("#addname").val());
		var addurl = encodeURIComponent($("#addurl").val());
		var addqueue = $("#addqueue").val();
		$.ajax({
			   type: "post", 
	           async: false, 
		       url : "index_u.php?action=adddo",
		       dataType: "html",
		       data: 'addname='+addname+'&addurl='+addurl+'&addqueue='+addqueue,
		       timeout: 30000,
		       success: function(data){
			       if(data==2){
				       document.getElementById("tishi").innerHTML = '<span style="color:#FF0000">* 内容不符合要求或未填写</span>';}
			       else if(data==1){
				       document.getElementById("tishi").innerHTML = '<span style="color:#00FF00">* 新增成功</span>';
				       window.location.href = "index_u.php?action=edit";
				       return false;}
			       else{
				       document.getElementById("tishi").innerHTML = '<span style="color:#FF0000">* 出错了！请重试或联系管理员</span>';}
               }
         });
	}
}
function w_editurl(id,str,name,url,queue){
    if(str==1)
	{
        sAlert('网站名称：<input id="editname" type="text" class="box1" size="18" value="'+name+'" /><br>网站网址：<input id="editurl" type="text" class="box1" size="18" value="'+url+'" /><br>网站顺序：<input id="editqueue" type="text" class="box1" size="18" value="'+queue+'" /><div style="height:25px; line-height:25px;">顺序中请填写数字，排序由小到大。</div><div id="tishis"></div><br><input type="button" onclick="w_editurl('+id+',2)" value="编辑" />');
 		return false;
	}
	else
	{
		var editname = encodeURIComponent($("#editname").val());
		var editurl = encodeURIComponent($("#editurl").val());
		var editqueue = $("#editqueue").val();
		$.ajax({
			   type: "post", 
	           async: false, 
		       url : "index_u.php?action=editdo",
		       dataType: "html",
		       data: 'editname='+editname+'&editurl='+editurl+'&editqueue='+editqueue+'&id='+id,
		       timeout: 30000,
		       success: function(data){
			       if(data==2){
				       document.getElementById("tishis").innerHTML = '<span style="color:#FF0000">* 内容不符合要求或未填写</span>';}
			       else if(data==1){
				       document.getElementById("tishis").innerHTML = '<span style="color:#00FF00">* 编辑成功</span>';
				       window.location.href = "index_u.php?action=edit";
				       return false;}
			       else{
				       document.getElementById("tishis").innerHTML = '<span style="color:#FF0000">* 出错了！请重试或联系管理员</span>';}
               }
         });
	}
}
function w_delurl(id){
	$.ajax({
		type: "post", 
		async: false, 
		url : "index_u.php?action=deldo",
		dataType: "html",
		data: 'id='+id,
		timeout: 30000,
		success: function(data){
			window.location.href = "index_u.php?action=edit";
			return false;
		}
	});
}