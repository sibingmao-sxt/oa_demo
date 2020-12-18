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
	function myclick(event, treeId, treeNode, clickFlag) {
		console.info(treeNode.branchNo + "," + treeNode.branchName);
	}

	$(function() {
		//参数设置
		var setting = {
			check : {
				enable : true,
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
			},
			callback : {
				onClick : myclick
			}
		};
		//节点数据
		/* var zNodes = [ {
			nodeName : '党工委',
			open : true,
			children : [ {
				nodeName : '办公室',
				children : [ {
					nodeName : '秘书科'
				}, {
					nodeName : '外协'
				} ]
			}, {
				nodeName : '秘书办'
			} ]
		}, {
			nodeName : '企管局',
			open : false,
			children : [ {
				nodeName : '企业处',
				isParent : true
			} ]
		}, {
			nodeName : '招商局',
			open : false,
			children : [ {
				nodeName : '招商一局'
			}, {
				nodeName : '招商二局'
			} ]
		} ];

		var zNodes1 = [ {
			id : 1,
			name : '党工委',
			pId : 0,
			open : true
		}, {
			id : 2,
			name : '办公室',
			pId : 1,
			open : true
		}, {
			id : 3,
			name : '秘书科',
			pId : 2
		}, {
			id : 4,
			name : '外协',
			pId : 2
		}, {
			id : 5,
			name : '秘书办',
			pId : 1
		}, {
			id : 6,
			name : '企管局',
			pId : 0,
			open : false
		}, {
			id : 7,
			name : '企业处',
			pId : 6,
			isParent : true
		}, {
			id : 8,
			name : '招商局',
			pId : 0,
			open : false
		}, {
			id : 9,
			name : '招商一局',
			pId : 8
		}, {
			id : 10,
			name : '招商二局',
			pId : 8
		} ];
		$.fn.zTree.init($("#ztree1"), setting, zNodes1); */

		//发送AJAX请求
		$.get("${pageContext.request.contextPath}/branch/ajaxList", {},
				function(resp) {
					console.info(resp);
					$.fn.zTree.init($("#ztree1"), setting, resp.data);
				}, 'json');
	});
	
	function searchNode(){
		var treeObj=$.fn.zTree.getZTreeObj('ztree1');
		//查找特定节点
		var node=treeObj.getNodeByParam('branchName','企管一处');
		console.info(node);
		//追加子节点
		var newNode={branchNo:12,branchName:'嘿嘿',parentNo:5};
		treeObj.addNodes(node,0,newNode,false);
	}
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
			<td>
				<button type="button" onclick="searchNode();">查询ztree中的节点</button>
			</td>
		</tr>
	</table>
</body>
</html>