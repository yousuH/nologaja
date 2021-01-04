<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nologaja</title>
    <link rel="icon" href="./resources/img/favicon.png">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="./resources/css/bootstrap.min.css">
    <!-- animate CSS -->
    <link rel="stylesheet" href="./resources/css/animate.css">
    <!-- owl carousel CSS -->
    <link rel="stylesheet" href="./resources/css/owl.carousel.min.css">
    <!-- themify CSS -->
    <link rel="stylesheet" href="./resources/css/themify-icons.css">
    <!-- flaticon CSS -->
    <link rel="stylesheet" href="./resources/css/flaticon.css">
    <!-- fontawesome CSS -->
    <link rel="stylesheet" href="./resources/fontawesome/css/all.min.css">
    <!-- magnific CSS -->
    <link rel="stylesheet" href="./resources/css/magnific-popup.css">
    <link rel="stylesheet" href="./resources/css/gijgo.min.css">
    <!-- niceselect CSS -->
    <link rel="stylesheet" href="./resources/css/nice-select.css">
    <!-- slick CSS -->
    <link rel="stylesheet" href="./resources/css/slick.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="./resources/css/style.css">
    <!-- login CSS -->
    <link rel="stylesheet" href="./resources/css/login.css">
    <!-- memberjoin CSS -->
    <link rel="stylesheet" href="./resources/css/memberjoin.css">
    
</head>
<body>
    <!-- header -->
    <header class="main_menu">
        <div class="main_menu_iner">
            <div class="container">
                <div class="row align-items-center ">
                    <div class="col-lg-12">
                        <nav class="navbar navbar-expand-lg navbar-light justify-content-between">
                            <a class="navbar-brand" href="home.do"> <img src="./resources/img/logo1.png" alt="logo"> </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse main-menu-item justify-content-end"
                                id="navbarSupportedContent">
                                <ul class="navbar-nav">
                               	<c:choose>
                                	<c:when test="${sessionScope.uid == null && sessionScope.suid ==null }"><li class="nav-item">
                                        	<a class="nav-link" href="login.do">로그인</a>
                                    	</li>
                                    	<li class="nav-item">
	                                        <a class="nav-link" href="memberform.do">회원가입</a>
                                    	</li>
                                   	</c:when>
                               
                                    <c:otherwise>
                                    <c:choose>  
                                    	<c:when test="${sessionScope.uid != null}">
                                    	<li class="nav-item">
                                    		<span>${sessionScope.uid }님이 로그인 중 입니다.</span>
                              			</c:when>
                              			<c:otherwise>
                              			<li class="nav-item">
                                    		<span>${sessionScope.suid }님이 로그인 중 입니다.</span>
                              			</c:otherwise>
                              		</c:choose>
                                    	<li class="nav-item">
                                        	<a class="nav-link" href="logout.do">로그아웃</a>
                                    	</li>
                                    	<li class="nav-item">
	                                        <a class="nav-link" href="member.do">마이페이지</a>
                                    	</li>
                                   	</c:otherwise>
                                   	</c:choose>
                                    <li class="nav-item">
                                        <a class="nav-link" href="cs.do">고객센터</a>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </header>