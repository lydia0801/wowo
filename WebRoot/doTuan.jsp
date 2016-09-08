<%@page import="com.yc.po.TaoCanPO"%>
<%@page import="com.yc.biz.impl.TaoCanBizImpl"%>
<%@page import="com.yc.biz.ITaoCanBiz"%>
<%@page import="com.yc.vo.TuanInfoVO"%>
<%@page import="com.yc.biz.impl.TuanInfoBizImpl"%>
<%@page import="com.yc.biz.ITuanInfoBiz"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String op =request.getParameter("op");
	ITuanInfoBiz  biz = new TuanInfoBizImpl();
	//获取到套餐编号，传到详细信息页面
	ITaoCanBiz tbiz = new TaoCanBizImpl();
	if("detail".equals(op)){
		//获取团购信息的编号
		int  tid = Integer.parseInt(request.getParameter("tid"));
		System.out.println(tid);
		TuanInfoVO vo = biz.findByTid(tid);  //获取团购信息内容
		TaoCanPO  taocan = tbiz.findByTid(tid);//获取套餐信息 
		if(null!=vo){
		request.setAttribute("taocan", taocan);//便于抢购获取套餐编号 
		request.setAttribute("tuaninfo", vo);
		request.getRequestDispatcher("details.jsp").forward(request, response);
		}
	}

 %>
