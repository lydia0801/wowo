<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<title>用户登录|窝窝团</title>
        <link rel="stylesheet" href="css/basic.css" />
        <script type="text/javascript" src="js/jquery-1.11.3.js"></script>
        <script type="text/javascript">
        	$(function(){
        		$("#userLogin").click(function(){
        			$("#loginform").submit();
        		});
        	
        	});
        
        </script>
	</head>

	<body>
    	<div>
    		<jsp:include page="head.jsp"></jsp:include>
    	</div>
        <div class="ucenter clearfix">
            <div class="uc-box clearfix">
            	<div class="title_main"> 用户登录 </div>
            	<div id="loginbox" class="ucon">
            		<div class="msgerror">
                        <p><span id="login_msg" class="error"></span></p>
            		</div>
                    <form id="loginform" class="formbox" action="doUser.jsp?op=login" method="post" name="form1" style="display: block">
                        <input type="hidden" value="" name="callbackparam">
                        <input type="hidden" value="" name="service">
                        <input id="url" type="hidden" value="" name="url">
                        <input id="source" type="hidden" value="1" name="source">
                        <table class="log-reg-table" width="620" cellspacing="0" cellpadding="0" border="0">
                            <tbody>
                                <tr>
                                    <td width="160" align="right">登录名：</td>
                                    <td>
                                        <input class="int-type w-fir grey" type="text" name="email" value="手机号/邮箱/用户名" tips="手机号/邮箱/用户名" rule="">
                                    </td>
                                </tr>
                                <tr>
                                    <td width="160" align="right">密  码：</td>
                                    <td>
                                        <input class="int-type w-fir" type="password" name="password" tips="密码" value="" status="error">
                                    </td>
                                </tr>
                                <tr>
                                    <td width="160" align="right">验证码：</td>
                                    <td>
                                        <input id="logsafecode" class="int-type w-sec" type="text" name="safecode_id" tips="验证码" maxlength="4">
                                        <img id="safecodeloginimg" class="pic" width="100" height="30" src="images/safecodelogin.jpg">
                                        <a id="safecodeloginlink" class="tips" href="#">看不清？换一张</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td> </td>
                                    <td>
                                        <a id="userLogin" class="ubg bigtn redbig" gae="click_login_normal_login" href="javascript:void(0)">登录</a>
                                        <a class="tips" href="#" gae="click_user-login/password">忘记密码？</a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </form>
            	</div>
            	<div class="uside">
            		<div class="side-top nonebor">
            			<p class="tit">还不是窝窝团用户?</p>
            			<a class="ubg bigtn secbig" href="reg.html" gae="click_user-login/register">注册新用户</a>
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
