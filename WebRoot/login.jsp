<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>甜鱼后台登录页</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome.css" />
<link
	href="https://cdn.bootcss.com/twitter-bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/disk/slidercaptcha.css" rel="stylesheet" />
<style>		
.slidercaptcha {
	margin: 0 auto;
	width: 314px;
	height: 286px;
	border-radius: 4px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.125);
	margin-top: 40px;
}

.slidercaptcha .card-body {
	padding: 1rem;
}

.slidercaptcha canvas:first-child {
	border-radius: 4px;
	border: 1px solid #e6e8eb;
}

.slidercaptcha.card .card-header {
	background-image: none;
	background-color: rgba(0, 0, 0, 0.03);
}

.refreshIcon {
	top: -54px;
}

.htmleaf-container {
	position: absolute;
	z-index: 99999;
	margin-left: 575px;
	display: none;
	]
}

.wrap {
	position: relative;
}
</style>
</head>
<body>



	<div class="wrap login_wrap">
		<div class="content">

			<div class="logo"></div>
			<div class="htmleaf-container">
				<div class="container-fluid">
					<div class="form-row">
						<div class="col-12">
							<div class="slidercaptcha card">
								<div class="card-header">
									<span>请完成安全验证</span>
								</div>
								<div class="card-body">
									<div id="captcha"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="login_box">

				<div class="login_form">
					<div class="login_title">登录</div>
					<form action="#" method="post">
						<div class="form_text_ipt">
							<input name="username" id="phone" type="text" placeholder="手机号">
						</div>
						<div class="ececk_warning">
							<span class="sjk">手机号不能为空</span>
						</div>
						<div class="form_text_ipt">
							<input name="password" id="password" type="password"
								placeholder="密码">
						</div>
						<div class="ececk_warning">
							<span class="mmk">密码不能为空</span>
						</div>
						<div class="form_check_ipt">
							<div class="left check_left">
								<label><input name="" type="checkbox"> 下次自动登录</label>
							</div>
							<div class="right check_right">
								<a href="forgetpwd/forgetpwd2.jsp">忘记密码</a>
							</div>
						</div>
						<div class="form_btn">
							<button type="button" id="submit" style="margin-top:60px ;display: block;">登录</button>
						</div>
					</form>
					<div class="other_login">
						<div class="left other_left">
							<span>其它登录方式</span>
						</div>
						<div class="right other_right">
							<a href="#"><i class="fa fa-qq fa-2x"></i></a> <a href="#"><i
								class="fa fa-weixin fa-2x"></i></a> <a href="#"><i
								class="fa fa-weibo fa-2x"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js"></script>
	<script src="${pageContext.request.contextPath}/disk/longbow.slidercaptcha.js"></script>
	<script type="text/javascript">
		$(function() {
			$("#submit").click(function() {
				$(".htmleaf-container").css("display","block");
				$(".htmleaf-container i").click();
			});
			$("#zhuce").click(function() {
				window.location.href = "register.jsp";
			});
		});
		$('#captcha').sliderCaptcha({
			repeatIcon : 'fa fa-redo',
			setSrc : function() {
				return '${pageContext.request.contextPath}/images/yanZhengImg/Pic' + Math.round(Math.random() * 4) + '.jpg';
			},
			onSuccess : function() {
				$(".htmleaf-container").css("display","none");
				var phone = $("#phone").val();
				var password = $("#password").val();
				$.getJSON("guan/login", {
					"name" : phone,
					"password" : password
				}, function(data) {
					var fg = data;
					if (fg) {
						window.location.href = "main.jsp";
					} else {
						alert("电话号码或密码错误");
					}
				});
			}
		});
	</script>
</body>
</html>