<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main frame</title>
<link href="style/styles.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/ztree/css/zTreeStyle/zTreeStyle.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/ztree/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/ztree/js/jquery.ztree.all.js"></script>
<base target="mainFrame">

<script type="text/javascript">
	$(function() {
		var setting = {};
		var zNodes = [ {
			name : '党工委',
			open : true,
			children : [ {
				name : '办公室'
			}, {
				name : '秘书办'
			} ]
		}, {
			name : '企管局',
			open : false,
			children : [ {
				name : '企业处'
			} ]
		}, {
			name : '招商局',
			open : false,
			children : [ {
				name : '招商一局'
			}, {
				name : '招商二局'
			} ]
		} ];
		$.fn.zTree.init($("#ztree1"), setting, zNodes);
	});
</script>
</head>
<body leftMargin=0 topMargin=0>
	<table border="0" width="100%" id="table1" height="100%"
		cellspacing="0" cellpadding="0">
		<tr>
			<td>
				<p align="center">
					<img border="0" src="images/welcome.jpg" width="409" height="221">
				</p>
			</td>
		</tr>
		<tr>
			<td>
				<ul id="ztree1" class="ztree"></ul>
			</td>
		</tr>
	</table>
</body>
</html>