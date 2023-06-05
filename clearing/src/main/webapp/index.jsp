<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.lang.reflect.Member"%>
<%@page import="com.clearing.model.StoreDTO"%>
<%@page import="com.clearing.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<meta name="description" content="" />
<meta name="author" content="" />

<title>Clean Work HTML CSS Template</title>

<!-- CSS FILES -->
<link rel="preconnect" href="https://fonts.googleapis.com" />

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />

<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;0,700;1,400&display=swap"
	rel="stylesheet" />

<link href="css/bootstrap.min.css" rel="stylesheet" />

<link href="css/bootstrap-icons.css" rel="stylesheet" />

<link href="css/tooplate-clean-work.css" rel="stylesheet" />
<link href="css/login.css" rel="stylesheet">
<link href="css/kakaoMap.css" rel="stylesheet">
<link href="css/chatbot.css" rel="stylesheet">
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=683c7e08c86fe41ea5c21dd7148dc9f3&libraries=services,clusterer,drawing"></script>

<style type="text/css">
	@font-face {
		font-family: 'gmarket';
		src: url('./fonts/GmarketSansTTFMedium.ttf') format('truetype');
	}

	body {
		font-family: 'gmarket';
	}
</style>

<!--

Tooplate 2132 Clean Work

https://www.tooplate.com/view/2132-clean-work

Free Bootstrap 5 HTML Template

-->
</head>

<body>

	<%
	String email = null;
	String name = null;
	String addr = null;
	Double lat = 0.0;
	Double lng = 0.0;
	MemberDTO member = (MemberDTO) session.getAttribute("member");
	StoreDTO storeMember = (StoreDTO) session.getAttribute("storeMember");
	if (member != null) {
		email = member.getMB_EMAIL();
		name = member.getMB_NAME();
		addr = member.getMB_ADDR();
		lat = member.getLAT();
		lng = member.getLNG();
	} else if (storeMember != null) {
		email = storeMember.getSTORE_EMAIL();
		name = storeMember.getSTORE_NAME();
		addr = storeMember.getSTORE_ADDR();
		lat = storeMember.getLAT();
		lng = storeMember.getLNG();
	}
	session.setAttribute("email", email);
	session.setAttribute("name", name);
	session.setAttribute("addr", addr);
	session.setAttribute("lat", lat);
	session.setAttribute("lng", lng);
	%>
	<header class="site-header">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-12 d-flex flex-wrap">
					<p class="d-flex me-4 mb-0">
						<i class="bi-house-fill me-2"></i> One-Stop Cleaning Service
					</p>

					<p class="d-flex d-lg-block d-md-block d-none me-4 mb-0">
						<i class="bi-clock-fill me-2"></i> <strong class="me-2">Mon
							- Fri</strong> 8:00 AM - 5:30 PM
					</p>

					<p class="site-header-icon-wrap text-white d-flex mb-0 ms-auto">
						<i class="site-header-icon bi-whatsapp me-2"></i> <a
							href="tel: 110-220-9800" class="text-white"> 110 220 9800 </a>
					</p>
				</div>
			</div>
		</div>
	</header>

	<nav class="navbar navbar-expand-lg">
		<div class="container">
			<a class="navbar-brand" href="index.jsp"> <img
				src="images/bubbles.png" class="logo img-fluid" alt="" /> <span
				class="ms-2">C&nbsp;R&nbsp;I&nbsp;R&nbsp;I&nbsp;N&nbsp;G</span>

			</a>

			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link"
						href="index.jsp">메인</a></li>
					<li class="nav-item"><a class="nav-link" href="about.html">후기
							</a></li>
					<li class="nav-item"><a class="nav-link" href="requestBoardMain.jsp">문의
							</a></li>
					<%if(session.getAttribute("email") == "admin") {%>
					<!-- admin 로그인시 생기는 메뉴 TODO-->
					<li class="nav-item"><a class="nav-link" href="contact.html">Contact</a>
					</li>
					<% }%>

					<%
					if (session.getAttribute("member") != null || session.getAttribute("storeMember") != null) {
					%>
					<li class="nav-item ms-3"><a
						class="nav-link custom-btn custom-border-btn custom-btn-bg-white btn"
						href="Mypage.jsp">내 정보</a></li>
					<li class="nav-item ms-3"><a
						class="nav-link custom-btn custom-border-btn custom-btn-bg-white btn"
						href="logOut">로그아웃</a></li>
					<%
					} else {
					%>
					<li class="nav-item ms-3"><a
						class="nav-link custom-btn custom-border-btn custom-btn-bg-white btn"
						href="login1.jsp">로그인</a></li>
					<%
					}
					%>


				</ul>
			</div>
		</div>
	</nav>

	<main>
		<section
			class="hero-section hero-section-full-height d-flex justify-content-center align-items-center">
			<div class="section-overlay"></div>

			<div class="container" style="padding-bottom:20%;">
				<div class="row mainForm">
					<div class="col-lg-7 col-12 text-center mx-auto">

						<h1 class="cd-headline rotate-1 text-white mb-4 pb-2">
							<span>We clean your</span> <span class="cd-words-wrapper">
								<b class="is-visible">House</b> <b>Office</b> <b>Kitchen</b>
							</span>
						</h1>

						<button
							class="custom-btn btn button button--atlas smoothscroll me-3"
							onclick="goToScroll('search_reservation');return false;">
							<span>Start Search !</span>

							<div class="marquee" aria-hidden="true">
								<div class="marquee__inner">
									<span>Start Search !</span> <span>Start Search !</span> <span>Start
										Search !</span> <span>Start Search !</span>
								</div>
							</div>
						</button>
						<a
							class="custom-btn custom-border-btn custom-btn-bg-white btn button button--pan smoothscroll"
							href="#services-section"> <span>Explore Services</span>
						</a>

						<!-- 사용자 주소 입력 및 검색 input -->
					</div>
				</div>
			</div>

		</section>
	</main>
<div class="searchWrap">
	<section class="search_reservation"
		style="height: 600px; position: relative;padding-right: 1.5%;">
		<div class="searchsection" style="margin-top:5%;"></div>
		<%-- <div class="searchAddr">
			<div class="input-group mb-3 input-group-jin" style="margin-top:15px;">
				<input type="text" class="form-control" name="addrSearch"
					id="keyword" placeholder="검색할 주소를 입력하세요"
					aria-label="Recipient's username" aria-describedby="button-addon2">
				<%
				String searchAddr = request.getParameter("addrSearch");
				%>
				<button class="btn btn-outline-secondary search-btn"
					id="button-addon2" style="height: 100%; background-color: #4f83d1;">Search</button>

			</div>


		</div> --%>
		<!-- 		<div id="map" style="width: 600px; height: 400px;"></div> -->
		<%
		/* TODO 세션에 유저주소정보를 담아서 업데이트해줘야함 */
		String searchAddr = addr;
		if (searchAddr == null) {
			searchAddr = "쌍촌동";
		} else {
			searchAddr = searchAddr.substring(0, 5);
		}
		%>
		<div class="option">
			<div class="kakao-search">
				<form id="searchAddrReservation"
					onsubmit="searchPlaces(); return false;">
					<input type="text" class="form-control" name="addrSearch"
						value="<%=searchAddr%>" id="keyword" placeholder="검색할 주소를 입력하세요"
						aria-label="Recipient's username" aria-describedby="button-addon2"
						size="15">
					<button type="button" class="btn search-btn" id="button-addon2">검색
						!</button>
				</form>
			</div>
		</div>
		<div class="map_menu_wrap">
			<div class="map_wrap">

				<div id="map"
					style="width: 450px; height: 450px; position: relative; overflow: hidden;"></div>
			</div>
			<div id="menu_wrap" class="bg_white">
				<hr>
				<ul id="placesList"></ul>
				<div id="pagination"></div>
			</div>
		</div>
		<form action="bookLaundryController" id="selectStore_form">

			<div class="selectReservation">
				<div class="reservation-info dp-none">
					<div id="selectStore" class="selectStore_pos"></div>
					<div style="margin-left: 15px;">예약하시겠습니까?</div>
				</div>
				<div class="map-searchbtn-group">
					<button type="submit"
						class="custom-btn btn button button--atlas smoothscroll me-3" style="width: 160px;">
						<span>예약하기</span>

						<div class="marquee" aria-hidden="true">
							<div class="marquee__inner">
								<span>예약하기</span> <span>예약하기</span> <span>Reservation</span>
								<span>예약하기</span>
							</div>
						</div>
					</button>
					
				</div>
				<div class="reservation-LatLng" style="display:none;">
					<div id="reservation-Lat"></div>
					<div id="reservation-Lng"></div>
				</div>
			</div>
		</form>
		<form action="reviewSelect">
			<div class="reservation-LatLng" style="display:none;">
				<div id="reservation-Lat1"></div>
				<div id="reservation-Lng1"></div>
			</div>
			<button type="submit" class="custom-btn custom-border-btn custom-btn-bg-white btn button button--pan smoothscroll reivewbtn"
						href="#services-section"> <span style="">Review</span>
			</button>
		</form>

	</section>
</div>
	<footer class="site-footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-12 d-flex align-items-center mb-4 pb-2">
					<div>
						<img src="images/bubbles.png" class="logo img-fluid" alt="" />
					</div>

					<ul class="footer-menu d-flex flex-wrap ms-5">
						<li class="footer-menu-item"><a href="#"
							class="footer-menu-link">About Us</a></li>

						<li class="footer-menu-item"><a href="#"
							class="footer-menu-link">Blog</a></li>

						<li class="footer-menu-item"><a href="#"
							class="footer-menu-link">Reviews</a></li>

						<li class="footer-menu-item"><a href="#"
							class="footer-menu-link">Contact</a></li>
					</ul>
				</div>

				<div class="col-lg-5 col-12 mb-4 mb-lg-0">
					<h5 class="site-footer-title mb-3">Our Services</h5>

					<ul class="footer-menu">
						<li class="footer-menu-item"><a href="#"
							class="footer-menu-link"> <i
								class="bi-chevron-double-right footer-menu-link-icon me-2"></i>
								House Cleaning
						</a></li>

						<li class="footer-menu-item"><a href="#"
							class="footer-menu-link"> <i
								class="bi-chevron-double-right footer-menu-link-icon me-2"></i>
								Car Washing
						</a></li>

						<li class="footer-menu-item"><a href="#"
							class="footer-menu-link"> <i
								class="bi-chevron-double-right footer-menu-link-icon me-2"></i>
								Laundry
						</a></li>

						<li class="footer-menu-item"><a href="#"
							class="footer-menu-link"> <i
								class="bi-chevron-double-right footer-menu-link-icon me-2"></i>
								Office Cleaning
						</a></li>

						<li class="footer-menu-item"><a href="#"
							class="footer-menu-link"> <i
								class="bi-chevron-double-right footer-menu-link-icon me-2"></i>
								Toilet Cleaning
						</a></li>
					</ul>
				</div>

				<div class="col-lg-4 col-md-6 col-12 mb-4 mb-lg-0 mb-md-0">
					<h5 class="site-footer-title mb-3">Office</h5>

					<p class="text-white d-flex mt-3 mb-2">
						<i class="bi-geo-alt-fill me-2"></i> Akershusstranda 20, 0150
						Oslo, Norway
					</p>

					<p class="text-white d-flex mb-2">
						<i class="bi-telephone-fill me-2"></i> <a href="tel: 110-220-9800"
							class="site-footer-link"> 110-220-9800 </a>
					</p>

					<p class="text-white d-flex">
						<i class="bi-envelope-fill me-2"></i> <a
							href="mailto:info@company.com" class="site-footer-link">
							info@company.com </a>
					</p>

					<ul class="social-icon mt-4">
						<li class="social-icon-item"><a href="#"
							class="social-icon-link button button--skoll"> <span></span>
								<span class="bi-twitter"></span>
						</a></li>

						<li class="social-icon-item"><a href="#"
							class="social-icon-link button button--skoll"> <span></span>
								<span class="bi-facebook"></span>
						</a></li>

						<li class="social-icon-item"><a href="#"
							class="social-icon-link button button--skoll"> <span></span>
								<span class="bi-instagram"></span>
						</a></li>
					</ul>
				</div>

				<div class="col-lg-3 col-md-6 col-6 mt-3 mt-lg-0 mt-md-0">
					<div class="featured-block">
						<h5 class="text-white mb-3">Service Hours</h5>

						<strong class="d-block text-white mb-1">Mon - Fri</strong>

						<p class="text-white mb-3">8:00 AM - 5:30 PM</p>

						<strong class="d-block text-white mb-1">Sat</strong>

						<p class="text-white mb-0">6:00 AM - 2:30 PM</p>
					</div>
				</div>
			</div>
		</div>

		<div class="site-footer-bottom">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-12">
						<p class="copyright-text mb-0">Copyright © 2036 Clean Work
							Co., Ltd.</p>
					</div>

					<div class="col-lg-6 col-12 text-end">
						<p class="copyright-text mb-0">
							// Designed by <a href="https://www.tooplate.com"
								target="_parent">Tooplate</a> //
						</p>
					</div>
				</div>
			</div>
		</div>
	</footer>

	
	<% email=(String)session.getAttribute("email"); %>
	<!-- 유저 밸류값은 표현식으로 세션에서 저장된거 가져올거임 -->
	<!-- Scrollable modal -->
<!-- Button trigger modal -->
<button type="button" class="btn btn-primary chatbotMain" id="CSR" data-remote="ChatModal3.jsp"  data-bs-toggle="modal" data-bs-target="#staticBackdrop">
  <img alt="CSR" src="./images/CSR2.png">
</button>

<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrolable">
    <div class="modal-content">
      <div class="modal-header"  style="background-color: #7CB8EB;color: white">
        <h1 class="modal-title fs-5" id="staticBackdropLabel">크리링 Chat-Bot</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" >
      
      </div>
      <div class="modal-footer">
        <button type="button" id="Exit"class="btn btn-secondary" data-bs-dismiss="modal">나가기</button>
      </div>
    </div>
  </div>
</div>

	<script src="js/bootstrap.min.js"></script>
	<script src="./js/jquery-3.7.0.js"></script>
<script>
		$('#staticBackdrop').on('show.bs.modal', function(e) {
	
			var button = $(e.relatedTarget);
			var modal = $(this);
			
			modal.find('.modal-body').load(button.data("remote"));
	
		});
		$('#Exit').on('click',function(){
			window.location.href='http://localhost:8081/clearing2/chattingStart.jsp';
			
		});
	</script> 
	
	<!-- JAVASCRIPT FILES -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.backstretch.min.js"></script>
	<script src="js/counter.js"></script>
	<script src="js/countdown.js"></script>
	<script src="js/init.js"></script>
	<script src="js/modernizr.js"></script>
	<script src="js/animated-headline.js"></script>
	<script src="js/custom.js"></script>
	<script src="js/kakaoMap.js"></script>
	<script src="js/btnScroll.js"></script>
</body>
</html>
