
<%@page import="com.yc.po.UserInfoPO"%>
<%@page import="com.yc.po.TypeInfoPO"%>
<%@page import="com.yc.biz.impl.TypeInfoBizImpl"%>
<%@page import="com.yc.biz.ITypeInfoBiz"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	//判断用户是否 已登录 
	UserInfoPO user= (UserInfoPO)session.getAttribute("user");
	 
	ITypeInfoBiz  biz = new TypeInfoBizImpl();
	List<TypeInfoPO> typeList = biz.findAll();//查看所有团购类型信息
	//将其循环加载到页面上 
 %>
<div id="headTop">
        	<ul class="headTopUl clearfix">
                <li class="headTopUser">
                	<ul class="headTopList clearfix">
                		<li class="headRelat listmore">
                			<em class="moreico">woico</em>
                			<a class="Gray7" href="#">更多</a>
                			<b class="triangleT">triangle</b>
                			<ul class="ulbox linkmorbox">
                                <li>
                                	<a href="#">手机版下载</a>
                                </li>
                                <li>
                                	<a id="addEmailBtn" href="#">邮件订阅</a>
                                </li>
                                <li>
                                	<a href="#">收藏本站</a>
                                </li>
                            </ul>
                			<b class="bh whiteBor">遮盖</b>
                		</li>
                        <li class="headRelat listsec">
                            <a class="Gray7" href="#">关注</a>
                            <b class="triangleT">triangle</b>
                            <ul class="ulbox linkBoxsec">
                                <li>
                                	<a class="wowo-sina" href="#" target="_blank" title="窝窝团新浪微博">窝窝团新浪微博</a>
                                </li>
                                <li>
                                	<a class="wowo-qq" href="#" target="_blank" title="窝窝团腾讯微博">窝窝团腾讯微博</a>
                                </li>
                                <li>
                                	<a class="wowo-sina" href="#" title="窝窝团新浪客服微博" target="_blank">窝窝团新浪客服微博</a>
                                </li>
                            </ul>
                            <b class="bh whiteBor">遮盖</b>
                        </li>
                        <li class="headRelat headline">
                        	<em class="l-ico"></em>
                        </li>
                        <li class="headRelat list">
                        	<em class="woico">woico</em>
                        	<a class="Gray7" rel="nofollow" href="#">我的窝窝</a>
                        	<b class="triangleT">triangle</b>
                        	<ul class="ulbox linkBox">
                                <li>
                                	<a rel="nofollow" href="#">我的订单</a>
                                </li>
                                <li>
                                	<a rel="nofollow" href="#">我的收藏</a>
                                </li>
                                <li>
                                	<a rel="nofollow" href="#">我的积分</a>
                                </li>
                                <li>
                                	<a rel="nofollow" href="#">我的评价</a>
                                </li>
                                <li>
                                	<a rel="nofollow" href="#">帐号设置</a>
                                </li>
                                <li>
                                	<a rel="nofollow" href="#">账户余额</a>
                                </li>
                                <li>
                                	<a rel="nofollow" href="#">代金券</a>
                                </li>
                                <li>
                                	<a rel="nofollow" href="#">消息中心</a>
                                </li>
                            </ul>
                        	<b class="bh whiteBor">遮盖</b>
                        </li>
                    </ul>
                </li>
                <li class="headTopLogin">
                	<span class="Gray7">
                       	<%if(null==user){
                       	%>
                       	 您好！请 [<a class="yellowd1" rel="nofollow" href="login.jsp" target="_self">登录</a>]
                        <b class="borderdc">|</b>
                        [<a class="yellowd1" rel="nofollow" href="reg.jsp" target="_self">注册</a>]
                       	<%
                       	 
                       	}else{
                       	%>
                       	您好，<%=user.getUname() %>
                       	 [<a class="yellowd1" rel="nofollow" href="doUser.jsp?op=loginOut" target="_self">安全退出</a>]
                       	<%
                       	}
                       	
                       	 %>
                       
                        <b class="borderdc p_0_10">|</b>
                	</span>
                    <ul class="clearfix">
                    	<li id="msgCount" class="headTopUlist no">
                    		<em class="messico">messico</em>
                    		<a class="Gray7" rel="nofollow" href="#">消息</a>
                    	</li>
                    	<b class="borderdc p_1_10">|</b>
                    </ul>
                	<a id="integration" href="#">
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
                    【<a class="Gray5a" href="#" gae="city_list">切换城市</a>】
                    </span>
                	<span id="show_city" class="cityTs">
                        <b class="triangbor">三角</b>
                        <a id="ipClose" class="closeTs" href="#">关闭</a>
                        您是不是在
                        <em id="ipcityname" class="bluec4">衡阳</em>
                        ？点击可选择其他城市
                	</span>
                </li>
				<li class="searchLi ">
					<div class="searchlf">
						<span class="tri"></span>
                        <div class="hd">
                            <a class="on deal" href="#">团购</a>
                            <a class="shoper" href="#">商家</a>
                        </div>
					</div>
					<form id="soso_form" method="get" action="">
						<input class="searchTxt" type="text" autocomplete="off" maxlength="140" name="w" value="请输入商品名、地址">
						<a id="soso_submit" class="searchBtn" href="#">搜索</a>
						<input id="sg_from" type="hidden" name="sg_from" value="1">
						<input id="searchType" type="hidden" name="searchType" value="0">
					</form>
                    <div class="hotkey" style="display:block" data-title="data_T">
                        <a target="_self" href="#">月饼</a>
                        <a class="on" target="_self" href="#">KTV</a>
                        <a target="_self" href="#">蛋糕</a>
                        <a target="_self" href="#">希朵曼</a>
                        <a target="_self" href="#">万达</a>
                        <a target="_self" href="#">水上乐园</a>
                    </div>
                    <div class="hotkey" data-title="data_S" style="display: none;">
                        <a target="_self" href="#">月饼</a>
                        <a class="on" target="_self" href="#">KTV</a>
                        <a target="_self" href="#">蛋糕</a>
                        <a target="_self" href="#">希朵曼</a>
                        <a target="_self" href="#">万达</a>
                        <a target="_self" href="#">水上乐园</a>
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
                	<a href="#">团购精选</a>
                </li>
                <li date-nav="shangcheng">
                	<a href="#">窝窝商城</a>
                </li>
                <li class="zIndex2" date-nav="shenbian">
                	<a href="#">身边</a>
                </li>
                
                <%for(TypeInfoPO type:typeList){ %>
                <li date-nav="shop">
                	<a href="#"><%=type.getTname() %></a>
                </li>
                 <%} %>
            </ul>
           
        </div>

