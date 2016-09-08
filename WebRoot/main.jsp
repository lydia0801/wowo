<%@page import="com.yc.vo.TuanInfoVO"%>
<%@page import="com.yc.biz.impl.TuanInfoBizImpl"%>
<%@page import="com.yc.biz.ITuanInfoBiz"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	ITuanInfoBiz  biz = new TuanInfoBizImpl();
	List<TuanInfoVO>  tuanList = biz.findByTrem(null, null, null);//查询所有 

 %>
<div id="wowoFocus" class="focuswowo">
			<ul style="height: 540px; top: -90px;">
                <li>
                    <a target="_blank" href="#">
                    	<img class="lazyload" width="960" height="90" original="images/ggs1.jpg" src="images/ggs1.jpg" visibility="hidden">
                    </a>
                </li>
                <li>
                    <a target="_blank" href="#">
                    	<img width="960" height="90" src="images/ggs2.jpg">
                    </a>
                </li>
                <li>
                	<a target="_blank" href="#">
                    	<img class="lazyload" width="960" height="90" original="images/ggs3.jpg" src="images/ggs3.jpg" visibility="hidden">
                    </a>
                </li>
                <li>
                	<a target="_blank" href="#">
                    	<img class="lazyload" width="960" height="90" original="images/ggs4.jpg" src="images/ggs4.jpg" visibility="hidden">
                    </a>
                </li>
                <li>
                    <a target="_blank" href="#">
                        <img class="lazyload" width="960" height="90" original="images/ggs5.jpg" src="images/ggs5.jpg" visibility="hidden">
                    </a>
                </li>
                <li>
                	<a target="_blank" href="#">
                    	<img class="lazyload" width="960" height="90" original="images/ggs1.jpg" src="images/ggs1.jpg" visibility="hidden">
                    </a>
                </li>
            </ul>
		</div>
        <div class="con-boxIndex clearfix">
			<ul class="goods-allInd clearfix">
			<%for(TuanInfoVO vo:tuanList){ %>
				<li class="good-list">
					<h2 class="good-title">
						<a class="biaoa" title="<%=vo.getDes() %>" target="_blank" href="#">
							<strong><%=vo.getGname() %></strong>
							 <%=vo.getDes() %>
						</a>
					</h2>
					<div class="index-smalllogo">
						<a class="yuy" target="_blank" href="#">免预约</a>
					</div>
					<a class="picture" target="_blank" href="#">
						<img width="348" height="232" rel="nofollow" src="<%=vo.getPic()%>">
					</a>
					<div class="buy-boxInd clearfix">
						<a class="bh buy_a" rel="nofollow" href="doTuan.jsp?op=detail&tid=<%=vo.getTid() %>" target="_self" status="0">去看看</a>
						<span class="num">¥<%=vo.getAct() %></span>
						<span class="past">价值 ¥<%=vo.getPrice() %></span>
					</div>
				</li>
            <%} %>
			</ul>
			<div class="con-boxrig">
				<div class="pub-rigwrap">
                    <a rel="nofollow" target="_blank" href="#">
                        <img class="baozhangimg" width="218" height="120" src="images/baozhang.png">
                    </a>
				</div>
                <a href="#" gae="AD_ALL-SY-RT-00000003-0-82" target="_blank">
                    <img class="right_ggimg" width="218" height="120" src="images/ggs_index.gif">
                </a>
                <div class="pub-rigwrap">
                    <a rel="nofollow" target="_blank" href="#">
                        <img class="baozhangimg" width="218" height="120" src="images/pic1.jpg">
                    </a>
				</div>
                <div class="pub-rigwrap">
                    <a rel="nofollow" target="_blank" href="#">
                        <img class="baozhangimg" width="218" height="120" src="images/pic2.jpg">
                    </a>
				</div>
                <div class="pub-rigwrap">
                    <a rel="nofollow" target="_blank" href="#">
                        <img class="baozhangimg" width="218" height="120" src="images/pic3.jpg">
                    </a>
				</div>
			</div>
		</div>
        <dl id="FriendLink">
            <dt class="hd">
                <ul class="tit">
                    <li class="titlist">
                    	<a class="aBtn" href="#">热门城市</a>
                    </li>
                    <li class="titlist">
                    	<a class="aBtn" href="#">友情链接</a>
                    </li>
                </ul>
            </dt>
            <dd class="bd">
                <ul class="linkbox" style="display: block;">
                    <li class="linkList">
                    	<a class="aLink" href="#" target="_blank">湘潭团购</a>
                    </li>
                    <li class="linkList">
                    	<a class="aLink" href="#" target="_blank">常德团购</a>
                    </li>
                    <li class="linkList">
                    	<a class="aLink" href="#" target="_blank">株洲团购</a>
                    </li>
                    <li class="linkList">
                    	<a class="aLink" href="#" target="_blank">衡阳团购</a>
                    </li>
                    <li class="linkList">
                    	<a class="aLink" href="#" target="_blank">长沙团购</a>
                    </li>
				</ul>
				<ul class="linkbox" style="display: none;">
                    <li class="linkList">
                    	<a class="aLink" href="#" target="_blank">衡阳招聘</a>
                    </li>
                    <li class="linkList">
                    	<a class="aLink" href="#" target="_blank">衡阳租房</a>
                    </li>
                    <li class="linkList">
                    	<a class="aLink" href="#" target="_blank">衡阳旅游线路</a>
                    </li>
                    <li class="linkList">
                    	<a class="aLink" href="#" target="_blank">衡阳团购</a>
                    </li>
                    <li class="linkList">
                    	<a class="aLink" href="#" target="_blank">衡阳天气</a>
                    </li>
                </ul>
            </dd>
        </dl>