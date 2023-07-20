<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
	.product__item__pic {
	height: 150px;
	position: relative;
	border-radius: 5px;
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

	<!-- Hero Section Begin -->
	<section class="hero">
		<div class="container">
			<div class="hero__slider owl-carousel">
				<div class="hero__items set-bg"
					data-setbg="${pageContext.request.contextPath}/img/hero/hero-1.jpg">
					<div class="row">
						<div class="col-lg-6">
							<div class="hero__text">
								<div class="label">Phiêu lưu</div>
								
								<h2>Kimetsu No Yaiba: Thanh Gươm Diệt Quỷ ( Mùa 1 )</h2>
								
							</div>
						</div>
					</div>
				</div>
				<div class="hero__items set-bg"
					data-setbg="${pageContext.request.contextPath}/img/hero/hero-2.jpg">
					<div class="row">
						<div class="col-lg-6">
							<div class="hero__text">
								<div class="label">Phiêu lưu</div>
								
								<h2>Boruto: Naruto Thế Hệ Tiếp Theo</h2>
								
								
							</div>
						</div>
					</div>
				</div>
				<div class="hero__items set-bg"
					data-setbg="${pageContext.request.contextPath}/img/hero/hero-3.jpg">
					<div class="row">
						<div class="col-lg-6">
							<div class="hero__text">
								<div class="label">Phiêu lưu</div>
								
								<h2>Jujutsu Kaisen: Chú Thuật Hồi Chiến ( Mùa 1 )</h2>
								
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero Section End -->

	<!-- Product Section Begin -->
	<section class="product spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="trending__product">
						<div class="row">
							<div class="col-lg-8 col-md-8 col-sm-8">

								<div class="section-title">
									<h4>Danh Sách</h4>
								</div>
							</div>

						</div>
						<div class="row">
							<c:forEach var="item" items="${videos}">
								<div class="col-lg-3">
									<div class="product__item">
										<a href="/ANI_ME/anime_watchingServlet/watch/${item.maVideo}">
											<div class="product__item__pic set-bg"
												data-setbg="https://img.youtube.com/vi/${item.anhVideo}/maxresdefault.jpg">

												<div class="view">
													<i class="fa fa-eye"></i> ${item.luotXem}
												</div>
											</div>
										</a>
										<div class="product__item__text">
											<ul>
												<li>${item.theLoai}</li>

											</ul>
											<h5>
												<a href="./anime-details.html">${item.tieuDe}</a>
											</h5>
										</div>
									</div>
								</div>
							</c:forEach>

						</div>

					</div>
					
				</div>
			</div>
		</div>
	</section>
	<!-- Product Section End -->

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