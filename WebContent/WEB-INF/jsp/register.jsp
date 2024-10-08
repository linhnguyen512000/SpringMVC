<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
	<meta charset="utf-8">
	<title>Register</title>
	<meta name="keywords" content="TopShoe">
	<meta name="description" content="TopShoe - Register">
	<meta name="author" content="wokiee">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<base th:replace="shopper/fragments/common :: base">
	<link rel="shortcut icon" href="favicon.ico">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/theme.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/toastr.min.css">
</head>
<body>

<!-- header -->
<header th:replace="shopper/fragments/header"></header>

<div class="tt-breadcrumb">
	<div class="container">
		<ul>
			<li><a href="/index">Trang Chủ</a></li>
			<li>TẠO TÀI KHOẢN</li>
		</ul>
	</div>
</div>
<div id="tt-pageContent">
	<div class="container-indent">
		<div class="container">
			<h1 class="tt-title-subpages noborder" style="padding-bottom: 15px;">TẠO TÀI KHOẢN MỚI</h1>
			<div class="tt-login-form">
				<div class="row justify-content-center">
					<div class="col-md-8 col-lg-6">
						<div class="tt-item">
							<h2 class="tt-title">THÔNG TIN</h2>
							<div class="form-default">
								<form id="register" method="post" action="${pageContext.request.contextPath}/signupCheck">
									<div class="form-group">
										<label for="loginInputName">TÊN *</label>
										<div class="tt-required">* bắt buộc</div>
										<input type="text" name="name" class="form-control" id="name" placeholder="Nhập tên" required>
									</div>
									<div class="form-group">
										<label for="loginInputEmail">E-MAIL *</label>
										<input type="email" name="email" class="form-control" id="email" placeholder="Enter E-mail" 
										onkeyup="resetText1()"	required>
									</div>
									<c:if test="${fail}">
							              <p style="color: red" id="warning1">Email exists!</p>
							          </c:if>
									<div class="form-group">
										<label for="loginInputEmail">SỐ ĐIỆN THOẠI *</label>
										<input type="tel" name="phone" class="form-control" id="phone" placeholder="Enter Phone" required>
									</div>
									<div class="form-group">
										<label for="loginInputPassword">MẬT KHẨU *</label>
										<input type="password" name="password" class="form-control" id="password" placeholder="Enter Password" 
										pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*]).{6,}" required>
									</div>
									<div class="row">
										<div class="col-auto">
											<div class="form-group">
												<button class="btn btn-border" type="submit">TẠO</button>
											</div>
										</div>
										<div class="col-auto align-self-center">
											<div class="form-group">
												<ul class="additional-links">
													<li>hoặc <a href="/index">Quay lại trang chủ</a></li>
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

<script>
function resetText1() {
	document.getElementById("warning1").textContent = "";
}
</script>

<!-- footer -->
<footer th:replace="shopper/fragments/footer"></footer>

<!-- modal -->
<div th:replace="shopper/fragments/modal :: subsribeGood"></div>

<script src="${pageContext.request.contextPath}/external/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/external/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/external/slick/slick.min.js"></script>
<script src="${pageContext.request.contextPath}/external/panelmenu/panelmenu.js"></script>
<script src="${pageContext.request.contextPath}/external/lazyLoad/lazyload.min.js"></script>
<script src="${pageContext.request.contextPath}/js/main.js"></script>
<!-- form validation and sending to mail -->
<script src="${pageContext.request.contextPath}/external/form/jquery.form.js"></script>
<script src="${pageContext.request.contextPath}/external/form/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/external/form/jquery.form-init.js"></script>
<!-- custom -->
<script src="${pageContext.request.contextPath}/js/toastr.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/header.js" type="text/javascript"></script>
</body>
</html>