<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<title>窝窝团</title>
        <link rel="stylesheet" href="css/basic.css" />
	</head>

	<body id="index">
    	<input id="currentTime_" type="hidden" value="1409623012768">
    	<jsp:include page="head.jsp"></jsp:include>
    	<div>
    		<jsp:include page="main.jsp"></jsp:include>
    	</div>
        <jsp:include page="footer.jsp"></jsp:include>
	</body>
</html>
