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
                                    		<p>${sessionScope.uid }님이 로그인 중 입니다. 등급 : ${sessionScope.ugrd }</p>
                              			</c:when>
                              			<c:otherwise>
                              			<li class="nav-item">
                                    		<p>${sessionScope.suid }님이 로그인 중 입니다. 등급 : ${sessionScope.ugrd }</p>
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

    <!-- 메인내용 -->
	 <section class="banner_part">
        <!-- booking part start-->
        <section class="booking_part">  
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="booking_content">
                            <div class="tab-content" id="myTabContent">
                                <div class="tab-pane fade show active" id="hotel" role="tabpanel" aria-labelledby="hotel-tab">
                                    <div class="booking_form">
                                        <form action="#">
                                            <div class="form-row">

                                                <div class="input-group input-group-sm mb-3">
                                                    <input style="border-radius: 0; height: 45px; border-color: #2493e0; background-color: transparent;" type="text" class="form-control" placeholder="  상세지역">
                                                </div>

                                                <!--
                                                <div class="input-group input-group-lg">
                                                    <div class="input-group-prepend">
                                                      <span class="input-group-text" id="inputGroup-sizing-lg">Large</span>
                                                    </div>
                                                    <input type="text" class="form-control" aria-label="Large" aria-describedby="inputGroup-sizing-sm">
                                                </div>
                                                -->

                                                <div class="form_colum">
                                                    <select class="nc_select">
                                                        <option selected>도시를 선택하세요</option>
                                                        <option value="1">서울</option>
                                                        <option value="2">부산</option>
                                                        <option value="3">제주</option>
                                                        <option value="4">강원</option>
                                                        <option value="5">대구</option>
                                                        <option value="6">광주</option>
                                                        <option value="1">서울</option>
                                                        <option value="2">부산</option>
                                                        <option value="3">제주</option>
                                                        <option value="4">강원</option>
                                                        <option value="5">대구</option>
                                                        <option value="6">광주</option>
                                                    </select>
                                                </div>
                                                <div class="form_colum">
                                                    <input id="datepicker_1" placeholder="Check in date">
                                                </div>
                                                <div class="form_colum">
                                                    <input id="datepicker_2" placeholder="Check out date">
                                                </div>
                                                <div class="form_colum">
                                                    <select class="nc_select">
                                                        <option selected>Person </option>
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                    </select>
                                                </div>
                                                <div class="form_btn">
                                                    <a href="#" class="btn_1">search</a>
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
        </section>
    </section>

	<section class="top_place section_padding">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6">
                    <div class="section_tittle text-center">
                        <h2>Top Destination</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="single_place">
                        <img src="./resources/img/single_place_1.png" alt="">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <a href="#" class="place_btn">제주</a>
                                <h3>Orange Guest House</h3>
                                <p>귤내음이 가득한 제주의 게스트하우스</p>
                                <div class="place_review">
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <span>(210 review)</span>
                                </div>
                            </div>
                            <div class="details_icon text-right">
                                <i class="ti-share"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="single_place">
                        <img src="./resources/img/single_place_2.png" alt="">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <a href="#" class="place_btn">속초</a>
                                <h3>만석맨션</h3>
                                <p>침실에서 바라보는 오션뷰</p>
                                <div class="place_review">
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <span>(210 review)</span>
                                </div>
                            </div>
                            <div class="details_icon text-right">
                                <i class="ti-share"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="single_place">
                        <img src="./resources/img/single_place_3.png" alt="">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <a href="#" class="place_btn">부산</a>
                                <h3>갈매기 하우스</h3>
                                <p>파도를 찾는 서퍼들의 고향</p>
                                <div class="place_review">
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <span>(210 review)</span>
                                </div>
                            </div>
                            <div class="details_icon text-right">
                                <i class="ti-share"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="single_place">
                        <img src="./resources/img/single_place_4.png" alt="">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <a href="#" class="place_btn">전주</a>
                                <h3>한옥빌리지</h3>
                                <p>전통이 살아숨쉬는 웅앵웅</p>
                                <div class="place_review">
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <span>(210 review)</span>
                                </div>
                            </div>
                            <div class="details_icon text-right">
                                <i class="ti-share"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- <a href="#" class="btn_1 text-cnter">Discover more</a> -->
            </div>
        </div>
    </section>
    <!--top place end-->

    
    <div id="fh5co-destination">
        <div class="tour-fluid"></div>
            <div class="row">
                <div class="col-md-12">
                    <ul id="fh5co-destination-list" class="animate-box">
                        <li class="one-forth text-center" style="background-image: url(./resources/img/breadcrumb.png); ">
                            <a href="#">
                                <div class="case-studies-summary">
                                    <h2>서울</h2>
                                </div>
                            </a>
                        </li>
                        <li class="one-forth text-center" style="background-image: url(./resources/img/single_place_1.png); ">
                            <a href="#">
                                <div class="case-studies-summary">
                                    <h2>제주</h2>
                                </div>
                            </a>
                        </li>
                        <li class="one-forth text-center" style="background-image: url(./resources/img/single_place_2.png); ">
                            <a href="#">
                                <div class="case-studies-summary">
                                    <h2>경상도</h2>
                                </div>
                            </a>
                        </li>
                        <li class="one-forth text-center" style="background-image: url(./resources/img/single_place_3.png); ">
                            <a href="#">
                                <div class="case-studies-summary">
                                    <h2>전라도</h2>
                                </div>
                            </a>
                        </li>

                        <li class="one-forth text-center" style="background-image: url(./resources/img/single_place_4.png); ">
                            <a href="#">
                                <div class="case-studies-summary">
                                    <h2>충청도</h2>
                                </div>
                            </a>
                        </li>
                        <li class="one-half text-center">
                            <div class="title-bg">
                                <div class="case-studies-summary">
                                    <h2>지역 별 인기 숙소</h2>
                                    <span><a href="#">View All Destinations</a></span>
                                </div>
                            </div>
                        </li>
                        <li class="one-forth text-center" style="background-image: url(./resources/img/single_place_1.png); ">
                            <a href="#">
                                <div class="case-studies-summary">
                                    <h2>강원도</h2>
                                </div>
                            </a>
                        </li>
                        <li class="one-forth text-center" style="background-image: url(./resources/img/single_place_2.png); ">
                            <a href="#">
                                <div class="case-studies-summary">
                                    <h2>경기도</h2>
                                </div>
                            </a>
                        </li>
                        <li class="one-forth text-center" style="background-image: url(./resources/img/single_place_3.png); ">
                            <a href="#">
                                <div class="case-studies-summary">
                                    <h2>부산</h2>
                                </div>
                            </a>
                        </li>
                        <li class="one-forth text-center" style="background-image: url(./resources/img/single_place_4.png); ">
                            <a href="#">
                                <div class="case-studies-summary">
                                    <h2>대구</h2>
                                </div>
                            </a>
                        </li>
                        <li class="one-forth text-center" style="background-image: url(./resources/img/single_place_1.png); ">
                            <a href="#">
                                <div class="case-studies-summary">
                                    <h2>광주</h2>
                                </div>
                            </a>
                        </li>
                    </ul>		
                </div>
            </div>
        </div>
    </div>












    <!-- footer -->
    <footer class="footer-area" style="padding-top: 60px;">
        <div class="container">
            <div class="row justify-content-between">
                <div class="col-sm-6 col-md-4">
                    <div class="single-footer-widget">
                        <h4>고객센터</h4>
                        <ul>
                            <li><a href="faq.do">자주 하는 질문</a></li>
                            <li><a href="notice.do">공지사항</a></li>
                            <li><a href="inquire.do">문의하기</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="single-footer-widget">
                        <h4>주요 기능</h4>
                        <ul>
                            <li><a href="member.do">회원가입</a></li>
                            <li><a href="find.do">아이디·비밀번호 찾기</a></li>
                            <li><a href="booking.do">숙소예약</a></li>
                            <li><a href="cart.do">장바구니</a></li>
                            <li><a href="cancel.do">예약취소</a></li>
                            <li><a href="bookinglist.do">예약내역</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="single-footer-widget footer_icon">
                        <h4>Contact Us</h4>
                        <ul>
                            <li><a href="">강문수</a></li>
                            <li><a href="">고현정</a></li>
                            <li><a href="">유수현</a></li>
                            <li><a href="">이성용</a></li>
                            <li><a href="">조유민</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12" style="margin-top: -40px;">
                    <div class="copyright_part_text text-center">
                        <p class="footer-text m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- footer part end-->

    <!-- jquery plugins here-->
    <script src="./resources/js/jquery-1.12.1.min.js"></script>
    <!-- popper js -->
    <script src="./resources/js/popper.min.js"></script>
    <!-- bootstrap js -->
    <script src="./resources/js/bootstrap.min.js"></script>
    <!-- magnific js -->
    <script src="./resources/js/jquery.magnific-popup.js"></script>
    <!-- swiper js -->
    <script src="./resources/js/owl.carousel.min.js"></script>
    <!-- masonry js -->
    <script src="./resources/js/masonry.pkgd.js"></script>
    <!-- masonry js -->
    <script src="./resources/js/jquery.nice-select.min.js"></script>
    <script src="./resources/js/gijgo.min.js"></script>
    <!-- contact js -->
    <script src="./resources/js/jquery.ajaxchimp.min.js"></script>
    <script src="./resources/js/jquery.form.js"></script>
    <script src="./resources/js/jquery.validate.min.js"></script>
    <script src="./resources/js/mail-script.js"></script>
    <script src="./resources/js/contact.js"></script>
    <!-- custom js -->
    <script src="./resources/js/custom.js"></script>
</body>
</html>