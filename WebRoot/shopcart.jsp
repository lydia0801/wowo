<%@page import="com.yc.po.UserInfoPO"%>
<%@page import="com.yc.vo.CartVO"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>窝窝团</title>
		<link rel="stylesheet" href="css/basic.css" type="text/css" />
		<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
		<script type="text/javascript">
		$(function(){
			$("#orderform table input").blur(function(){
				var total=0;
				var num = $(this).val();
				if(!isNaN(num)){//是一个数字
					var preValue=$(this).parent().parent().prev().children().html();
					 var  price=preValue.substring(1)*num ;
					var next =$(this).parent().parent().next().children();
					//修改每行总价格
					next.html("￥"+price);
					var tr =$("#orderform table tbody tr");
					for(var i=0;i<tr.length;i++){
						var tdnum =tr.eq(i).find(".last").children().html().substring(1);
						total+=Number(tdnum);
					}
					$("#orderform table tfoot strong.price").html("￥"+total);
				}else{
					alert("请输入一个数字");
				}
			});
		
		});
		
		
		
		</script>
	</head>
  	
	<body id="index">
    	<jsp:include page="head.jsp"></jsp:include>
    	<%!double total=0; %>
        <%
        	//获取session中的cart内容
        	List<CartVO> list = (List<CartVO>)session.getAttribute("cart");
         %>
        <div id="payprocess">
			<h1>确认订单</h1>
			<form id="orderform" method="post" action="/buy/insertOrder.do">
				<table width="918" cellspacing="0" cellpadding="0" border="0">
                    <thead>
                        <tr>
                            <th class="first" width="350" valign="middle">商品名称</th>
                            <th width="130" valign="middle">价值</th>
                            <th width="120" valign="middle">窝窝价</th>
                            <th width="170" valign="middle">购买数量</th>
                            <th class="last" width="138" valign="middle">
                            	<span>总价</span>
                            </th>
                        </tr>
                    </thead>
					<tbody>
					<%for(CartVO vo:list){    total +=vo.getWpri();%>
						<tr>
							<td valign="middle" height="60">
                                <a href="#">
                                	<span class="title"><%=vo.getGname() %></span>
                                </a>
							</td>
							<td valign="middle" height="60" align="center">
								<span class="price">¥<%=vo.getPrice() %></span>
							</td>
							<td valign="middle" height="60" align="center">
								<span class="price">¥<%=vo.getWpri() %></span>
							</td>
							<td valign="middle" height="60">
								<div class="numbox">
									<input id="productnum" class="numtext yahei" type="text" value="<%=vo.getNums() %>" autocomplete="off" style="ime-mode: disabled;" maxnum="999" minnum="1" name="number">
								</div>
							</td>
							<td class="last" valign="middle" height="60" align="center">
								<span id="yprice" class="price">¥<%=vo.getTotalPrice() %></span>
							</td>
						</tr>
						<%} %>
					</tbody>
                    <tfoot>
                        <tr>
                            <td valign="middle" height="60" colspan="4">
                            	<span class="title redb">应付总额</span>
                            </td>
                            <td class="last" valign="middle" align="center">
                            	<strong class="price" style="float:right">¥<%=total %></strong>
                            	<b style="display:block;float:right;margin-right:20px;font-size:14px;line-height:33px;color:red"></b>
                            </td>
                    	</tr>
                        <tr>
                        	<td colspan="5"></td>
                        </tr>
                    </tfoot>
				</table>
			</form>
			<div class="subbox">
				<a id="nextbtn" class="next" type="next" href="doOrder.jsp?op=add" target="_self">确认购买</a>
				<a id="nextbtn" class="next" type="next" href="javascript:;" target="_self">清空订单</a>
				<a id="nextbtn" class="next" type="next" href="index.jsp" target="_self">继续购物</a>
				
			</div>
			<div class="extime" style="text-align:right;font-size:12px;color:#999;padding-top:20px;">订单将在次日失效，请尽快完成支付</div>
		</div>
   		<jsp:include page="footer.jsp"></jsp:include>
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

