<%@page import="com.yc.biz.impl.OrdernfoBizImpl"%>
<%@page import="com.yc.po.OrderInfoPO"%>
<%@page import="com.yc.biz.IOrderInfoBiz"%>
<%@page import="com.yc.vo.CartVO"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String op =request.getParameter("op");//操作类型
	//实例化biz
	IOrderInfoBiz  biz = new OrdernfoBizImpl();
	
	if("add".equals(op)){//添加操作
		//获取购物车中的信息
		List<CartVO>  list =(List<CartVO>)session.getAttribute("cart");
		//订单编号是在购买商品时才生成，所以可以将 doCart.jsp页面中的 订单编号操作代码删除
		//生成订单编号
		String orderNo =biz.genOrderNo();
	 	//因为每个套餐生成一条订单记录， 但是 同时下单的套餐拥有一个订单编号 
	 	OrderInfoPO  po = null;
	 	//批量插入操作，所以现将 po存储在list集合中
	 	List<OrderInfoPO>  orderlist = new ArrayList<OrderInfoPO>();
		for(CartVO vo :list){
			po = new OrderInfoPO();
			po.setCid(vo.getCid());
			po.setNums(vo.getNums());
			po.setWprice(vo.getWpri());
			po.setOrderNo(orderNo);
			orderlist.add(po);
		}
		//调用添加方法 
		boolean flag =biz.addOrder(orderlist);
		if(flag){//成功购买
			//清除购物车信息
			session.removeAttribute("cart");
			response.sendRedirect("index.jsp");	
		}else{
			response.sendRedirect("shopcart.jsp");	
		}
	
	}

%>
 