<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>办公业务资源系统(标准版)</title>
</head>
<frameset rows="71,*" frameborder="no" framespacing="0" border="0"
	frameborder="no">
	<frame name="header" noresize scrolling="no"
		src="${pageContext.request.contextPath}/top.jsp" marginwidth="0"
		marginheight="0">
	<frameset border="0" framespacing="0" frameborder="no" cols="180,*">
		<frame src="${pageContext.request.contextPath}/left.jsp"
			name="leftframe" scrolling="auto" noresize="noresize">
		<frame src="${pageContext.request.contextPath}/mainfrm.jsp"
			name="mainframe" scrolling="yes" noresize="noresize">
	</frameset>
</frameset>
</html>