<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Anime Template">
<meta name="keywords" content="Anime, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>ANI-MÊ</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/plyr.css" type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/nice-select.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css" type="text/css">
</head>

<style>
.signup__form {
	position: relative;
	padding-left: 260px;
}

.signup__form h3 {
	color: #ffffff;
	font-weight: 700;
	font-family: "Oswald", sans-serif;
	margin-bottom: 30px;
	margin-left: 260px;
}

.signup__form form .input__item {
	position: relative;
	width: 670px;
	margin-bottom: 20px;
}

.signup__form form .input__item:before {
	position: absolute;
	left: 50px;
	top: 10px;
	height: 30px;
	width: 1px;
	background: #b7b7b7;
	content: "";
}

.signup__form form .input__item input {
	height: 50px;
	width: 100%;
	font-size: 15px;
	color: #b7b7b7;
	background: #ffffff;
	border: none;
	padding-left: 76px;
}

.signup__form form .input__item input::-webkit-input-placeholder {
	color: #b7b7b7;
}

.signup__form form .input__item input::-moz-placeholder {
	color: #b7b7b7;
}

.signup__form form .input__item input:-ms-input-placeholder {
	color: #b7b7b7;
}

.signup__form form .input__item input::-ms-input-placeholder {
	color: #b7b7b7;
}

.signup__form form .input__item input::placeholder {
	color: #b7b7b7;
}

.signup__form form .input__item span {
	color: #b7b7b7;
	font-size: 20px;
	position: absolute;
	left: 15px;
	top: 13px;
}

.signup__form form button {
	border-radius: 0;
	margin-top: 10px;
}

.signup__form .forget_pass {
	font-size: 15px;
	color: #ffffff;
	display: inline-block;
	position: absolute;
	right: 60px;
	bottom: 12px;
}

.signup__form .forget_pass:hover{
	color: #e53637;
} 

.signup .signup__form h5 {
	font-size: 15px;
	color: #ffffff;
	margin-top: 36px;
}


.signup .signup__form h5 a {
	color: #e53637;
	font-weight: 700;
}

</style>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section Begin -->
	<%@include file="/header.jsp"%>
	<!-- Header End -->

	<!-- Normal Breadcrumb Begin -->
	<section class="normal-breadcrumb set-bg"
		data-setbg="${pageContext.request.contextPath}/img/normal-breadcrumb.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="normal__breadcrumb__text">
						<h2>Đăng ký</h2>
						<p>Chào mừng đến với nơi của những wibu.</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Normal Breadcrumb End -->

	<!-- Signup Section Begin -->
	<section class="signup spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="signup__form">
						<h3>ĐĂNG KÝ</h3>

						<form method="post">
							<div class="input__item">
								<input type="email" placeholder="Địa chỉ Email" name="email"
									style="color: black;"> <span class="icon_mail"></span>
							</div>
							<div class="input__item">
								<input type="text" placeholder="Họ tên của bạn" name="fullname"
									style="color: black;"> <span class="icon_profile"></span>
							</div>
							<div class="input__item">
								<input type="text" placeholder="ID của bạn" name="id"
									style="color: black;"> <span class="icon_profile"></span>
							</div>
							<div class="input__item">
								<input type="password" placeholder="Mật khẩu" name="password"
									style="color: black;"> <span class="icon_lock"></span>
							</div>
							<div class="input__item">
								<input type="password" placeholder="Xác nhận mật khẩu"
									name="confirmPassword" style="color: black;"> <span
									class="icon_lock"></span>
							</div>
							<mark style="background-color: rgba(0, 0, 0, 0); color: red;">${message}</mark>
							<br>
							<button type="submit" class="site-btn"
								formaction="/ANI_ME/signupServlet/create">Xác nhận</button>
						</form>
						<h5>
							Bạn đã có tài khoản? <a href="/ANI_ME/loginServlet">Đăng nhập
								ngay!</a>
						</h5>
					</div>
				</div>

			</div>
		</div>
	</section>
	<!-- Signup Section End -->

	<!-- Footer Section Begin -->
	<%@include file="/footer.jsp"%>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/player.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/jquery.nice-select.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/mixitup.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.slicknav.js"></script>
	<script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/main.js"></script>

</body>

</html>