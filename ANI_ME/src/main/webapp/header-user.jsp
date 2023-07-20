<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<header class="header">
        <div class="container">
            <div class="row">
                <div class="col-lg-2">
                    <div class="header__logo">
                        <a href="./index.html">
                            <img src="${pageContext.request.contextPath}/img/logo.png" alt="" style="width: 61%;">
                        </a>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="header__nav">
                        <nav class="header__menu mobile-menu">
                            <ul>
                                <li><a href="./index.html">Trang chủ</a></li>
                                <li><a>Thể loại <span class="arrow_carrot-down"></span></a>
                                    <ul class="dropdown">
                                        <li><a href="./categories-adventure.html">Phiêu lưu</a></li>
                                        <li><a href="./categories-action.html">Hành động</a></li>                                        
                                        <li><a href="./categories-comedy.html">Hài hước</a></li>
                                        <li><a href="./categories-detective.html">Trinh thám</a></li>
                                    </ul>
                                </li>
                                
                                <li><a href="/anime-love.html">Phim yêu thích</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="header__right">
                        <a href="#" class="search-switch"><span class="icon_search"></span></a>                       
                        <a href="/ANI_ME/edit_profileServlet"><span class="icon_profile"></span></a>
                       <a href="/ANI_ME/indexServlet/logout"><span class="icon_close"></span></a>
                    </div>
                </div>
            </div>
            <div id="mobile-menu-wrap"></div>
        </div>
    </header>