<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'reg.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/basic.css" />
	<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
	<script type="text/javascript" src="js/ajax.js"></script>
	<script type="text/javascript">
	$(function(){
		$("#username").blur(function(){
			checkUserNameRequest();
		});
		$("#tel").blur(function(){
			checkTelRequest();
		});
	
	});
		function reg(){
			$("#registererform").submit();
		}
		//检查邮箱
	 function checkEmailRequest(){
		 createXMLHttpRequest();
		 xmlHttp.onreadystatechange=function(){
		 	 if(xmlHttp.readyState ==4){
	     		if(xmlHttp.status ==200){//服务器响应正常
	     		 	var data =xmlHttp.responseText;
	     		 	$("#regemail_msg").html(data);
	     		 	$("#regemail_msg").css("color","red");
	     		}
	     	}
		 
		 };  //状态发生改变时调用handleStateChange
		 var value= $("#regemail").val();
		 xmlHttp.open("POST", "doUser.jsp?op=checkEmail&email="+value, true);
		 xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		 xmlHttp.send(null);
		 
	 }
	
	//检查用户名是否可用	
	function checkUserNameRequest(){
		 createXMLHttpRequest();
		 xmlHttp.onreadystatechange=function(){
		 	 if(xmlHttp.readyState ==4){
	     		if(xmlHttp.status ==200){//服务器响应正常
	     		 	var data =xmlHttp.responseText;
	     		 	$("#username_msg").html(data);
	     		 	$("#username_msg").css("color","red");
	     		}
	     	}
		 
		 };  //状态发生改变时调用handleStateChange
		 var value= $("#username").val();
		 xmlHttp.open("POST", "doUser.jsp?op=checkUserName&username="+value, true);
		 xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		 xmlHttp.send(null);
		 
	 }
	 
	 //检查电话号码是否可用
	 function checkTelRequest(){
		 createXMLHttpRequest();
		 xmlHttp.onreadystatechange=function(){
		 	 if(xmlHttp.readyState ==4){
	     		if(xmlHttp.status ==200){//服务器响应正常
	     		 	var data =xmlHttp.responseText;
	     		 	$("#tel_msg").html(data);
	     		 	$("#tel_msg").css("color","red");
	     		}
	     	}
		 
		 };  //状态发生改变时调用handleStateChange
		 var value= $("#tel").val();
		 xmlHttp.open("POST", "doUser.jsp?op=checkTel&tel="+value, true);
		 xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		 xmlHttp.send(null);
		 
	 }
	
	
	
	
	</script>
  </head>
  
 <body>
    	<div id="headTop">
        	<ul class="headTopUl clearfix">
                <li class="headTopUser">
                	<ul class="headTopList clearfix">
                		<li class="headRelat listmore">
                			<em class="moreico">woico</em>
                			<a class="Gray7" href="#" gae="click_my_55tuan">更多</a>
                			<b class="triangleT">triangle</b>
                			<ul class="ulbox linkmorbox">
                                <li>
                                	<a href="#" gae="click_mobile_top">手机版下载</a>
                                </li>
                                <li>
                                	<a id="addEmailBtn" href="#" gae="sub/Email">邮件订阅</a>
                                </li>
                                <li>
                                	<a href="#" onclick="AddFavorite(window.location,document.title)" gae="click_addfavorite">收藏本站</a>
                                </li>
                            </ul>
                			<b class="bh whiteBor">遮盖</b>
                		</li>
                        <li class="headRelat listsec">
                            <a class="Gray7" href="javascript:;" gae="click_my_55tuan">关注</a>
                            <b class="triangleT">triangle</b>
                            <ul class="ulbox linkBoxsec">
                                <li>
                                	<a class="wowo-sina" href="#" gae="weibo/r" target="_blank" title="窝窝团新浪微博">窝窝团新浪微博</a>
                                </li>
                                <li>
                                	<a class="wowo-qq" href="#" gae="qqwb/r" target="_blank" title="窝窝团腾讯微博">窝窝团腾讯微博</a>
                                </li>
                                <li>
                                	<a class="wowo-sina" href="#" gae="weibosinakf/r" title="窝窝团新浪客服微博" target="_blank">窝窝团新浪客服微博</a>
                                </li>
                            </ul>
                            <b class="bh whiteBor">遮盖</b>
                        </li>
                        <li class="headRelat headline">
                        	<em class="l-ico"></em>
                        </li>
                        <li class="headRelat list">
                        	<em class="woico">woico</em>
                        	<a class="Gray7" rel="nofollow" href="#" gae="click_my_55tuan">我的窝窝</a>
                        	<b class="triangleT">triangle</b>
                        	<ul class="ulbox linkBox">
                                <li>
                                	<a rel="nofollow" href="#" gae="click_my_orders">我的订单</a>
                                </li>
                                <li>
                                	<a rel="nofollow" href="#" gae="click_my_like">我的收藏</a>
                                </li>
                                <li>
                                	<a rel="nofollow" href="#" gae="click_my_score">我的积分</a>
                                </li>
                                <li>
                                	<a rel="nofollow" href="#" gae="click_my_comment">我的评价</a>
                                </li>
                                <li>
                                	<a rel="nofollow" href="#" gae="click_my_account">帐号设置</a>
                                </li>
                                <li>
                                	<a rel="nofollow" href="#" gae="click_my_balance">账户余额</a>
                                </li>
                                <li>
                                	<a rel="nofollow" href="#" gae="click_my_vouchers">代金券</a>
                                </li>
                                <li>
                                	<a rel="nofollow" href="#" gae="click_my_notifybox">消息中心</a>
                                </li>
                            </ul>
                        	<b class="bh whiteBor">遮盖</b>
                        </li>
                    </ul>
                </li>
                <li class="headTopLogin">
                	<span class="Gray7">
                        您好！请 [<a class="yellowd1" rel="nofollow" gae="click_toplogin" href="login.html">登录</a>]
                        <b class="borderdc">|</b>
                        [<a class="yellowd1" rel="nofollow" gae="click_topregister" href="reg.html">注册</a>]
                        <b class="borderdc p_0_10">|</b>
                	</span>
                    <ul class="clearfix">
                    	<li id="msgCount" class="headTopUlist no">
                    		<em class="messico">messico</em>
                    		<a class="Gray7" rel="nofollow" href="#">消息</a>
                    	</li>
                    	<b class="borderdc p_1_10">|</b>
                    </ul>
                	<a id="integration" gae="click_topsignin" href="#">
                		<em></em>
                		领积分抵钱
                	</a>
                </li>
            </ul>
        </div>
        <div id="headMin">
        	<ul class="headConul clearfix">
				<li class="logoLi">
					<a gae="click_logo" href="#">
						<h1 class="bh logo">窝窝团</h1>
					</a>
				</li>
				<li class="wowoTitLi">
                    <a gae="click_slogan" href="#">
                        <h2 class="bh wowoTit">精挑细选</h2>
                    </a>
				</li>
                <li class="cityBox">
                	<h2 id="cityname" class="cityName">衡阳</h2>
                    <span class="cityLink">
                    【<a class="Gray5a" href="http://www.55tuan.com/city_list.html" gae="city_list">切换城市</a>】
                    </span>
                	<span id="show_city" class="cityTs">
                        <b class="triangbor">三角</b>
                        <a id="ipClose" class="closeTs" href="javascript:;">关闭</a>
                        您是不是在
                        <em id="ipcityname" class="bluec4">衡阳</em>
                        ？点击可选择其他城市
                	</span>
                </li>
				<li class="searchLi ">
					<div class="searchlf">
						<span class="tri"></span>
                        <div class="hd">
                            <a class="on deal" href="javascript:;">团购</a>
                            <a class="shoper" href="javascript:;">商家</a>
                        </div>
					</div>
					<form id="soso_form" method="get" action="">
						<input class="searchTxt" type="text" autocomplete="off" maxlength="140" name="w" value="请输入商品名、地址">
						<a id="soso_submit" class="searchBtn" href="#">搜索</a>
						<input id="sg_from" type="hidden" name="sg_from" value="1">
						<input id="searchType" type="hidden" name="searchType" value="0">
					</form>
                    <div class="hotkey" style="display:block" data-title="data_T">
                        <a target="_self" gae="click_search_top-月饼" href="#">月饼</a>
                        <a class="on" target="_self" gae="click_search_top-KTV" href="#">KTV</a>
                        <a target="_self" gae="click_search_top-蛋糕" href="#">蛋糕</a>
                        <a target="_self" gae="click_search_top-希朵曼" href="#">希朵曼</a>
                        <a target="_self" gae="click_search_top-万达" href="#">万达</a>
                        <a target="_self" gae="click_search_top-水上乐园" href="#">水上乐园</a>
                    </div>
                    <div class="hotkey" data-title="data_S" style="display: none;">
                        <a target="_self" gae="click_search_top-月饼" href="#">月饼</a>
                        <a class="on" target="_self" gae="click_search_top-KTV" href="#">KTV</a>
                        <a target="_self" gae="click_search_top-蛋糕" href="#">蛋糕</a>
                        <a target="_self" gae="click_search_top-希朵曼" href="#">希朵曼</a>
                        <a target="_self" gae="click_search_top-万达" href="#">万达</a>
                        <a target="_self" gae="click_search_top-水上乐园" href="#">水上乐园</a>
                    </div>
                    <div class="searchBox">
                    	<p class="searchTip">最近搜索过 </p>
                    	<ul class="clearfix"> </ul>


                    </div>
				</li>
				<li id="userPointDiv" class="pointnum">
					<b class="triangbor">三角</b>
					<span class="Gray7">
						积分：<strong id="userPointStrong" class="red21"></strong>
					</span>
				</li>
			</ul>
        </div>
        <div id="headNav">
            <ul id="navList" class="navUl clearfix">
                <li class="first_nav" date-nav="index">
                	<a gae="click_channel1_Nav" href="http://hengyang.55tuan.com">团购精选</a>
                </li>
                <li date-nav="shangcheng">
                	<a gae="click_channel10_Nav" href="http://hengyang.55.com">窝窝商城</a>
                </li>
                <li class="zIndex2" date-nav="shenbian">
                	<a gae="click_channel12_Nav" href="http://hengyang.55tuan.com/shenbian/list">身边</a>
                </li>
                <li date-nav="meishi">
                	<a gae="click_channel2_Nav" href="http://hengyang.55tuan.com/meishi">美食</a>
                </li>
                <li date-nav="yule">
                	<a gae="click_channel3_Nav" href="http://hengyang.55tuan.com/yule">娱乐</a>
                </li>
                <li class="zIndex" date-nav="dianying">
                	<a gae="click_channel4_Nav" href="http://hengyang.55tuan.com/dianying/dingzuo">电影</a>
                </li>
                <li date-nav="meirongbaojian">
                	<a gae="click_channel5_Nav" href="http://hengyang.55tuan.com/meirongbaojian">美容保健</a>
                </li>
                <li date-nav="shenghuofuwu">
                	<a gae="click_channel6_Nav" href="http://hengyang.55tuan.com/shenghuofuwu">生活服务</a>
                </li>
                <li date-nav="jiehun">
                	<a gae="click_channel13_Nav" href="http://jiehun.55tuan.com">结婚</a>
                </li>
                <li date-nav="lvyou">
                	<a gae="click_channel7_Nav" href="http://lvyou.55tuan.com">旅行</a>
                </li>
                <li date-nav="jiudian">
                	<a gae="click_channel8_Nav" href="http://jiudian.55tuan.com">酒店</a>
                </li>
                <li date-nav="shangpin">
                	<a gae="click_channel9_Nav" href="http://shangpin.55tuan.com">网购</a>
                </li>
                <li date-nav="shop">
                	<a gae="click_channel11_Nav" href="http://shop.55tuan.com">品牌汇</a>
                </li>
            </ul>
        </div>
        <div class="ucenter clearfix">
            <div class="uc-box clearfix">
            	<div class="title_main">
                    用户注册
                    <ul class="clearfix">
                    <li class="on">邮箱注册</li>
                    </ul>
            	</div>
            	<div id="register" class="ucon">
            		<form id="registererform" class="formbox" style="" action="doUser.jsp?op=register" method="post" name="form1">
                        <input type="hidden" value="" name="signature">
                        <input type="hidden" value="" name="registerTime">
                        <input type="hidden" value="" name="referer">
            			<table class="log-reg-table" width="620" cellspacing="0" cellpadding="0" border="0">
            				<tbody>
            					<tr>
            						<td width="130" align="right">E-mail：</td>
                                    <td width="490">
                                        <div class="toemail">
                                            <div class="intbox" style="position: relative;">
                                                <iframe frameborder="0" style="display: none; height: 250px;">
                                                    <html>
                                                        <head></head>
                                                        <body></body>
                                                    </html>
                                                </iframe>
                                                <input id="regemail" class="int-type w-thir" type="text" autocomplete="off" tips="邮箱地址" name="email" rule="" style="ime-mode: disabled;" onblur="checkEmailRequest()">
                                                <div id="maillist" style="display: none;">
                                                    <h3>请选择邮箱类型</h3>
                                                    <ul>
                                                        <li class="on"></li>
                                                        <li>@qq.com</li>
                                                        <li>@163.com</li>
                                                        <li>@126.com</li>
                                                        <li>@sina.com</li>
                                                        <li>@hotmail.com</li>
                                                        <li>@yahoo.com.cn</li>
                                                        <li>@sohu.com</li>
                                                        <li>@yahoo.cn</li>
                                                        <li>@gmail.com</li>
                                                        <li>@tom.com</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <label id="regemail_msg" class="labelbox"></label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">用户名：</td>
                                    <td>
                                        <div class="intbox">
                                        <input id="username" class="int-type w-thir" type="text" tips="用户名" name="username" rule="">
                                        </div>
                                        <label id="username_msg" class="labelbox seclabel" style="width:240px;"></label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">密码：</td>
                                    <td>
                                        <div class="intbox">
                                        <input id="password" class="int-type w-thir" type="password" tips="密码" name="password" rule="">
                                        </div>
                                        <label id="password_msg" class="labelbox seclabel" style="width:240px"></label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="nopad"></td>
                                    <td class="nopad">
                                        <ul class="ucr-stronger clearfix">
                                            <li>弱</li>
                                            <li>中</li>
                                            <li>强</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">确认密码：</td>
                                    <td>
                                        <div class="intbox">
                                        <input id="reppassword" class="int-type w-thir" type="password" tips="确认密码" name="reppassword" rule="">
                                        </div>
                                        <label id="reppassword_msg" class="labelbox"></label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">联系电话：</td>
                                    <td>
                                        <div class="intbox">
                                        <input id="tel" class="int-type w-thir" type="text" tips="联系电话" name="tel" rule="">
                                        </div>
                                        <label id="tel_msg" class="labelbox seclabel" style="width:240px;"></label>
                                    </td>
                                </tr>
                                <tr>
                                    <input id="addressName" type="hidden" name="addressName" value="湖南 衡阳">
                                    <td align="right">选择城市：</td>
                                    <td style="height:30px;">
                                        <div class="intbox">
                                        <select id="province" class="selmar" name="province" tips="省份" rule="required" status="success">
                                        	<option>湖南</option>
                                        </select>
                                        <select id="city" class="selmar" name="city" tips="城市" rule="required" status="success">
                                        	<option>衡阳</option>
                                        </select>
                                        <select id="district" class="selmar" name="district" tips="地区" rule="required" status="success">
											<option>珠晖区</option>
										</select>
                                        </div>
                                        <label id="city_msg" class="labelbox"></label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">验证码：</td>
                                    <td>
                                        <div class="intbox">
                                            <input id="regsafecode" class="int-type w-sec" type="text" name="regsafecode" tips="验证码" rule="required" codedata="" maxlength="4">
                                            <img id="safecoderegimg" class="pic" width="100" height="30" src="images/safecode.jpg">
                                            <a id="safecodereglink" class="tips" href="javascript:">看不清？换一张</a>
                                        </div>
                                        <label id="regsafecode_msg" class="labelbox"></label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right"> </td>
                                    <td class="checkbox">
                                    <p>
                                        <label>
                                        <input id="argee" class="check" type="checkbox" name="agree" value="1" checked="checked">我已阅读并同意<a class="tips" href="#">《窝窝网站服务条款》</a>
                                        </label>
                                    </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td> </td>
                                    <td>
                                        <a id="button" class="ubg bigtn reggrey redbig" href="javascript:void(0)" onclick="reg()">注册</a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </form>
				</div>
                <div class="uside">
                    <div class="side-top nonebor tologin">
                        <p class="tit">已有窝窝账号?</p>
                        <a class="ubg bigtn secbig hov_on" href="login.html">登录</a>
                    </div>
                    <div class="side-min">
                        <p class="tit">使用合作网站账号登录窝窝团</p>
                        <div class="otherlogin">
                            <a class="weibo" href="#" gae="click_user-login/weibo" alt="新浪微博" target="_blank">新浪微博</a>
                            <a class="zh60" href="#" gae="click_user-login/360" alt="360" target="_blank">360帐号</a>
                            <a class="t800" href="#" gae="click_user-login/tuan800" alt="团800" target="_blank">团800</a>
                            <a class="qq" href="#" gae="click_user-login/QQ" alt="QQ" target="_blank">QQ</a>
                            <a class="baid" href="#" gae="click_user-login/baidu" alt="百度" target="_blank">百度</a>
                            <a class="zfb" href="#" gae="click_user-login/zhifubao" alt="支付宝" target="_blank">支付宝</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="footer">
            <div class="bottom-box clearfix">
                <div class="boul">
                	<ul class="boul-list">
                		<li class="li-x">
                			<h2 class="">用户帮助</h2>
                		</li>
                        <li>
                        	<a class="bolist-a" rel="nofollow" href="#">玩转窝窝</a>
                        </li>
                        <li>
                        	<a class="bolist-a" rel="nofollow" href="#">常见问题</a>
                        </li>
                        <li>
                        	<a class="bolist-a" rel="nofollow" href="#">秒杀规则</a>
                        </li>
                        <li>
                        	<a class="bolist-a" rel="nofollow" href="#">积分规则</a>
                        </li>
                        <li>
                        	<a class="bolist-a" rel="nofollow" href="#">代金券说明</a>
                        </li>
                        <li>
                        	<a class="bolist-a" rel="nofollow" href="#">评价说明</a>
                        </li>
                	</ul>
                	<b class="ico"></b>
                </div>
                <div class="boul">
                    <ul class="boul-list">
                        <li class="li-x">
                        	<h2 class="h2-1">获取更新</h2>
                        </li>
                        <li>
                        	<a class="bolist-a" gae="weibo" href="#" target="_blank">窝窝团新浪微博</a>
                        </li>
                        <li>
                        	<a class="bolist-a" gae="tencentbtm" href="#" target="_blank">窝窝团腾讯微博</a>
                        </li>
                        <li>
                        	<a class="bolist-a" rel="nofollow" gae="click_mobile_bottom" href="#">手机版下载</a>
                        </li>
                    </ul>
                	<b class="ico ico2"></b>
                </div>
                <div class="boul">
                    <ul class="boul-list">
                        <li class="li-x">
                        	<h2 class="h2-2">商务合作</h2>
                        </li>
                        <li>
                        	<a class="bolist-a" rel="nofollow" href="#">商家入驻</a>
                        </li>
                        <li>
                        	<a class="bolist-a" rel="nofollow" href="#">提供团购信息</a>
                        </li>
                        <li>
                        	<a class="bolist-a" rel="nofollow" href="#">友情链接</a>
                        </li>
                        <li>
                        	<a class="bolist-a" rel="nofollow" href="#">开放API </a>
                        </li>
                    </ul>
                    <b class="ico ico3"></b>
                </div>
                <div class="boul">
                    <ul class="boul-list">
                        <li class="li-x">
                        	<h2 class="h2-3">公司信息</h2>
                        </li>
                        <li>
                        	<a class="bolist-a" rel="nofollow" href="#">关于我们</a>
                        </li>
                        <li>
                        	<a class="bolist-a" rel="nofollow" href="#">媒体报道</a>
                        </li>
                        <li>
                        	<a class="bolist-a" rel="nofollow" href="#">加入我们</a>
                        </li>
                        <li>
                        	<a class="bolist-a" rel="nofollow" href="#">隐私声明</a>
                        </li>
                        <li>
                        	<a class="bolist-a" rel="nofollow" href="#">用户协议</a>
                        </li>
                        <li>
                        	<a class="bolist-a" rel="nofollow" href="#">营业执照</a>
                        </li>
                    </ul>
                    <b class="ico ico4"></b>
                </div>
                <div class="kefu">
                	<div class="kefu-bottom">
                		<h2 class="kh2-0 bh">不满意就退款</h2>
                		<h2 class="kh2-1">24小时客服热线</h2>
                		<h2 class="kh2-2 bh">400-105-5555</h2>
                		<a class="bh kfwwweibo" target="_blank" href="#">窝窝团客服微博</a>
                	</div>
                </div>
            </div>
        </div>
        <div class="footer-btm">
			<div class="footer">
				&copy; 2010-2014 55tuan.com 京ICP证100702号 京公海网安备110108000829号&nbsp; 
				<a target="_blank" href="#">营业执照</a>
			</div>
			<div class="footer">名称：北京窝窝团信息技术有限公司&nbsp;&nbsp;&nbsp;&nbsp;地址 ：北京市海淀区上地信息路18号三层3001&nbsp;&nbsp;&nbsp;&nbsp;电话 ：010-59065200</div>
			<div class="footer">营业执照注册号 ：110108011056221&nbsp;&nbsp;&nbsp;&nbsp;食品流通许可证：SP1101081110124921</div>
			<div class="wowofawu">
                <a class="fawu-1" rel="nofollow" href="#">支付宝</a>
                <a class="fawu-3" rel="nofollow" href="#" target="_blank">可信网站</a>
                <a class="fawu-5" rel="nofollow" href="#" target="_blank">经营性网站备案信息</a>
            </div>
        </div>
        <div id="ritfllow" style="position: fixed; top: 180px; left: 1155.5px;">
			<a class="gotopBtn" href="#" style="visibility: visible; height: 38px;">top</a>
			<div class="mobileBtn" style="visibility: hidden;">
				<div class="codeImg">
					<a gae="click_apr_erweima" target="_blank" href="#">
						<img width="116" height="148" src="images/ritcodes0807.png">
					</a>
				</div>
			</div>
			<a class="fee_opin" target="_blank" href="#">意见反馈</a>
		</div>
        <div id="ritCode" style="position: fixed; top: 250px; left: 1155.5px; visibility: visible;">
			<div class="imgbox">
				<a gae="click_apr_erweima" target="_blank" href="#">
					<img width="108" height="183" src="images/ritcodeb.png">
				</a>
				<a class="cCode" href="#">close</a>
			</div>
		</div>
    </body>
</html>