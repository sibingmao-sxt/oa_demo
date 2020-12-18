<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>机构列表</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/style/styles.css">
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/ztree/css/zTreeStyle/zTreeStyle.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/ztree/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/ztree/js/jquery.ztree.all.js"></script>
<style type="text/css">
#container>div {
	float: left;
}

#treeContainer {
	width: 23%;
	border: 1px solid #0099cc;
	height: 650px;
}

#branchListContainer {
	width: 75%;
}
</style>
<script type="text/javascript">
	function toModify(branchNo){
		
	}
	
	function toDelete(branchNo,branchName){
		if(confirm("你真的要删除"+branchName+"以及它下面的所有子机构吗？")){
			
		}
	}
	
	var treeObj=null;
	$(function(){
		$.get('${pageContext.request.contextPath}/branch/ajaxList',null,function(resp){
			if(resp && resp.code==0 && resp.data){
			var setting={
					check : {
						enable : false,
						chkStyle : 'checkbox'
					},
					data : {
						key : {
							name : 'branchName'
						},
						simpleData : {
							enable : true,
							idKey : 'branchNo',
							pIdKey : 'parentNo'
						}
					}
				};
			treeObj=$.fn.zTree.init($("#ztree1"),setting,resp.data);
			treeObj.expandAll(true);
			}
		},"json");
	});
</script>
</head>
<body>
	<div id="container">
		<div id="treeContainer">
			<ul id="ztree1" class="ztree"></ul>
		</div>
		<div id="branchListContainer">
			<div align="center">
				<table class="table_path">
					<tr>
						<td>您当前的位置：<a href="#"><span class="txtpath">系统管理</span></a>
							&gt; <a href="#"><span class="txtpath">机构管理</span></a> &gt; 机构列表
						</td>
						<td align="right"><script type="text/javascript">
							var today = new Date();
							function initArray() {
								this.length = initArray.arguments.length;
								for (var i = 0; i < this.length; i++)
									this[i + 1] = initArray.arguments[i];
							}
							var d = new initArray(" 星期日", " 星期一", " 星期二",
									" 星期三", " 星期四", " 星期五", " 星期六");
							document.write("", today.getFullYear(), "年", today
									.getMonth() + 1, "月", today.getDate(),
									"日 ", d[today.getDay() + 1], "");
						</script></td>
					</tr>
				</table>
				<form name="departmentForm" method="POST"
					action="department_add.htm">
					<c:if test="${not empty branchList}">
						<table cellSpacing="1" cellPadding="2" class="table1" id="table4">
							<thead>

								<tr>
									<th scope="col"><div align="center">机构编号</div></th>
									<th scope="col"><div align="center">机构名称</div></th>
									<th scope="col"><div align="center">描述</div></th>
									<th scope="col"><div align="center">层号</div></th>
									<th scope="col"><div align="center">上级机构</div></th>
									<th scope="col"><div align="center">操作</div></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${branchList}" var="b" varStatus="sts">
									<c:if test="${sts.index%2==0}">
										<tr class="tr_s">
									</c:if>
									<c:if test="${sts.index%2!=0}">
										<tr class="tr_d" onmouseover="this.className='tr_o'"
											onmouseout="this.className='tr_d'">
									</c:if>
									<td><div align="center">${b.displayBranchNo}</div></td>
									<td><div align="left">${b.branchName}</div></td>
									<td><div align="center">${b.branchDesc}</div></td>
									<td><div align="left">${b.branchLevel}</div></td>
									<td><div align="center">${b.parentNo}
											${b.parentInfo.branchName}</div></td>
									<td><div align="center">
											<img src="../images/btn_edit.gif" style="cursor: hand;"
												alt='修改' onclick="toModify(${b.branchNo});"> <img
												src="../images/btn_del.gif" style="cursor: hand;" alt='删除'
												onclick='toDelete(${b.branchNo},"${b.branchName}");'>
										</div></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</c:if>
					<table width="100%" border="0" cellpadding="0" cellspacing="0"
						class="table0">
						<tr>

							<td width="35%"><input name="button" type="submit"
								class=btn_mouseout value="新增子机构"></td>
							<td width="62%">
								<p align="right">
									<font color="#008080">共</font><font color="#800000"> 1</font><font
										color="#008080"> 页 首页 上一页 下一页 尾页&nbsp; 跳转 <input
										name="text" type="text" size="4"> 页
									</font>
							</td>
							<td width="3%">&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td><input name="button" type="button" class=btn_mouseout
								onclick="window.location='department_recevier.htm'"
								value="指定本机构公文接收人"></td>
						</tr>

					</table>
					<input type="hidden" name="parentID" value="000000000000">
					<input type="hidden" name="parentLevelNo" value="0">
				</form>
			</div>

		</div>
	</div>
</body>
</html>