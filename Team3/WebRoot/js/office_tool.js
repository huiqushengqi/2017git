<!-- 计算窗帘公式主程序 -->
function IsDigit(cCheck)
{
 return ((('0'<=cCheck) && (cCheck<='9'))||cCheck=='.');
 }
function CheckNum(charValue,alertValue,obj)
{
	for(var iIndex=0;iIndex<charValue.length;iIndex++)
	{
		var cCheck=charValue.charAt(iIndex);
		if(!IsDigit(cCheck))
		{
		alert(alertValue);
		obj.focus();
		return false;
		}
	}
}



//窗帘计算器．
function window_cloth(form)
{
 //检查输入
 if(checkclothInput(form)==false) return;
 var window_width=0,window_height=0,clothnum=0,clothwidth=0;
 //给各个变量赋值
 window_width=form.window_width.value;
 window_height=form.window_height.value;
 clothwidth=form.clothwidth.value;
 //开始计算
//窗帘所需布料（米）= [ （窗户宽+0.15米×2）×2] ÷ 布宽×（0.15米+窗户高+0.5米+0.2米）
clothnum=((parseFloat(window_width)+parseFloat(0.15*2))*2)/clothwidth*(parseFloat(0.15)+parseFloat(window_height)+parseFloat(0.5)+parseFloat(0.2))
form.clothnum.value=Math.round(clothnum);
}
function  checkclothInput(form)
{
	if(form.window_height.value==""){
		alert("请输入窗户高度");
		form.window_height.focus();
		return false;
		}

	if(CheckNum(form.window_height.value,"窗户高度只能输入数字格式！",form.window_height)==false)
	return false;

	if(form.window_width.value==""){
		alert("请输入窗户宽度");
		form.window_width.focus();
		return false;
		}
	if(CheckNum(form.window_width.value,"窗户宽度只能输入数字格式！",form.window_width)==false)
	return false;

	if(form.clothwidth.value==""){
		alert("请输入布料宽度");
		form.clothwidth.focus();
		return false;
		}
	if(CheckNum(form.clothwidth.value,"布料宽度只能输入数字格式！",form.clothwidth)==false)
	return false;
}



//墙纸计算器．
function wall_paper(form)
{
 //检查输入
 if(checkwallpaperInput(form)==false) return;
 var room_long=0,room_width=0,room_height=0,wallpaperpm=0;
 var wallpapernum=0;
 var rate=1.1;
 //给各个变量赋值
 room_long=form.room_long.value;
 room_width=form.room_width.value;
 room_height=form.room_height.value;
// alert("room_width="+room_width);
 wallpaperpm=form.wallpaperpm.value;
 //开始计算
// 壁纸用量(卷)＝房间周长×房间高度×1.1÷每卷平米数
wallpapernum=Math.round(((parseFloat(room_long)+parseFloat(room_width))*2*room_height*rate)/wallpaperpm );
//alert((parseFloat(room_long)+parseFloat(room_width))*2*room_height);
form.wallpapernum.value=wallpapernum;

 
}
function  checkwallpaperInput(form)
{
	if(form.room_long.value==""){
		alert("请输入房间长度");
		form.room_long.focus();
		return false;
		}
	if(CheckNum(form.room_long.value,"房间长度只能输入数字格式！",form.room_long)==false)
	return false;

	if(form.room_width.value==""){
		alert("请输入房间宽度");
		form.room_width.focus();
		return false;
		}
	if(CheckNum(form.room_width.value,"房间宽度只能输入数字格式！",form.room_width)==false)
	return false;

	if(form.room_height.value==""){
		alert("请输入房间高度");
		form.room_height.focus();
		return false;
		}
	if(CheckNum(form.room_height.value,"房间高度只能输入数字格式！",form.room_height)==false)
	return false;
	if(form.wallpaperpm.value==""){
		alert("请输入每卷壁纸的平米数");
		form.wallpaperpm.focus();
		return false;
		}
	if(CheckNum(form.wallpaperpm.value,"壁纸的平米数只能输入数字格式！",form.wallpaperpm)==false)
	return false;
}

//-->

//涂料计算器
function wall_paint(form)
{
 //检查输入
 if(checkpaintInput(form)==false) return;
 var room_long=0,room_width=0,room_height=0,door_height=0,door_width=0,door_num=0;
 var window_height=0,window_width=0,window_num=0;
 var paintnum=0;
 var rate=0;
 //给各个变量赋值
 room_long=form.room_long.value;
 room_width=form.room_width.value;
 room_height=form.room_height.value;
 
 door_height=form.door_height.value;
 door_width=form.door_width.value;
 door_num=form.door_num.value;
 
 window_height=form.window_height.value;
 window_width=form.window_width.value;
 window_num=form.window_num.value;
 rate=form.paint.value;
 //开始计算
 paintnum=(parseFloat(room_long)+parseFloat(room_width))*2*room_height+parseFloat(room_long*room_width);
 paintnum=paintnum-parseFloat(window_height*window_width*window_num);
 paintnum=paintnum-parseFloat(door_height*door_width*door_num);
 var actnum=(Math.round(paintnum/rate*100))/100;
// if(paintnum%rate!=0)
 //{
 //paintnum=(paintnum/rate+0.5);
 //}
 //paintnum=Math.round(paintnum);
 form.wallpaint_num.value=actnum;
 //form.buypaintnum.value=paintnum
}
function checkpaintInput(form)
{
	if(form.room_long.value==""){
		alert("请输入房间长度");
		form.room_long.focus();
		return false;
		}
	if(CheckNum(form.room_long.value,"房间长度只能输入数字格式！",form.room_long)==false)
	return false;

	if(form.room_width.value==""){
		alert("请输入房间宽度");
	    form.room_width.focus();
		return false;
		}
	if(CheckNum(form.room_width.value,"房间宽度只能输入数字格式！",form.room_width)==false)
	return false;

	if(form.room_height.value==""){
		alert("请输入房间高度");
		form.room_height.focus();
		return false;
		}
	if(CheckNum(form.room_height.value,"房间高度只能输入数字格式！",form.room_height)==false)
	return false;

	if(form.door_height.value==""){
		alert("请输入房门高度");
		form.door_height.focus();
		return false;
		}
	if(CheckNum(form.door_height.value,"房门高度只能输入数字格式！",form.door_height)==false)
	return false;

	if(form.door_width.value==""){
		alert("请输入房门宽度");
		form.door_width.focus();
		return;
		}
	if(CheckNum(form.door_width.value,"房门宽度只能输入数字格式！",form.door_width)==false)
	return false;

	if(form.door_num.value==""){
		alert("请输入房门扇数");
		form.door_num.focus();
		return false;
		}

	if(CheckNum(form.door_num.value,"房门扇数只能输入数字格式！",form.door_num)==false)
	return false;
	
	if(form.window_height.value==""){
	  alert("请输入窗户高度");
	  form.window_height.focus();
	   return false
		}
	if(CheckNum(form.window_height.value,"窗户高度只能输入数字格式！",form.window_height)==false)
	return false;

	if(form.window_width.value==""){
		alert("请输入窗户宽度");
		form.window_width.focus();
		return false;
		}
	if(CheckNum(form.window_width.value,"窗户宽度只能输入数字格式！",form.window_width)==false)
	return false;

	if(form.window_num.value==""){
		alert("请输入窗户扇数");
		form.window_num.focus();
		return false;
		}
	if(CheckNum(form.window_num.value,"窗户扇数只能输入数字格式！",form.window_num)==false)
	return false;
	if(form.paint.value==""){
		alert("请您输入涂料的覆盖率");
		form.paint.focus();
		return false;
		}
	if(CheckNum(form.paint.value,"涂料的覆盖率只能输入数字格式！",form.paint)==false)
	return false;
}




//地砖计算器．
function dizhuan_brick(form)
{
 //检查输入
 if(checkdizhuanbrickInput(form)==false) return;
 var room_long=0,room_width=0,floorbrick_long=0,floorbrick_width=0,yugang_long=0,yugang_width=0;
 var floorbricknum=0;
 var rate=1.05;
 //给各个变量赋值
 room_long=form.room_long.value*1000;
 room_width=form.room_width.value*1000;
 yugang_long=form.yugang_long.value;
 yugang_width=form.yugang_width.value;
 floorbrick_long=form.floorbrick_long.value;
 floorbrick_width=form.floorbrick_width.value;

 //开始计算
// 用砖数量（块数）=（房间的长度÷砖长）×（房间宽度÷砖宽）×1.05
if(form.mianji.checked){
if (form.yugang.value==2){
dizhuan_mj=Math.round(room_long/1000*room_width/1000*rate);
}
else  {
dizhuan_mj=Math.round((room_long/1000*room_width/1000-yugang_long/1000*yugang_width/1000)*rate);
}
form.dzmj.value=dizhuan_mj;}

if(form.shuliang.checked){
if (form.yugang.value==2){
floorbricknum=Math.round((room_long/floorbrick_long)*(room_width/floorbrick_width)*rate);
}
else  {
floorbricknum=Math.round(((room_long/floorbrick_long)*(room_width/floorbrick_width)-(yugang_long/floorbrick_long)*(yugang_width/floorbrick_width))*rate);}
form.floorbricknum.value=floorbricknum;
}

 
 
}
function  checkdizhuanbrickInput(form)
{
	if(form.room_long.value==""){
		alert("请输入房间长度");
		form.room_long.focus();
		return false;
		}
	if(CheckNum(form.room_long.value,"房间长度只能输入数字格式！",form.room_long)==false)
	return false;

	if(form.room_width.value==""){
		alert("请输入房间宽度");
		form.room_width.focus();
		return false;
		}
	if(CheckNum(form.room_width.value,"房间长度只能输入数字格式！",form.room_width)==false)
	return false;

	if(form.floorbrick_long.value==""){
		alert("请输入地砖的长度");
		form.floorbrick_long.focus();
		return false;
		}
	
	if(CheckNum(form.floorbrick_long.value,"地砖的长度只能输入数字格式！",form.floorbrick_long)==false)
	return false;
	if(form.floorbrick_width.value==""){
		alert("请输入地砖的宽度");
		form.floorbrick_width.focus();
		return false;
		}
	if(CheckNum(form.floorbrick_width.value,"地砖的宽度只能输入数字格式！",form.floorbrick_width)==false)
	return false;
	if((form.yugang.value==1)&&((form.yugang_long.value=="")||(form.yugang_width.value==""))){
		alert("您已经选择了有浴缸，但未输入浴缸信息，请重新输入");
		form.yugang_long.focus();
		return false;
		}
   if(CheckNum(form.yugang_long.value,"浴缸的长度只能输入数字格式！",form.yugang_long)==false)
   return false;
   if(CheckNum(form.yugang_width.value,"浴缸的宽度只能输入数字格式！",form.yugang_width)==false)
   return false;
   if(!(form.mianji.checked)&&!(form.shuliang.checked)){
	   alert("请选择需要的结算结果");
	   form.mianji.focus();
	   return false;}
  
}

function autoinput_dz(form)
{
	//alert(form.bricktype.value);
	switch(parseInt(form.brick_long.value))
	{
		case 1:
		     form.floorbrick_long.value=300;
			 form.floorbrick_width.value=300;
		     break;
		case 2:
			 form.floorbrick_long.value=400;
			 form.floorbrick_width.value=400;
		     break;
		case 3:
			 form.floorbrick_long.value=500;
			 form.floorbrick_width.value=500;
		     break;
		case 4:
			 form.floorbrick_long.value=600;
			 form.floorbrick_width.value=600;
	}
}
function autoinput2_dz(form)
{
	//alert(form.bricktype.value);
	switch(parseInt(form.yugang.value))
	{
		case 1:
		     form.yugang_long.value=1500;
			 form.yugang_width.value=750;
		     break;
		case 2:
			 form.yugang_long.value="";
			 form.yugang_width.value="";
   	}
}


//面砖计算器．
function wall_brick(form)
{
 //检查输入
 if(checkInput(form)==false) return;
 var room_long=0,room_width=0,room_height=0,door_height=0,door_width=0,door_num=0,yugang_long=0,yugang_high=0;
 var window_height=0,window_width=0,window_num=0,brick_long=0,brick_width=0;
 var bricknum=0;
 var rate=1.06;
 //给各个变量赋值
 room_long=form.room_long.value*1000;
 room_width=form.room_width.value*1000;
 room_height=form.room_height.value*1000;

 yugang_long=form.yugang_long.value;
 yugang_high=form.yugang_high.value;
 
 door_height=form.door_height.value*1000;
 door_width=form.door_width.value*1000;
 door_num=form.door_num.value;
 
 window_height=form.window_height.value*1000;
 window_width=form.window_width.value*1000;
 window_num=form.window_num.value;
 
 brick_long=form.brick_long.value;
 brick_width=form.brick_width.value;
 
 //开始计算
 //用砖数量（块数）=[（房间的长度÷砖长）×（房间高度÷砖宽）×2+ 
 //（房间的宽度÷砖长）×（房间高度÷砖宽）×2—（窗户的长度÷砖长）×
 //（窗户的宽度÷砖宽）×个数—（门的长度÷砖长）×（门的宽度÷砖宽）×个数]×1.05
 bricknum=(room_long/brick_long)*(room_height/brick_width)*2;
 bricknum= parseFloat(bricknum)+parseFloat((room_width/brick_long)*(room_height/brick_width) *2);
 bricknum=parseFloat(bricknum)- parseFloat((window_height/brick_long)*(window_width/brick_width)*window_num);
 bricknum=parseFloat(bricknum)-parseFloat((door_height/brick_long)*(door_width/brick_width)*door_num);
if(form.shuliang.checked){
if (form.yugang.value==2){ 
 bricknum=Math.round(bricknum*1.06);}
else {
yugangnum=(yugang_long/brick_long)*(yugang_high/brick_width);
bricknum=Math.round((bricknum-yugangnum)*1.06);
}
 form.wallbricknum.value=bricknum;
} 
if (form.mianji.checked){
 if (form.yugang.value==2){  
 room_long=room_long/1000;
 room_height=room_height/1000;
 room_width=room_width/1000;
 window_height=window_height/1000;
 window_width=window_width/1000;
 door_width=door_width/1000;
 door_height=door_height/1000;
mzmj=Math.round((room_long*room_height*2+room_width*room_height*2-window_height*window_width*window_num-door_height*door_width*door_num)*1.06);   
   }
 else { 
 room_long=room_long/1000;
 room_height=room_height/1000;
 room_width=room_width/1000;
 window_height=window_height/1000;
 window_width=window_width/1000;
 door_width=door_width/1000;
 door_height=door_height/1000; mzmj=Math.round((room_long*room_height*2+room_width*room_height*2-window_height*window_width*window_num-door_height*door_width*door_num-yugang_long/1000*yugang_high/1000)*1.06); 
  }
   form.mzmj.value=mzmj;
 }
 }
function checkInput(wallbrickfrm)
{
	if(wallbrickfrm.room_long.value==""){
		alert("请输入房间长度");
		wallbrickfrm.room_long.focus();
		return false;
		}
	if(CheckNum(wallbrickfrm.room_long.value,"房间长度只能输入数字格式！",wallbrickfrm.room_long)==false)
	return false;

	if(wallbrickfrm.room_width.value==""){
		alert("请输入房间宽度");
		wallbrickfrm.room_width.focus();
		return false;
		}
	if(CheckNum(wallbrickfrm.room_width.value,"房间宽度只能输入数字格式！",wallbrickfrm.room_width)==false)
	return false;
	if(wallbrickfrm.room_height.value==""){
		alert("请输入房间高度");
		wallbrickfrm.room_height.focus();
		return false;
		}
	if(CheckNum(wallbrickfrm.room_height.value,"房间高度只能输入数字格式！",wallbrickfrm.room_height)==false)
	return false;
	if(wallbrickfrm.door_height.value==""){
		alert("请输入房门高度");
		wallbrickfrm.door_height.focus();
		return false;
		}
	if(CheckNum(wallbrickfrm.door_height.value,"房门高度只能输入数字格式！",wallbrickfrm.door_height)==false)
	return false;
	if(wallbrickfrm.door_width.value==""){
		alert("请输入房门宽度");
		wallbrickfrm.door_width.focus();
		return false;
		}
	if(CheckNum(wallbrickfrm.door_width.value,"房门宽度只能输入数字格式！",wallbrickfrm.door_width)==false)
	return false;

	if(wallbrickfrm.door_num.value==""){
		alert("请输入房门扇数");
		wallbrickfrm.door_num.focus();
		return false;
		}
	if(CheckNum(wallbrickfrm.door_num.value,"房门扇数只能输入数字格式！",wallbrickfrm.door_num)==false)
	return false;
		
	if(wallbrickfrm.window_height.value==""){
		alert("请输入窗户高度");
		wallbrickfrm.window_height.focus();
		return false;
		}
	if(CheckNum(wallbrickfrm.window_height.value,"窗户高度只能输入数字格式！",wallbrickfrm.window_height)==false)
	return false;
	if(wallbrickfrm.window_width.value==""){
		alert("请输入窗户宽度");
		wallbrickfrm.window_width.focus();
		return false;
		}
	if(CheckNum(wallbrickfrm.window_width.value,"窗户宽度只能输入数字格式！",wallbrickfrm.window_width)==false)
	return false;
	if(wallbrickfrm.window_num.value==""){
		alert("请输入窗户扇数");
		wallbrickfrm.window_num.focus();
		return false;
		}
	if(CheckNum(wallbrickfrm.window_num.value,"窗户扇数只能输入数字格式！",wallbrickfrm.window_num)==false)
	return false;
		
	if(wallbrickfrm.brick_long.value==""){
		alert("请输入墙砖长度");
		wallbrickfrm.brick_long.focus();
		return false;
		}
	if(CheckNum(wallbrickfrm.brick_long.value,"墙砖长度只能输入数字格式！",wallbrickfrm.brick_long)==false)
	return false;
	if(wallbrickfrm.brick_width.value==""){
		alert("请输入墙砖宽度");
		wallbrickfrm.brick_width.focus();
		return false;
		}
	if(CheckNum(wallbrickfrm.brick_width.value,"墙砖宽度只能输入数字格式！",wallbrickfrm.brick_width)==false)
	return false;
	if((wallbrickfrm.yugang.value==1)&&((wallbrickfrm.yugang_long.value=="")||(wallbrickfrm.yugang_high.value==""))){
		alert("您已经选择了有浴缸裙边，但未输入浴缸信息，请重新输入");
		wallbrickfrm.yugang_long.focus();
		return false;
		}
   if(CheckNum(wallbrickfrm.yugang_long.value,"浴缸的长度只能输入数字格式！",wallbrickfrm.yugang_width)==false)
   return false;
   if(CheckNum(wallbrickfrm.yugang_high.value,"浴缸的高度只能输入数字格式！",wallbrickfrm.yugang_width)==false)
   return false;
   if(!(wallbrickfrm.mianji.checked)&&!(wallbrickfrm.shuliang.checked)){
	   alert("请选择需要的结算结果");
	   wallbrickfrm.mianji.focus();
	   return false;}
}
function autoinput_mz(form)
{
	//alert(form.bricktype.value);
	switch(parseInt(form.bricktype.value))
	{
		case 0:
		     form.brick_long.value=200;
			 form.brick_width.value=200;
			 break;
		case 1:
		     form.brick_long.value=300;
			 form.brick_width.value=300;
		     break;
		case 2:
			 form.brick_long.value=400;
			 form.brick_width.value=400;
		     break;
		case 3:
			 form.brick_long.value=500;
			 form.brick_width.value=500;
		     break;
		case 4:
			 form.brick_long.value=600;
			 form.brick_width.value=600;
			 break;
		case 5:
			 form.brick_long.value=300;
			 form.brick_width.value=200;
			 break;
		case 6:
			 form.brick_long.value=250;
			 form.brick_width.value=330;
			 break;
		case 7:
			 form.brick_long.value=300;
			 form.brick_width.value=450;
			
	}
}
function autoinput2_mz(form)
{
	//alert(form.bricktype.value);
	switch(parseInt(form.yugang.value))
	{
		case 1:
		     form.yugang_long.value=1500;
			 form.yugang_high.value=500;
		     break;
		case 2:
			 form.yugang_long.value="";
			 form.yugang_high.value="";
   	}
}

//地板.
function floor_brick(form) 

{
 if(checkfloorbrickInput(form)==false) return;
 var room_long=0,room_width=0,floorbrick_long=0,floorbrick_width=0;
 var floornum=0;
 var rate=0;
 room_long=form.room_long.value*1000;
 room_width=form.room_width.value*1000;
 floor_long=form.floor_long.value;
 floor_width=form.floor_width.value;
 rate=form.rate.value;
 floornum=Math.round((room_long/floor_long)*(room_width/floor_width)*rate);
 floormj=Math.round(room_long/1000*room_width/1000*rate);
if(form.mianji.checked){
 form.floormj.value=floormj;}
if(form.shuliang.checked){
 form.floornum.value=floornum;}

}
function  checkfloorbrickInput(form)
{
	
	if(form.room_long.value==""){
		alert("请输入房间长度");
		form.room_long.focus();
		return false;
		}
	if(CheckNum(form.room_long.value,"房间长度只能输入数字格式！",form.room_long)==false)
	return false;


	if(form.room_width.value==""){
		alert("请输入房间宽度");
		form.room_width.focus();
		return false;
		}
	if(CheckNum(form.room_width.value,"房间宽度只能输入数字格式！",form.room_width)==false)
	return false;

	if(form.floor_long.value==""){
		alert("请输入地板的长度");
		form.floor_long.focus();
		return false;
		}
	if(CheckNum(form.floor_long.value,"地板长度只能输入数字格式！",form.floor_long)==false)
	return false;

	if(form.floor_width.value==""){
		alert("请输入地板的宽度");
		form.floor_width.focus();
		return false;
		}
	if(CheckNum(form.floor_long.value,"地板的宽度只能输入数字格式！",form.floor_long)==false)
	return false;
	if(!(form.mianji.checked)&&!(form.shuliang.checked)){
	   alert("请选择需要的结算结果");
	   form.mianji.focus();
	   return false;}

}
function autoinput_db(form)
{
switch(parseInt(form.bricktype.value))
	{
		case 1:
		     form.floor_long.value=600;
			 form.floor_width.value=90;
		     break;
		case 2:
			 form.floor_long.value=750;
			 form.floor_width.value=90;
		     break;
		case 3:
			 form.floor_long.value=900;
			 form.floor_width.value=90;
			 break;
		case 4:
			 form.floor_long.value=910;
			 form.floor_width.value=90;
		     break;
		case 5:
			 form.floor_long.value=1285;
			 form.floor_width.value=192;
		
	}
}