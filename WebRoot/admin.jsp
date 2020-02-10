<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/houtai.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/pagination.css">
<script src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.pagination.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/highlight.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/index.js"></script>
</head>
	
	<body id="page">
		<div id="heades"><span id="heade">甜鱼二手网</span>
			<p class="ht fr">欢迎您，${sessionScope.guanuser.quanXian.quan_name} ${sessionScope.guanuser.guan_zname}。
				<a href="guan/exit" id="exit">安全退出</a>
			</p>
		</div>
		<div id="bodi">
			<div class="left">
				<div class="x1" id="shangyi" >系统管理<span class="xi1 triangle-down"></span><span id="triangle-up" class="s1 triangle-up"></span></div>
				
				<div id="u0">
				<div class ="spq" id = "xtyh1"><div id = "tjxtyh"><span class="bqx" id="xty">系统用户管理</span></div></div>
				<div class ="spq"><span class="bqx">日志管理</span></div>
				</div>
				
				<div class="x1" id="dian1">商品管理<span class="xi2 triangle-down"></span><span class="s2 triangle-up"></span></div>
				
				<div id="spys">
				<div class="spq" id ="spxx"><div id ="spxxx"><span class="bqx" id="">已发布商品信息</span></div></div>
				<div class ="spq" id ="spshssss"><div id ="spshs"><span class="bqx">商品审核</span></div></div>
				</div>
				
				<div class="x1" id="dian2">用户管理<span id="triangle-down" class="xi3"></span><span class="s3 triangle-up"></span></div>
				
				<div id="u3">
				<div class="spq" id ="yhxxb"><div id ="yhxxlb"><span class="bqx">用户信息列表</span></div></div>
				<div class="spq" ><span class="bqx">注册用户信息审核</span></div>
				</div>
				
				<div class="x1">其他管理<span class="xi4 triangle-down"></span><span  class="s4 triangle-up"></span></div>
			</div>
			
			<div class="right">
					
					<div class = "cha0" ></div>
				<%-- 	<div class = "cha1" style="display:none"><jsp:include page="userInfo.jsp"></jsp:include></div>
					<div class = "cha2" style="display:none"><jsp:include page="cuserInfo.jsp"></jsp:include></div>
					<div class = "cha3" style="display:none"><jsp:include page="goodsadmin.jsp"></jsp:include></div>
					<div class = "cha4" style="display:none"><jsp:include page="publishadmin.jsp"></jsp:include></div> --%>
			</div>
			</div>
</body>


	<script type="text/javascript">
	$(function(){
	
		$(".cha0").load("adminshouye.jsp");
		
	
		});
		
		$("#spxx").click(function(){
		if (!$("#spxxx").hasClass("lanse")) {
			$("#spshs").removeAttr("class","lanse");
			$("#yhxxlb").removeAttr("class","lanse");
			$("#spxxx").attr("class","lanse");
			 $("#tjxtyh").removeAttr("class","lanse");
			  $(".cha0").load("goodsadmin.jsp");
		}
		});
	
		$("#xtyh1").click(function(){
			 if (!$("#tjxtyh").hasClass("lanse")) {
			 $("#spshs").removeAttr("class","lanse");
			 $("#yhxxlb").removeAttr("class","lanse");
			 $("#tjxtyh").attr("class","lanse");
			 $("#spxxx").removeAttr("class","lanse");
		    $(".cha0").load("userInfo.jsp");
		  }
	});
	
	
	$("#yhxxb").click(function(){
		if (!$("#yhxxlb").hasClass("lanse")) {
			$("#spshs").removeAttr("class","lanse");
			$("#yhxxlb").attr("class","lanse");
			$("#tjxtyh").removeAttr("class","lanse");
			$("#spxxx").removeAttr("class","lanse");
			$(".cha0").load("cuserInfo.jsp");
	     }
	});
	
	 $("#spshssss").click(function(){
		if (!$("#spshs").hasClass("lanse")) {
		 	$("#spshs").attr("class","lanse");
			$("#yhxxlb").removeAttr("class","lanse");
			$("#tjxtyh").removeAttr("class","lanse");
			$("#spxxx").removeAttr("class","lanse");
			$(".cha0").load("publishadmin.jsp");
		}
	});
		$("#shangyi").click(function(){
		 if ( $("#u0").css("display") != 'none') {
	            $("#u0").hide();
	        } else if ( $("#u0").css("display") == 'none') {
	          	$("#u0").show();
	        }
		});
		
	$("#dian1").click(function(){
		 if ( $("#spys").css("display") != 'none') {
	            $("#spys").hide();
	        } else if ( $("#spys").css("display") == 'none') {
	          	$("#spys").show();
	        }
	});
	
	$("#dian2").click(function(){
		if($("#u3").css("display") != 'none'){
			$("#u3").hide();
		}else if ( $("#u3").css("display") == 'none') {
	            $("#u3").show();
	    }
	
	})
	</script>
</html>