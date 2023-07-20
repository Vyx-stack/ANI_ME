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
    <c:if test="${empty sessionScope.user.id}"><%@include file="/header.jsp"%></c:if>
	<c:if test="${sessionScope.user.admin ==true && !empty sessionScope.user.id}"><%@include file="/header-admin.jsp"%></c:if>
	<c:if test="${sessionScope.user.admin ==false && !empty sessionScope.user.id}"><%@include file="/header-user.jsp"%></c:if>
    <!-- Header End -->


    <!-- Anime Section Begin -->
    <section class="anime-details spad">
 
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="anime__video__player" >
                        <iframe width="100%" height="640px"  src="${vid.linkVideo}?rel=0&autoplay=1"
                            title="YouTube video player" frameborder="0" 
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                            allowfullscreen ></iframe>                  
                    </div>                 
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="anime__details__text">
                        <div class="anime__details__title">
                            <h3>${vid.tieuDe}</h3>
                            <span>${vid.tieuDe}</span>
                        </div>
                        <p>${vid.moTa}</p>
                        <div class="anime__details__widget">
                            <div class="row">
                                <div class="col-lg-6 col-md-6">
                                    <ul>
                                        <li><span>Thể loại:</span> ${vid.theLoai}</li>
                                        <li><span>Lượt xem:</span> ${vid.luotXem} <span class="fa fa-eye" style="color: #ffff;"></span></li>                                     
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="anime__details__btn">
                        	<c:if test="${sessionScope.user.admin ==true && !empty sessionScope.user.id}"> <a href="/ANI_ME/anime_watchingServlet/like/${vid.maVideo}" class="follow-btn">
                        	<i class="fa fa-heart-o"></i>${checked}                         	
                        	</a></c:if>
                           <c:if test="${sessionScope.user.admin ==false && !empty sessionScope.user.id}"><a href="/ANI_ME/anime_watchingServlet/like/${vid.maVideo}" class="follow-btn"><i class="fa fa-heart-o"></i> Thích</a></c:if>                          
							<c:if test="${sessionScope.user.admin ==true && !empty sessionScope.user.id}"><a class="follow-btn" data-toggle="modal" href='#modal-id'><i class="fa fa-share"></i> Chia sẻ</a></c:if>
                            <c:if test="${sessionScope.user.admin ==false && !empty sessionScope.user.id}"><a class="follow-btn" data-toggle="modal" href='#modal-id'><i class="fa fa-share"></i> Chia sẻ</a></c:if>

                                <div class="modal fade" id="modal-id">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title">Chia sẻ</h4>
                                            </div>
                                            <div class="modal-body">
                                                <label for="" class="linkVideo">Link video:</label><br>
                                                <input type="text" class="inputText" disabled> <br> <br>
                                                <label for="" class="mailNhan">Email người nhận:</label> <br>
                                                <input type="email" class="inputText">
                                            </div>
                                            <div class="modal-footer">
                                               <button type="button" class="btn_close" data-dismiss="modal">Đóng</button>
                                               <a href=""></a> <button type="button" class="btn btn-primary">Gửi</button></a> 
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                        </div>
                    </div>
                </div>
            </div>
           
        </div>
    </section>
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