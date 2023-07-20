<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
.post__form {
	position: relative;
	padding-left: 100px;
	padding-top: 30px;
	padding-bottom: 50px;
}

.post__form::after {
	position: absolute;
	right: 100px;
	bottom: 70px;
	height: 750px;
	width: 1px;
	background: rgba(255, 255, 255, 0.2);
	content: "";
}

.post__form h3 {
	color: #ffffff;
	font-weight: 700;
	font-family: "Oswald", sans-serif;
	margin-bottom: 30px;
}

.post__form form .input__item {
	position: relative;
	width: 570px;
	margin-bottom: 20px;
}

.post__form form .input__item:before {
	position: absolute;
	left: 50px;
	top: 10px;
	height: 30px;
	width: 1px;
	background: #b7b7b7;
	content: "";
}

.post__form form .input__item input {
	height: 50px;
	width: 100%;
	font-size: 15px;
	color: #b7b7b7;
	background: #ffffff;
	border: none;
	padding-left: 76px;
}

.post__form form .input__item input::placeholder {
	color: #b7b7b7;
}

.post__form form .input__item span {
	color: #b7b7b7;
	font-size: 20px;
	position: absolute;
	left: 15px;
	top: 13px;
}

.post__form form button {
	border-radius: 0;
	margin-top: 10px;
}

.post__form .forget_pass {
	font-size: 15px;
	color: #ffffff;
	display: inline-block;
	position: absolute;
	left: 350px;
	bottom: 60px;
}

.post__form .forget_pass:hover {
	color: #e53637;
}

.post__form form .text__area textarea {
	font-size: 15px;
	background: #ffffff;
	border: none;
	padding-left: 26px;
	margin-top: 13px;
}

.post__form form .radio {
	position: relative;
	width: 570px;
}

.post__form form .radio label {
	font-size: 15px;
	color: #b7b7b7;
	border: none;
	padding-left: 16px;
	padding-top: 10px;
}

.post__form form .selection select {
	height: 50px;
	width: 100%;
	font-size: 20px;
	color: #b7b7b7;
	background: #ffffff;
	border: none;
	padding-left: 76px;
}

.post__image .product__item__pic {
	background-color: grey;
	margin-top: 290px;
}

.post__image .site-btn {
	margin-top: 10px;
	align-self: center;
}

.table-active {
	color: #ffffff;
	margin-bottom: 50px;
}

.table-active thead tr {
	color: #e53637;
}

.table-active tbody tr td a {
	color: #ffffff;
}

.table-active tbody tr td a:hover {
	color: #e53637;
}

.list__video {
	margin-top: 40px;
}

.list__video h3 {
	color: #ffffff;
	font-weight: 700;
	font-family: "Oswald", sans-serif;
	margin-bottom: 30px;
}

.product__item__pic {
	height: 199px;
	width: 350px;
	position: relative;
	border-radius: 5px;
}

.post__image h3 {
	color: #ffffff;
	font-weight: 700;
	font-family: "Oswald", sans-serif;
	padding-top: 45px;
}

.post__image .product__item__pic{
	background-color: grey;
	margin-top: 50px;

}
</style>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section Begin -->
	<c:if test="${empty sessionScope.user.id}"><%@include file="/header.jsp"%></c:if>
	<c:if test="${sessionScope.user.admin ==true && !empty sessionScope.user.id}"><%@include file="/header-admin.jsp"%></c:if>
	<c:if test="${sessionScope.user.admin ==false && !empty sessionScope.user.id}"><%@include file="/header-user.jsp"%></c:if>
	<!-- Header End -->

	<!-- Normal Breadcrumb Begin -->
	<section class="normal-breadcrumb set-bg"
		data-setbg="${pageContext.request.contextPath}/img/normal-breadcrumb.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="normal__breadcrumb__text">
						<h2>Quản lý anime</h2>
						<p>Chức năng dành riêng cho quản lý.</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Normal Breadcrumb End -->

	<!-- Anime Section Begin -->
	<div class="container">
		<div class="row">
			<div class="col-lg-9">
				<div class="post__form">
					<h3>QUẢN LÝ ANIME</h3>
					<form method="post">
						<div class="input__item">
							<input type="text" placeholder="Video ID" value="${form.maVideo}"
								name="maVideo" style="color: black;"> <span
								class="icon_id"></span>
						</div>
						<div class="input__item">
							<input type="text" placeholder="Tiêu đề" value="${form.tieuDe}"
								name="tieuDe" style="color: black;"> <span
								class="icon_info"></span>
						</div>
						<div class="input__item">
							<input type="text" placeholder="Link video"
								value="${form.linkVideo}" name="linkVideo" style="color: black;">
							<span class="icon_link"></span>
						</div>
						<div class="input__item">
							<input type="text" placeholder="Ảnh Poster"
								value="${form.anhVideo}" name="anhVideo" style="color: black;">
							<span class="icon_image"></span>
						</div>
						<div class="input__item">
							<input type="text" placeholder="Thể loại" value="${form.theLoai}"
								name="theLoai" style="color: black;"> <span
								class="icon_tag"></span>
						</div>
						<div class="input__item">
							<input type="text" placeholder="Lượt xem" value="${form.luotXem}"
								name="luotXem" style="color: black;"> <span
								class="icon_info"></span>
						</div>
						<div class="text__area">
							<textarea cols="65" rows="10" placeholder="Mô tả" name="moTa">${form.moTa}</textarea>
						</div>
						<button formaction="/ANI_ME/manage_animeServlet/create"
							class="site-btn">Thêm</button>
						<button formaction="/ANI_ME/manage_animeServlet/update"
							class="site-btn">Sửa</button>
						<button formaction="/ANI_ME/manage_animeServlet/delete"
							class="site-btn">Xóa</button>
						<button formaction="/ANI_ME/manage_animeServlet" class="site-btn">Làm
							mới</button>
					</form>

				</div>
			</div>
			<div class="col-lg-3">
				<div class="post__image">
					<h3>HÌNH ẢNH ANIME</h3>
					<div class="product__item__pic set-bg"
						data-setbg="https://img.youtube.com/vi/${form.anhVideo}/maxresdefault.jpg"></div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="list__video">
					<center>
						<h3>DANH SÁCH VIDEO</h3>
					</center>
					<table class="table table-active">
						<thead>
							<tr>
								<th>Video ID</th>
								<th>Tiêu đề</th>
								<th>Thể loại</th>
								<th>Lượt xem</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${videos}">
								<tr>
									<td>${item.maVideo}</td>
									<td>${item.tieuDe}</td>
									<td>${item.theLoai}</td>
									<td>${item.luotXem}</td>
									<td><a
										href="/ANI_ME/manage_animeServlet/edit/${item.maVideo}">Chỉnh
											sửa</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>

				</div>
			</div>
		</div>

	</div>
	<!-- Anime Section End -->

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