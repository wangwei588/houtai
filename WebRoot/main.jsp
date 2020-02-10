<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
		<title>甜鱼后台管理系统</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css" />
		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/pagination.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/houtai.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/drag/style.css" />
		<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/ace-extra.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.pagination.js"></script>
	</head>

	<body>
		<%@include file="static/header.jsp" %>
		<div class="main-container" id="main-container">
	<script type="text/javascript">
		try {
			ace.settings.check('main-container', 'fixed')
		} catch(e) {}
	</script>

	<div class="main-container-inner">
		<a class="menu-toggler" id="menu-toggler" href="#">
			<span class="menu-text"></span>
		</a>
		<%@include file="static/left.jsp" %>
		<div class="main-content">
			<div class="breadcrumbs" id="breadcrumbs">
				<script type="text/javascript">
					try {
						ace.settings.check('breadcrumbs', 'fixed')
					} catch(e) {}
				</script>
					</div>
				
					
				<div class="page-content">
				
				<div class="ace-settings-container" id="ace-settings-container">
					<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
						<i class="icon-cog bigger-150"></i>
					</div>
					<div class="ace-settings-box" id="ace-settings-box">
						<div>
							<div class="pull-left">
								<select id="skin-colorpicker" class="hide">
									<option data-skin="default" value="#438EB9">#438EB9</option>
									<option data-skin="skin-1" value="#222A2D">#222A2D</option>
									<option data-skin="skin-2" value="#C6487E">#C6487E</option>
									<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
								</select>
							</div>
							<span>&nbsp; Choose Skin</span>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
							<label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
							<label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
							<label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
						</div>
						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />
							<label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
							<label class="lbl" for="ace-settings-add-container">
								Inside
								<b>.container</b>
							</label>
						</div>
					</div>
				</div>
				<!-- /#ace-settings-container -->
					
						<!--一层面纱
						<div id="jzts" style="display:block; width:100%; background-color:red; position:fixed; z-index:99999999;">
							<div class="commitopacity" id="bkbgjz"></div>
							<div style="padding-left: 70%;padding-top: 1px;">
								<div style="float: left;margin-top: 3px;"><img src="static/images/loadingi.gif" /> </div>
								<div style="margin-top: 6px;"><h4 class="lighter block red">&nbsp;加载中 ...</h4></div>
							</div>
						</div> -->
				<div class="row" id="writeNEIRONG">
					<h1>从这里写内容</h1>
					
					
				</div>
				<!-- /.row -->
			</div>
			<!-- /.page-content -->
		</div>
		<!-- /.main-content -->

	</div>
	<!-- /.main-container-inner -->

	<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
		<i class="icon-double-angle-up icon-only bigger-110"></i>
	</a>
</div>
<!-- /.main-container -->
		<!-- 弹出一个div不能点击其他地方 -->
	<div id="_DialogBGDiv" style="position: absolute; left: 0px; top: 0px; display: none; width: 100%; height: 728px; z-index: 1001;"><div style="position:relative;width:100%;height:100%;"><div id="_DialogBGMask" style="position: absolute; width: 100%; height: 100%; opacity: 0.4; background-color: rgb(51, 51, 51);"></div></div></div>
	<div id="_DialogDiv_0" style="z-index: 10002; display: none;" allowchangeindex="true"  >
	<table id="_DialogTable_0" width="495" cellspacing="0" cellpadding="0" border="0">
		<tr id="_Draghandle_0" onselectstart="return false;">
			<td  class="dialog_lt dialog_borderWidth">
				<div class="dialog_borderWidth"></div>
			</td>
				
			<td class="dialog_ct">
				<div class="dialog_title">
					<input type="button" class="icon_dialog">
					<span id="_Title_0">个人资料</span>
				</div>
				<div id="_ButtonClose_0" onclick="closeTan()" title="关闭" class="dialog_closebtn" onmouseout="this.className='dialog_closebtn'" onmouseover="this.className='dialog_closebtn_over'" style=" ">
				</div>
				
			</td>
			<td class="dialog_rt dialog_borderWidth">
				<div class="dialog_borderWidth"><a id="_forTab_0" href="#;"></a></div>
			</td>
		</tr>
		<tr>
			<td class="dialog_mlm dialog_borderWidth"></td>
			<td align="center" id="tanDaoru" style="background-color: #FFFFFF">
					<!-- 导入弹出页面内容 -->
					<!--  
						1.setuserInfo
						2.lookGoods
					-->
			</td>
			<td class="dialog_mrm dialog_borderWidth"></td>
		</tr>
		<tr>      
			<td class="dialog_lb dialog_borderWidth"></td>
			<td class="dialog_cb"></td>      
			<td class="dialog_rb dialog_borderWidth"></td>
		</tr>
	</table>
		
	</div>
	
		<!-- basic scripts -->
		

		<script type="text/javascript">
			window.jQuery || document.write("<script src='${pageContext.request.contextPath}/assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>

		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='${pageContext.request.contextPath}/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/typeahead-bs2.min.js"></script>

		<!-- page specific plugin scripts -->

		<script src="${pageContext.request.contextPath}/assets/js/bootstrap-tag.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/jquery.hotkeys.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/bootstrap-wysiwyg.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/jquery-ui-1.10.3.custom.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/jquery.slimscroll.min.js"></script>

		<!-- ace scripts -->

		<script src="${pageContext.request.contextPath}/assets/js/ace-elements.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->
	
		<script type="text/javascript">
			$(function(){
				$.ajaxSettings.async = false;
				$.getJSON("guan/main/index");
				$("#writeNEIRONG").load("adminshouye.jsp");
			});
			function siMenu(menuName){
				if(menuName=="用户管理"){
					$("#writeNEIRONG").load("userInfo.jsp");
				}else if(menuName=="已发布商品"){
					$("#writeNEIRONG").load("goodsadmin.jsp");
				}else if(menuName=="待审核商品"){
					$("#writeNEIRONG").load("publishadmin.jsp");
				}
			}
			
			function closeTan(){
				$("#_DialogBGDiv").hide();
				$("#_DialogDiv_0").hide();
			}
			
			function openTan(str){
				$("#_DialogBGDiv").show();
				$("#tanDaoru").load("static/set/"+str+".jsp");
				$("#_DialogDiv_0").show();
			}
			
			function openTan(str,goodsid){
				$("#_DialogBGDiv").show();
				$("#tanDaoru").load("static/set/"+str+".jsp?goodsid="+goodsid);
				$("#_DialogDiv_0").show();
			}
			
			
			
		</script>
		
</body>
</html>
