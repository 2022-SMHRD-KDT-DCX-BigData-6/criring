<%@page import="com.clearing.model.reservation_detailsDAO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.clearing.model.usingVO"%>
<%@page import="java.util.ArrayList"%>
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
<link href="css/mypageJ.css" rel="stylesheet">
<!--

Tooplate 2132 Clean Work

https://www.tooplate.com/view/2132-clean-work

Free Bootstrap 5 HTML Template

-->
<script src="https://kit.fontawesome.com/a32650dbb1.js"
	crossorigin="anonymous"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=683c7e08c86fe41ea5c21dd7148dc9f3&libraries=services,clusterer,drawing"></script>
	
</head>
<body>
	<%
	String lat = request.getParameter("lat");
	String lng = request.getParameter("lng");
	reservation_detailsDAO dao = new reservation_detailsDAO();
	ArrayList<usingVO> details = (ArrayList<usingVO>) request.getAttribute("details");
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
				class="ms-2">Clean Work</span>
			</a>

			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link active"
						href="index.jsp">Home</a></li>

					<li class="nav-item"><a class="nav-link" href="about.html">About
							Us</a></li>

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#section_5"
						id="navbarLightDropdownMenuLink" role="button"
						data-bs-toggle="dropdown" aria-expanded="false">Pages</a>

						<ul class="dropdown-menu dropdown-menu-light"
							aria-labelledby="navbarLightDropdownMenuLink">
							<li><a class="dropdown-item" href="services.html">Our
									Services</a></li>

							<li><a class="dropdown-item" href="coming-soon.html">Coming
									Soon</a></li>

							<li><a class="dropdown-item" href="page-404.html">Page
									404</a></li>
						</ul></li>

					<li class="nav-item"><a class="nav-link" href="contact.html">Contact</a>
					</li>
					<li class="nav-item ms-3"><a
						class="nav-link custom-btn custom-border-btn custom-btn-bg-white btn"
						href="logOut">Log-Out</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<main>
		<section
			class="hero-section hero-section-full-height d-flex justify-content-center align-items-center">
			<div class="section-overlay"></div>
			<ul class="menu_icon_group">
				<li class="menu_icon">
					<button class="linkBtn" id="linkBtn1">
						<i class="fa-solid fa-user"></i>
						<span>회원 정보 수정</span>
					</button>
					
				</li>
				<li class="menu_icon">
					<button class="linkBtn" id="linkBtn2">
						<i class="fa-solid fa-calendar-days"></i>
						<span>예약 내역 조회</span>
					</button>
					
				</li>
				<li class="menu_icon">
					<button class="linkBtn" id="linkBtn3">
						<i class="fa-solid fa-camera-retro"></i>
						<span>내가 쓴 리뷰</span>
					</button>
				</li>
			</ul>
		</section>


		

		<section class="services-section section-padding section-bg"
			id="services-section">
		<section id="services-section1" style="display: none;">
			<div class="section-overlay"></div>

			<div class="container" style="margin-top: -3%;">
				<div class="row">
					<form action="myPageUpdate" method="post" class="myPageUpdateForm">
						<div class="mb-3 row">
							<label for="staticEmail" class="col-sm-2 col-form-label" style="color: #77B2E8">Email</label>
							<div class="col-sm-10">
								<input type="text" readonly class="form-control-plaintext"
									id="staticEmail" name="inputEmail"
									value="<%=session.getAttribute("email")%>">
							</div>
						</div>
						<!-- 원래 비밀번호 확인 -->
						<div class="mb-3 row">
							<label for="inputPassword" class="col-sm-2 col-form-label" style="color: #77B2E8">기존
								비밀번호</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="inputPassword"
									name="inputPassword">
							</div>
						</div>
						<!-- 수정할 비밀번호 -->
						<div class="mb-3 row">
							<label for="inputUpdatePassword" class="col-sm-2 col-form-label" style="color: #77B2E8">변경
								할 비밀번호</label>
							<div class="col-sm-10">
								<input type="password" class="form-control"
									id="inputUpdatePassword" name="inputUpdatePassword">
							</div>
						</div>
						<!-- 수정한 비밀번호 확인 -->
						<div class="mb-3 row">
							<label for="inputUpdatePasswordChk"
								class="col-sm-2 col-form-label" style="color: #77B2E8">변경 할 비밀번호 확인</label>
							<div class="col-sm-10">
								<input type="password" class="form-control"
									id="inputUpdatePasswordChk" name="inputUpdatePasswordChk">
							</div>
						</div>
						<div class="mb-3 row">
						<label class="col-sm-2 col-form-label" for="sample5_roadAddress" style="color: #77B2E8">Address</label>
							<div class="col-sm-10"> 
							<input type="button" class="btn btn-primary btn-lg btn-block"
								onclick="sample5_execDaumPostcode()" value="주소 검색"  style="background-color: #77B2E8; border-color: #77B2E8">
								<input type="text" id="sample5_address" name="joinAddr"
									class="form-control" value="<%=session.getAttribute("addr")%>"
									readonly style="width: 1%">
						</div> 
						<div class="form-outline mb-4">

						</div>
						</div>


						<div id="map"
							style="width: 300px; height: 300px; margin-top: 10px; display: none"></div>
						<div id="searchLat" style="display: none;">
							<input type="text" name="userLatInput" id="userLat-input"
								value="<%=request.getParameter("lat")%>">
							<!-- class="dp-none;" -->
						</div>
						<div id="searchLng" style="display: none;">
							<input type="text" name="userLngInput" id="userLng-input"
								value="<%=request.getParameter("lng")%>">
							<!-- class="dp-none;" -->
						</div>

						<script>
							function sample4_execDaumPostcode() {
								new daum.Postcode(
										{
											oncomplete : function(data) {
												// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

												// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
												// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
												var roadAddr = data.roadAddress; // 도로명 주소 변수
												var extraRoadAddr = ""; // 참고 항목 변수

												// 법정동명이 있을 경우 추가한다. (법정리는 제외)
												// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
												if (data.bname !== ""
														&& /[동|로|가]$/g
																.test(data.bname)) {
													extraRoadAddr += data.bname;
												}
												// 건물명이 있고, 공동주택일 경우 추가한다.
												if (data.buildingName !== ""
														&& data.apartment === "Y") {
													extraRoadAddr += extraRoadAddr !== "" ? ", "
															+ data.buildingName
															: data.buildingName;
												}
												// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
												if (extraRoadAddr !== "") {
													extraRoadAddr = " ("
															+ extraRoadAddr
															+ ")";
												}

												// 우편번호와 주소 정보를 해당 필드에 넣는다.

												document
														.getElementById("sample4_roadAddress").value = roadAddr;

												// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
											},
										}).open();
							}
							var mapContainer = document.getElementById('map'), // 지도를 표시할 div
							mapOption = {
								center : new daum.maps.LatLng(37.537187,
										127.005476), // 지도의 중심좌표
								level : 5
							// 지도의 확대 레벨
							};

							//지도를 미리 생성
							var map = new daum.maps.Map(mapContainer, mapOption);
							//주소-좌표 변환 객체를 생성
							var geocoder = new daum.maps.services.Geocoder();
							//마커를 미리 생성
							var marker = new daum.maps.Marker({
								position : new daum.maps.LatLng(37.537187,
										127.005476),
								map : map
							});

							function sample5_execDaumPostcode() {
								new daum.Postcode(
										{
											oncomplete : function(data) {
												var addr = data.address; // 최종 주소 변수

												// 주소 정보를 해당 필드에 넣는다.
												document
														.getElementById("sample5_address").value = addr;
												// 주소로 상세 정보를 검색
												geocoder
														.addressSearch(
																data.address,
																function(
																		results,
																		status) {
																	// 정상적으로 검색이 완료됐으면
																	if (status === daum.maps.services.Status.OK) {

																		var result = results[0]; //첫번째 결과의 값을 활용

																		// 해당 주소에 대한 좌표를 받아서
																		var coords = new daum.maps.LatLng(
																				result.y,
																				result.x);
																		// 지도를 보여준다. 지워야함 TODO
																		map
																				.relayout();
																		// 지도 중심을 변경한다.
																		map
																				.setCenter(coords);
																		// 마커를 결과값으로 받은 위치로 옮긴다.
																		marker
																				.setPosition(coords)

																		var userLat = document
																				.getElementById('searchLat');
																		userLat.innerHTML = '<input type="text" name="userLatInput" id="userLat-input">';
																		var userLats = document
																				.getElementById('userLat-input');
																		userLats.value = coords
																				.getLat();
																		var userLng = document
																				.getElementById('searchLng');
																		userLng.innerHTML = '<input type="text" name="userLngInput" id="userLng-input">';
																		var userLngs = document
																				.getElementById('userLng-input');
																		userLngs.value = coords
																				.getLng();
																	}
																});
											}
										}).open();
							}
						</script>

						<button type="submit"
							class="btn btn-primary btn-lg btn-block modal-btn" style="background-color: #77B2E8; border-color: #77B2E8" >정보 수정</button><br><br>
						<a href="secessionMember"><button
								class="btn btn-primary btn-lg btn-block modal-btn"  style="background-color: #77B2E8; border-color: #77B2E8">회원탈퇴</button></a>
					</form>

				</div>
			</div>
		</section>
				
		</section>

		
	</main>

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
	
	<script src="./js/jquery-3.7.0.js"></script>
	
	
	<script type="text/javascript">
	
	$('#linkBtn1').on('click',function(){
				$("#services-section1").css("display","block");
		
		 
	});
	$('#linkBtn2').on('click',function(){
				$.ajax({
					url:"selectReservationDetails",
					success: function(result){
						$("#services-section").html(result);
					}
				});		
		 
	});
	$('#linkBtn3').on('click',function(){
				$.ajax({
					url:"Review_ViewUserController",
					success: function(result){
						$("#services-section").html(result);
					}
				});		
		 
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
