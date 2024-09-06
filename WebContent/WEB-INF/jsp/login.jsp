<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">

	<!-- begin::Head -->
	<head>
		<meta charset="utf-8" />
		<title>TopShoe | Signin</title>
		<meta name="description" content="Login page example">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

		<!--begin::Fonts -->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700|Roboto:300,400,500,600,700">

		<!--end::Fonts -->

		<!--begin::Page Custom Styles(used by this page) -->
		<link href="${pageContext.request.contextPath}/assets/css/pages/login/login-3.css" rel="stylesheet" type="text/css" />

		<!--end::Page Custom Styles -->

		<!--begin::Global Theme Styles(used by all pages) -->
		<link href="${pageContext.request.contextPath}/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />

		<!--end::Global Theme Styles -->

		<!--begin::Layout Skins(used by all pages) -->
		<link href="${pageContext.request.contextPath}/assets/css/skins/header/base/light.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/assets/css/skins/header/menu/light.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/assets/css/skins/brand/dark.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/assets/css/skins/aside/dark.css" rel="stylesheet" type="text/css" />

		<!--end::Layout Skins -->
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/media/logos/favicon.ico" />
	</head>

	<!-- end::Head -->

	<!-- begin::Body -->
	<body class="kt-quick-panel--right kt-demo-panel--right kt-offcanvas-panel--right kt-header--fixed kt-header-mobile--fixed kt-subheader--enabled kt-subheader--fixed kt-subheader--solid kt-aside--enabled kt-aside--fixed kt-page--loading">

		<!-- begin:: Page -->
		<div class="kt-grid kt-grid--ver kt-grid--root">
			<div class="kt-grid kt-grid--hor kt-grid--root  kt-login kt-login--v3 kt-login--signin" id="kt_login">
				<div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor" style="background-image: url(assets/media/bg/bg-3.jpg);">
					<div class="kt-grid__item kt-grid__item--fluid kt-login__wrapper">
						<div class="kt-login__container">
							<div class="kt-login__logo">
								<a href="#">
									<img src="${pageContext.request.contextPath}/assets/media/logos/logo_topshoe.png" style="width: 125px;">
								</a>
							</div>
							<div class="kt-login__signin">
								<div class="kt-login__head">
									<h3 class="kt-login__title">Đăng Nhập Tới Trang Quản Lý Cửa Hàng</h3>
								</div>
								<form class="kt-form" action="${pageContext.request.contextPath}/admin/loginCheck" method="post">
									<div class="input-group">
										<input class="form-control" type="email" placeholder="Nhập e-mail" name="email" 
										onkeyup="resetText1()" required>
									</div>
									<c:if test="${fail2}">
						                  <p style="color: red" id="warning1">Email does not exist!</p>
						          	</c:if>
									<div class="input-group">
										<input class="form-control" type="password" placeholder="Nhập mật khẩu" name="password"
										onkeyup="resetText2()" required>
									</div>
									<c:if test="${fail1}">
						      	   		<p style="color: red"  id="warning2">Password is incorrect!</p>
						            </c:if>
									
									<div class="kt-login__actions">
										<button type="submit" class="btn btn-success">Send</button>
									</div>
								</form>
							</div>
							<div class="kt-login__forgot">
								<div class="kt-login__head">
									<h3 class="kt-login__title">Quên Mật Khẩu ?</h3>
									<div class="kt-login__desc">Nhập địa chỉ E - mail để đặt lại mật khẩu:</div>
								</div>
								<form class="kt-form" action="">
									<div class="input-group">
										<input class="form-control" type="text" placeholder="Email" name="Nhập e-mail" id="kt_email" autocomplete="off">
									</div>
									<div class="kt-login__actions">
										<button id="kt_login_forgot_submit" class="btn btn-brand btn-elevate kt-login__btn-primary">Đặt Lại</button>&nbsp;&nbsp;
										<button id="kt_login_forgot_cancel" class="btn btn-light btn-elevate kt-login__btn-secondary">Hủy</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- end:: Page -->

		<!-- begin::Global Config(global config for global JS sciprts) -->
		<script>
			var KTAppOptions = {
				"colors": {
					"state": {
						"brand": "#5d78ff",
						"dark": "#282a3c",
						"light": "#ffffff",
						"primary": "#5867dd",
						"success": "#34bfa3",
						"info": "#36a3f7",
						"warning": "#ffb822",
						"danger": "#fd3995"
					},
					"base": {
						"label": [
							"#c5cbe3",
							"#a1a8c3",
							"#3d4465",
							"#3e4466"
						],
						"shape": [
							"#f0f3ff",
							"#d9dffa",
							"#afb4d4",
							"#646c9a"
						]
					}
				}
			};
		</script>

		<!-- end::Global Config -->

		<!--begin::Global Theme Bundle(used by all pages) -->
		<script src="${pageContext.request.contextPath}/assets/plugins/global/plugins.bundle.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/assets/js/scripts.bundle.js" type="text/javascript"></script>

		<!--end::Global Theme Bundle -->

		<!--begin::Page Scripts(used by this page) -->
		<script src="${pageContext.request.contextPath}/assets/js/pages/custom/login/login-general.js" type="text/javascript"></script>
		<script>
			
			function resetText1() {
				document.getElementById("warning1").textContent = "";
			}
			
			function resetText2() {
				document.getElementById("warning2").textContent = "";
			}
		</script>
		<!--end::Page Scripts -->
	</body>

	<!-- end::Body -->
</html>