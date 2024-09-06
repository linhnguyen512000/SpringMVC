<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
	<meta charset="utf-8">
	<title>Sign In | TopShoe</title>
	<meta name="keywords" content="TopShoe">
	<meta name="description" content="TopShoe - Login">
	<meta name="author" content="TopShoe">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<base th:replace="shopper/fragments/common :: base">
	<link rel="shortcut icon" href="favicon.ico">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/theme.css">
</head>
<body>

<!-- header -->
<header th:replace="shopper/fragments/header"></header>

<div class="tt-breadcrumb">
	<div class="container">
		<ul>
			<li><a href="/index">Trang Chủ</a></li>
			<li>ĐĂNG NHẬP</li>
		</ul>
	</div>
</div>
<div id="tt-pageContent">
	<div class="container-indent">
		<div class="container">
			<h1 class="tt-title-subpages noborder">SẴN SÀNG ĐĂNG NHẬP ?</h1>
			<div class="tt-login-form">
				<div class="row">
					<div class="col-xs-12 col-md-6">
						<div class="tt-item">
							<h2 class="tt-title">KHÁCH HÀNG</h2>
							<p>
								Bằng cách tạo tài khoản với cửa hàng của chúng tôi, bạn sẽ có thể chuyển qua quy trình thanh toán nhanh hơn, lưu trữ nhiều địa chỉ giao hàng, xem và theo dõi đơn hàng của bạn trong tài khoản của bạn và hơn thế nữa
							</p>
							<div class="form-group">
								<a href="${pageContext.request.contextPath}/register" class="btn btn-top btn-border">TẠO TÀI KHOẢN</a>
							</div>
						</div>
					</div>
					<div class="col-xs-12 col-md-6">
						<div class="tt-item">
							<h2 class="tt-title">ĐĂNG NHẬP</h2>
							Nếu bạn có tài khoản với chúng tôi, vui lòng đăng nhập.
							<div class="form-default form-top">
								<form id="customer_login" method="POST" action="${pageContext.request.contextPath}/loginCheck">
									<div class="form-group">
										<label for="loginInputName">E-MAIL *</label>
										<div class="tt-required">* bắt buộc</div>
										<input type="email" name="email" class="form-control" id="email" 
										onkeyup="resetText1()" placeholder="Nhập e-mail" required>
									</div>
									<c:if test="${fail2}">
						                  <p style="color: red" id="warning1">Email does not exist!</p>
						          	</c:if>
									<div class="form-group">
										<label for="loginInputEmail">MẬT KHẨU *</label>
										<input type="password" name="password" class="form-control" id="password" 
										onkeyup="resetText2()" placeholder="Nhập mật khẩu" required>
									</div>
									<c:if test="${fail1}">
						      	   		<p style="color: red"  id="warning2">Password is incorrect!</p>
						            </c:if>
									<div class="row">
										<div class="col-auto mr-auto">
											<div class="form-group">
												<button class="btn btn-border" type="submit">ĐĂNG NHẬP</button>
											</div>
										</div>
										<div class="col-auto align-self-end">
											<div class="form-group">
												<ul class="additional-links">
													<li><a href="#">Quên mật khẩu?</a></li>
												</ul>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<button id="test" style="display: none;">TEST</button>
<!-- footer -->
<footer th:replace="shopper/fragments/footer"></footer>

<!-- modal -->
<div th:replace="shopper/fragments/modal :: subsribeGood"></div>

<script src="${pageContext.request.contextPath}/external/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/external/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/external/panelmenu/panelmenu.js"></script>
<script src="${pageContext.request.contextPath}/external/slick/slick.min.js"></script>
<script src="${pageContext.request.contextPath}/external/lazyLoad/lazyload.min.js"></script>
<script src="${pageContext.request.contextPath}/js/main.js"></script>
<!-- form validation and sending to mail -->
<script src="${pageContext.request.contextPath}/external/form/jquery.form.js"></script>
<script src="${pageContext.request.contextPath}/external/form/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/external/form/jquery.form-init.js"></script>
<!-- custom -->
<script src="${pageContext.request.contextPath}/js/toastr.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/header.js" type="text/javascript"></script>

<script>
	$('#test').click(function (e) { 
		e.preventDefault();
		console.log('begin test');

		$.ajax({
			url: '/test',
			type: 'POST',
			dataType: 'html',
			data: [
				{abc: 'abc'}
			],
		})
		.done(function() {
			console.log("success");
		})
		.fail(function() {
			console.log("error");
		})
		.always(function(res) {
			console.log("complete");
			console.log(res);
		});
	});
</script>
<script>

			const queryString = window.location.search;
			const urlParams = new URLSearchParams(queryString);
			const success = urlParams.get("success");
			if (success) {
				alert("Đăng kí thành công!");
			}

			function resetText1() {
				document.getElementById("warning1").textContent = "";
			}
			
			function resetText2() {
				document.getElementById("warning2").textContent = "";
			}
		</script>
</body>
</html>