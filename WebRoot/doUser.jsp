<%@page import="com.yc.biz.impl.UserInfoBizImpl"%>
<%@page import="com.yc.biz.IUserInnfoBiz"%>
<%@page import="com.yc.po.UserInfoPO"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	//获取op值
	String op = request.getParameter("op");
	IUserInnfoBiz biz = new UserInfoBizImpl();
	System.out.println(op);
	//查看所有用户信息 
	List<UserInfoPO> list = biz.findByTerm(null, null, null);
	if ("register".equals(op)) {//用户注册
		String email = request.getParameter("email");//邮箱地址
		String uname = request.getParameter("username");
		String pwd = request.getParameter("password");
		String reppwd = request.getParameter("reppassword");
		String tel = request.getParameter("tel");
		String prov = request.getParameter("province");
		String city = request.getParameter("city");
		String area = request.getParameter("district");
		//判断 两次密码是否一致 
		if (pwd.equals(reppwd)) {
			UserInfoPO user = new UserInfoPO();
			user.setEmail(email);
			user.setUname(uname);
			user.setPwd(pwd);
			user.setProvince(prov);
			user.setCity(city);
			user.setArea(area);
			user.setTel(tel);
			boolean flag = biz.reg(user);
			if (flag) {
				response.sendRedirect("regOk.jsp");
			} else {
				response.sendRedirect("reg.jsp");
			}
		}
	} else if ("login".equals(op)) {//用户登录
		String uname = request.getParameter("email");
		String pwd = request.getParameter("password");
		UserInfoPO user = new UserInfoPO();
		user.setUname(uname);
		user.setPwd(pwd);
		UserInfoPO user1 = biz.login(user);
		if (null == user1) {
			response.sendRedirect("login.jsp");
		} else {
			session.setAttribute("user", user1);
			response.sendRedirect("index.jsp");
		}

	} else if ("find".equals(op)) {//查看所有用户操作 
	
	} else if("loginOut".equals(op)){
		session.removeAttribute("user");
		response.sendRedirect("index.jsp");
	}else {
		out.print(check(op, request, list));
	}
%>
<%!
	public String check(String checktype, HttpServletRequest request,
			List<UserInfoPO> list) {
		if ("checkEmail".equals(checktype)) {
			String email = request.getParameter("email");//邮箱地址
			System.out.println(email);
			for (UserInfoPO u : list) {
				if (u.getEmail().equals(email)) {
					return "邮箱已注册！！";
				}
			}
			return "邮箱可用！！";
		} else if ("checkUserName".equals(checktype)) {
			String username = request.getParameter("username");//邮箱地址
			for (UserInfoPO u : list) {
				if (u.getUname().equals(username)) {
					return "用户名已注册！！";
				}
			}
			return "用户名可用！！";
		} else if ("checkTel".equals(checktype)) {
			String tel = request.getParameter("tel");//邮箱地址
			for (UserInfoPO u : list) {
				if (u.getTel().equals(tel)) {
					return "电话号码已注册！！";
				}
			}
			return "电话号码可用！！";
		} else {
			return "";
		}

	}%>