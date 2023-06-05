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
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4fe78505e64a5ac31be2e7b890da39d4&libraries=services,clusterer,drawing"></script>



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
						href="index.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="about.html">Review board
							</a></li>
					<li class="nav-item"><a class="nav-link" href="requestBoardMain.jsp">Inquiry board
							</a></li>

					<li class="nav-item"><a class="nav-link" href="contact.html">Contact</a>
					</li>

					<%
					if (session.getAttribute("member") != null || session.getAttribute("storeMember") != null) {
					%>
					<li class="nav-item ms-3"><a
						class="nav-link custom-btn custom-border-btn custom-btn-bg-white btn"
						href="Mypage.jsp">My page</a></li>
					<li class="nav-item ms-3"><a
						class="nav-link custom-btn custom-border-btn custom-btn-bg-white btn"
						href="logOut">Log-Out</a></li>
					<%
					} else {
					%>
					<li class="nav-item ms-3"><a
						class="nav-link custom-btn custom-border-btn custom-btn-bg-white btn"
						href="login1.jsp">Get Start</a></li>
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
			searchAddr = "농성동";
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
					<button type="button" class="btn search-btn" id="button-addon2">Search
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
						class="custom-btn btn button button--atlas smoothscroll me-3">
						<span>Reservation</span>

						<div class="marquee" aria-hidden="true">
							<div class="marquee__inner">
								<span>Reservation</span> <span>Reservation</span> <span>Reservation</span>
								<span>Reservation</span>
							</div>
						</div>
					</button>
					
				</div>
				<div class="reservation-LatLng">
					<div id="reservation-Lat"></div>
					<div id="reservation-Lng"></div>
				</div>
			</div>
		</form>
		<form action="reviewSelect">
			<div class="reservation-LatLng">
				<div id="reservation-Lat1"></div>
				<div id="reservation-Lng1"></div>
			</div>
			<button type="submit" class="custom-btn custom-border-btn custom-btn-bg-white btn button button--pan smoothscroll reivewbtn"
						href="#services-section"> <span style="">Review</span>
			</button>
		</form>

	</section>

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
