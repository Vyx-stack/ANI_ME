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

<style>
.report__tabs{
	position: relative;
	padding-top: 30px;
	padding-bottom: 50px;
}

.report__tabs h3{
	color: #ffffff;
	font-weight: 700;
	font-family: "Oswald", sans-serif;
	margin-bottom: 30px;
}

.report__tabs .nav-tabs li{
	padding-right: 30px;
	padding-bottom: 10px;
}

.report__tabs .nav-tabs li a{
	color: #ffffff;
	font-family: "Mulish", sans-serif;
	font-size: 18px;
}

.report__tabs .nav-tabs li a:hover{
	color: #e53637;
}

.report__tabs .nav-tabs li .active{
	color: #e53637;
}

.tab-content .select__title label{
	color: #ffffff;
	font-family: "Oswald", sans-serif;
	margin-bottom: 30px;
	font-size: 25px;
	margin-top: 20px;
	margin-right: 30px;
}

.tab-content .selection{
	margin-top: 19px;
}
.table-active{
	color: #ffffff;
	margin-bottom: 50px;
	
}

.table-active thead tr{
	color: #e53637;
}

.table-active tbody tr td a{
	color: #ffffff;
}

.table-active tbody tr td a:hover{
	color: #e53637;
}
</style>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
	<c:if test="${sessionScope.user.admin ==true && !empty sessionScope.user.id}"><%@include file="/header-admin.jsp"%></c:if>
	
    <!-- Header End -->

    <!-- Normal Breadcrumb Begin -->
    <section class="normal-breadcrumb set-bg" data-setbg="${pageContext.request.contextPath}/img/normal-breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2>Thống kê</h2>
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
            <div class="col-lg-12">
                <div class="report__tabs">
                    <div role="tabpanel">
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs" role="tablist">
                            <li role="presentation" class="active">
                                <a href="#home" aria-controls="home" role="tab" data-toggle="tab">Video yêu thích</a>
                            </li>
                            <li role="presentation">
                                <a href="#tab" aria-controls="tab" role="tab" data-toggle="tab">Người dùng yêu thích</a>
                            </li>
                            <li role="presentation">
                                <a href="#tab1" aria-controls="tab" role="tab" data-toggle="tab">Người dùng chia sẻ</a>
                            </li>
                        </ul>
                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active" id="home">
                                <table class="table table-active">
                                    <thead>
                                        <tr>
                                            <th>Tiêu đề video</th>
                                            <th>Số lượt yêu thích</th>
                                            <th>Ngày mới nhất</th>
                                            <th>Ngày cũ nhất</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Kimetsu No Yaiba</td>
                                            <td>100</td>
                                            <td>1/4/2022</td>
                                            <td>21/3/2022</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <div role="tabpanel" class="tab-pane" id="tab">
                                <div class="select__title">
                                    <div class="row">
                                        <div class="col-lg-2" >
                                            <label>Tiêu đề:</label>
                                        </div>
                                        <div class="col-lg-10" >
                                            <div class="selection" >
                                                <select>
                                                    <option value="">Chọn tiêu đề</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <center>
                                    <h3>DANH SÁCH</h3>
                                </center>
                                <table class="table table-active">
                                    <thead>
                                        <tr>
                                            <th>Tên đăng nhập</th>
                                            <th>Họ tên</th>
                                            <th>Email</th>
                                            <th>Ngày yêu thích</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Vylt</td>
                                            <td>Lê tuấn Vỹ</td>
                                            <td>vylt@gmail.com</td>
                                            <td>21/3/2023</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <div role="tabpanel" class="tab-pane" id="tab1">
                                <div class="select__title">
                                    <div class="row">
                                        <div class="col-lg-2" >
                                            <label>Tiêu đề:</label>
                                        </div>
                                        <div class="col-lg-10">
                                            <div class="selection">
                                                <select >
                                                    <option value="">Chọn tiêu đề</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <center>
                                    <h3>DANH SÁCH</h3>
                                </center>
                                <table class="table table-active">
                                    <thead>
                                        <tr>
                                            <th>Họ tên người chia sẻ</th>
                                            <th>Email chia sẻ</th>
                                            <th>Email nhận</th>
                                            <th>Ngày chia sẻ</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Lê tuấn Vỹ</td>
                                            <td>vylt@gmail.com</td>
                                            <td>vyphn@gmail.com</td>
                                            <td>21/3/2023</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>

    </div>
    <!-- Anime Section End -->

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