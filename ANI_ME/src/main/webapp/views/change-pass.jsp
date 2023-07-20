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
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/plyr.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
	<c:if test="${sessionScope.user.admin ==true && !empty sessionScope.user.id}"><%@include file="/header-admin.jsp"%></c:if>
	<c:if test="${sessionScope.user.admin ==false && !empty sessionScope.user.id}"><%@include file="/header-user.jsp"%></c:if>
    </header>
    <!-- Header End -->

    <!-- Normal Breadcrumb Begin -->
    <section class="normal-breadcrumb set-bg" data-setbg="${pageContext.request.contextPath}/img/normal-breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2>Đổi mật khẩu</h2>
                        <p>Chào mừng đến với nơi của những wibu.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Normal Breadcrumb End -->

    <!-- Login Section Begin -->
    <section class="login spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="login__form">
                        <h3>Đổi mật khẩu</h3>
                        <form action="#">
                            <div class="input__item">
                                <input type="password" placeholder="Mật khẩu cũ">
                                <span class="icon_lock"></span>
                            </div>
                            <div class="input__item">
                                <input type="password" placeholder="Mật khẩu mới">
                                <span class="icon_lock"></span>
                            </div>
                            <div class="input__item">
                                <input type="password" placeholder="Xác nhận mật khẩu mới">
                                <span class="icon_lock"></span>
                            </div>
                            <button type="submit" class="site-btn">Xác nhận</button>
                        </form>
                        <a href="./index.html" class="forget_pass">Quay về trang chủ</a>
                    </div>
                </div>
                <div class="col-lg-6" >
                    <div class="login__register">
                        <h3>Cập nhật tài khoản?</h3>
                        <a href="./edit-profile.html" class="register-btn">Cập nhật ngay</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Login Section End -->

      <!-- Footer Section Begin -->
    <%@include file="/footer.jsp" %>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/player.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.nice-select.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/mixitup.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.slicknav.js"></script>
    <script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/main.js"></script>


</body>

</html>
</html>