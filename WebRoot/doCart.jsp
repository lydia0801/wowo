<%@page import="com.yc.vo.CartVO"%>
<%@page import="com.yc.vo.TaocanVO"%>
<%@page import="com.yc.biz.impl.TaoCanBizImpl"%>
<%@page import="com.yc.biz.ITaoCanBiz"%>
<%@page import="com.yc.po.OrderInfoPO"%>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	//购物车的信息存储session     session.setAttribute("cart",cart);  session.setAttribute("orderNo",orderNO);
	
	//获取存储在购物车中的信息
	List<CartVO> list = (List<CartVO>)session.getAttribute("cart");
	if(null==list){
		list =new ArrayList<CartVO>();
	}
	//实例化套餐biz 
	ITaoCanBiz  tbiz =new TaoCanBizImpl();
	//获取抢购信息,根据套餐编号查询
	int cid =Integer.parseInt(request.getParameter("cid"));
	TaocanVO  tao = tbiz.findByCid(cid);
	//购物车对象
	CartVO  cartVO = new CartVO();
	cartVO.setGname(tao.getGname());
	boolean flag=true;
	CartVO  temp=null;
	//判断 
	for(int i = 0;i<list.size();i++ ){
		temp =list.get(i);
		if(list.get(i).getCid()==cid){
			//设置数量  +1 
			temp.setNums(list.get(i).getNums()+1);
			//先移除vo对象 
			list.remove(list.get(i));
			
			 flag=false;
		} 
	}
	//购物车没有此套餐
	if(flag){
		//如果购物车中没有此套餐信息则需新建一个cartvo 
		cartVO.setNums(1);
		cartVO.setPrice(tao.getPrice());
		cartVO.setWpri(tao.getAct());
		cartVO.setCid(cid);
		//设置必须在数量和窝窝价格已经存储的情况下操作的 
		cartVO.setTotalPrice(cartVO.getNums()*cartVO.getWpri());
		list.add(cartVO);
	}else{
	temp.setTotalPrice(temp.getNums()*temp.getWpri());
		System.out.print(temp.getNums()+"----------");
		list.add(temp);
	}
	
	session.setAttribute("cart", list);
	response.sendRedirect("shopcart.jsp");
%>
