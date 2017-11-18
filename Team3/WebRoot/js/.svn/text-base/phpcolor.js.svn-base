function sendcode()
{
  var img=document.getElementById("img");
  img.src="verify.php?d=" + Math.round(Math.random()*47842); //产生0-47842之间的随机整数
}
function ToggleNode(node)
{
  nodeObject = document.getElementById(node);
  if (nodeObject.style.display == '' || nodeObject.style.display == 'block')
  {
    nodeObject.style.display = 'none';
  }
  else
  {
    nodeObject.style.display = 'block';
  }
}
function cface(face)
{
  var content=document.getElementById("content").value+"[img]images/face/"+face+"[/img]";
  document.getElementById("content").value=content;
}
function detection_am()
{
  var email=document.getElementById("email").value;
  var rs=/^[_\.0-9a-z-]+@([0-9a-z][0-9a-z-]+\.)+[a-z]{2,3}$/;
  if(email=="" || document.getElementById("reason").value=="")
  {
    document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，请将信息填写完整</span>';
    return false;
  }
  else if(!rs.test(email))
  {
    document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 对不起，请填入正确邮箱</span>';
	return false;
  }
  else
  {
	 return true;
  }
}
function detection_beb()
{
  if(getlength(document.getElementById("usernc").value)>10 || getlength(document.getElementById("usernc").value)==0)
  {
    document.getElementById("waring").innerHTML = '<span style="color:#FF0000">* 本吧会员昵称不能为空或多于5个汉字</span>';
    return false;
  }
  else
  {
	 return true;
  }
}
function detection_ce()
{
  if(document.getElementById("verify"))
  {
	if(getCookie("auth")!=document.getElementById("verify").value)
	{
	  document.getElementById("waring").innerHTML = '<span style="color:#FF0000">对不起，验证码错误</span>';
	  return false;
    }
  }
  if(document.getElementById("present").value=="")
  {
     document.getElementById("waring").innerHTML = '<span style="color:#FF0000">对不起，请将信息填写完整</span>';
	 return false;
  }
  else
  {
	 return true;
  }
}
function detection_lw()
{
  if($("#username").val()=="")
  {
     document.getElementById("waring").innerHTML = '<span style="color:#FF0000">对不起，请将信息填写完整</span>';
	 return false;
  }
  else
  {
	 return true;
  }
}
function getlength(str){
	var len=str.length;
	var relen=0;
	for(var i=0;i<len;i++){
		if(str.charCodeAt(i)<27||str.charCodeAt(i)>126){
			relen+=2
		}else{
			relen++;
		}
	}
	return relen;
}
function setCaretAtEnd(lou){  
    window.location.hash="post";
	var content="回复"+lou+"楼："+document.getElementById("content").value;
    document.getElementById("content").value=content;
} 
function share(){
    document.getElementById("fenxiang").style.height=document.body.scrollHeight+"px";
	document.getElementById("fenxiang1").style.top=(document.body.scrollTop+200)+"px";
	document.getElementById("fenxiang1").style.left=(document.body.clientWidth/2-150)+"px";
	document.getElementById("fenxiang").style.display="block";
	document.getElementById("fenxiang1").style.display="block";
}
function sharec(){
	document.getElementById("fenxiang").style.display="none";
	document.getElementById("fenxiang1").style.display="none";
}
function indext(){
    document.getElementById("indext").style.height=document.body.scrollHeight+"px";
	document.getElementById("indext1").style.top=(document.body.scrollTop+200)+"px";
	document.getElementById("indext1").style.left=(document.body.clientWidth/2-150)+"px";
	document.getElementById("indext").style.display="block";
	document.getElementById("indext1").style.display="block";
}
function indextc(){
	document.getElementById("indext").style.display="none";
	document.getElementById("indext1").style.display="none";
}
function divshow(type){
	var text="视频";
	if(type=="img"){
		var text="图片";}
	else if(type=="wmv"){
		var text="音乐";}
	else if(type=="face"){
	    var text="表情";}
	else if(type=="quote"){
	    var text="引用";}
	var divshow = document.createElement("DIV");
	divshow.id = "divcover";
	divshow.style.top = "0px";
	divshow.style.height=document.body.scrollHeight+"px";
	var divshow1 = document.createElement("DIV");
	divshow1.id = "divcreate";
	divshow1.style.top=(document.body.scrollTop+200)+"px";
	divshow1.style.left=(document.body.clientWidth/2-150)+"px"
	if(type=="face"){
	    var strHtml="<div style='background:#EFF8FC; height:20px; width:100%; text-align:right;'><a href='JavaScript:' onClick='divclose()'>[关闭]</a>&nbsp;</div><div id='divcreate1' style='padding:5px;'>";
	    for(var i=1;i<=24;i++){
	        strHtml+="<div style='float:left; width:48px; height:45px;'><a href='JavaScript:' onclick='cface(\""+i+".gif\")'><img src='images/face/"+i+".gif' width='40' height='40' style='border:0px;'/></a></div>";}
	    strHtml+="</div>";
	    divshow1.innerHTML=strHtml;}
	else if(type=="quote"){
	    divshow1.innerHTML="<div style='background:#EFF8FC; height:20px; width:100%; text-align:right;'><a href='JavaScript:' onClick='divclose()'>[关闭]</a>&nbsp;</div><div id='divcreate1' style='padding:5px;'><br>请输入要插入的引用：<br><textarea id='createpf' name='createpf' class='box1' cols='40' rows='3'></textarea><br><br><input type='button' onclick='c"+type+"()'  value='插入"+text+"' /></div>";}
	else if(type=="img"){
	    divshow1.innerHTML="<div style='background:#EFF8FC; height:20px; width:100%; text-align:right;'><a href='JavaScript:' onClick='divclose()'>[关闭]</a>&nbsp;</div><div id='divcreate1' style='padding:5px;'><br>"+text+"链接：<input id='createpf' name='createpf' type='text' class='box1' size='40' value='http://' /><br><br><input type='button' onclick='c"+type+"()'  value='插入"+text+"' /><br><br>如需上传本地图片请直接以附件上传，发贴后系统将自动显示</div>";}
	else{
	    divshow1.innerHTML="<div style='background:#EFF8FC; height:20px; width:100%; text-align:right;'><a href='JavaScript:' onClick='divclose()'>[关闭]</a>&nbsp;</div><div id='divcreate1' style='padding:5px;'><br>"+text+"链接：<input id='createpf' name='createpf' type='text' class='box1' size='40' value='http://' /><br><br><input type='button' onclick='c"+type+"()'  value='插入"+text+"' /></div>";}
	document.body.appendChild(divshow);
	document.body.appendChild(divshow1);
}
function divshowfile(){
	var divshow = document.createElement("DIV");
	divshow.id = "divcover";
	divshow.style.top = "0px";
	divshow.style.height=document.body.scrollHeight+"px";
	var divshow1 = document.createElement("DIV");
	divshow1.id = "divcreate";
	divshow1.style.top=(document.body.scrollTop+200)+"px";
	divshow1.style.left=(document.body.clientWidth/2-150)+"px"
    divshow1.innerHTML="<div style='background:#EFF8FC; height:20px; width:100%; text-align:right;'><a href='JavaScript:' onClick='divclose()'>[关闭]</a>&nbsp;</div><div id='divcreate1' style='padding:5px;'><br>链接：<input id='createpf' name='createpf' type='text' class='box1' size='40' value='http://' /><br><br><input type='button' onclick='c'  value='插入' /></div>";
	document.body.appendChild(divshow);
	document.body.appendChild(divshow1);
}
function divclose(){
	document.body.removeChild(divcover);
    document.body.removeChild(divcreate);
}
function qd(e){
	var s=document.getElementById("qiandao");
	if(s)
	{
	  document.body.removeChild(qiandao);
	}
	var qd = document.createElement("DIV");
	qd.id = "qiandao";
	qd.style.position="absolute";
	qd.style.top=e.clientY+"px";
    qd.style.left=Number(e.clientX-220)+"px";
	qd.style.width="220px";
	qd.style.height="310px";
	qd.style.borderColor="#DCE1E7";
	qd.style.borderWidth="1px";
	qd.style.borderStyle="solid";
	qd.style.zIndex="5";
	qd.style.background="#FFFFFF";
	var strHtml="<div style='background:#EFF8FC; height:20px; width:100%; text-align:right;'><a href='JavaScript:' onClick='qdclose()'>[关闭]</a>&nbsp;</div><div id='divcreate1' style='padding:5px;'>";
	for(var i=1;i<=16;i++){
	  strHtml+="<div style='float:left; width:48px; height:45px;'><a href='JavaScript:' onclick='qdbq("+i+")'><img id='tu"+i+"' src='images/space/qiandao/"+i+".gif' width='40' height='40' style='border:0px;'/></a></div>";}
	strHtml+="<div><textarea name='qdss' id='qdss' cols='23' rows='3'></textarea></div><div id='qdxz' style='color:#FF0000;'>请选择签到表情</div><div id='qdfb' style='display:none'><a href='JavaScript:' onclick='qdtj()'><img src='images/space/fabu.gif' style='border:none;' /></a></div><input type=hidden value='' id='qdtb' name='qdtb'></div>";
	qd.innerHTML=strHtml;
	document.body.appendChild(qd);
}
function qdbq(e)
{
  for(var i=1;i<=16;i++){
    document.getElementById("tu"+i).style.border = '0px';
  }
  document.getElementById("qdtb").value=e;
  document.getElementById("tu"+e).style.border = '#C5D8E8 1px solid';
  document.getElementById("qdxz").style.display = 'none';
  document.getElementById("qdfb").style.display = 'block';
}
function qdclose(){
	document.body.removeChild(qiandao);
}
function AddText(faceBtn) {
  var txt=faceBtn;
  obj = document.getElementById('content');
  selection = document.selection;
  obj.focus();
  if(typeof(obj.selectionStart)!='undefined')
  {
    obj.value = obj.value.substr(0, obj.selectionStart) + txt + obj.value.substr(obj.selectionEnd);
  }
  else if(selection && selection.createRange)
  {
    var sel = selection.createRange();
    sel.text = txt;
    sel.moveStart('character', -txt.length);
  }
  else
  {
    obj.value += txt;
  }
}
function cimg()
{
    var str="[img]"+$("#createpf").val()+"[/img]";
  	divclose();
	AddText(str);
}
function cflash()
{
    var str="[swf]"+$("#createpf").val()+"[/swf]";
  	divclose();
    AddText(str);
}
function cwmv()
{
    var str="[wmv]"+$("#createpf").val()+"[/wmv]";
  	divclose();
    AddText(str);
}
function cquote()
{
    var str="\n[quote]"+$("#createpf").val()+"[/quote]\n";
  	divclose();
    AddText(str);
}
function sAlert(txt){
	var divshow = document.createElement("DIV");
	divshow.id = "divcover";
	divshow.style.top = "0px";
	divshow.style.height=document.body.scrollHeight+"px";
	if (document.body.clientHeight>document.body.scrollHeight){
	    divshow.style.height=document.body.clientHeight+"px";}
	var divshow1 = document.createElement("DIV");
	divshow1.id = "divcreate";
	divshow1.style.top=(document.body.scrollTop+200)+"px";
	divshow1.style.left=(document.body.clientWidth/2-150)+"px"
	divshow1.innerHTML="<div style='background:#EFF8FC; height:20px; width:100%; text-align:right;'><a href='JavaScript:' onClick='divclose()'>[关闭]</a>&nbsp;</div><div id='divcreate1' style='padding:5px; text-align:center;'>"+txt+"</div>";
	document.body.appendChild(divshow);
	document.body.appendChild(divshow1);
}
function addoption()
{
  document.getElementById("optionnum").value=Number(document.getElementById("optionnum").value)+1; 
  document.getElementById("optiondiv").innerHTML = document.getElementById("optiondiv").innerHTML+'<div class="applyl">&nbsp;</div><div><input id="option'+document.getElementById("optionnum").value+'" name="option'+document.getElementById("optionnum").value+'" type="text" class="box1" size="60" /></div>';
}
function cvi()
{
  var i=Number(document.getElementById("cvmoney").value/document.getElementById("cvim").innerHTML*document.getElementById("cvii").innerHTML);
  i=parseInt(i); 
  document.getElementById("cviis").innerHTML = i;
}
function cvm()
{
  var i=Number(document.getElementById("cvint").value/document.getElementById("cvmi").innerHTML*document.getElementById("cvmm").innerHTML);
  i=parseInt(i); 
  document.getElementById("cvmms").innerHTML = i;
}
function insertAtCursor(myField, myValue)
{
myValue="[attach]"+myValue+"[/attach]";
//IE support
if (document.selection) {
myField.focus();
sel = document.selection.createRange();
sel.text = myValue;
sel.select();
}
//MOZILLA/NETSCAPE support 
else if (myField.selectionStart || myField.selectionStart == '0') {
var startPos = myField.selectionStart;
var endPos = myField.selectionEnd;
// save scrollTop before insert www.keleyi.com
var restoreTop = myField.scrollTop;
myField.value = myField.value.substring(0, startPos) + myValue + myField.value.substring(endPos, myField.value.length);
if (restoreTop > 0) {
myField.scrollTop = restoreTop;
}
myField.focus();
myField.selectionStart = startPos + myValue.length;
myField.selectionEnd = startPos + myValue.length;
} else {
myField.value += myValue;
myField.focus();
}
}