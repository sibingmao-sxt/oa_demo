<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style/style.css">
<base target="mainframe">
</head>
<body leftmargin="0" topmargin="0">
	<table border="0" width="100%" id="table1" cellspacing="0" height="71"
		background="images/top_bg.jpg">
		<tr>
			<td><img src="images/top_a.jpg" /></td>
			<td><a href="${pageContext.request.contextPath}/editpw.jsp">修改密码</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
				href="${pageContext.request.contextPath}/login.jsp" target="_top">退出系统</a></td>
		</tr>
	</table>
</body>
</html>