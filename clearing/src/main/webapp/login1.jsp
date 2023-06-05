<%@page import="com.clearing.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
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
<link href="css/login.css" rel="stylesheet"/>

<!--

Tooplate 2132 Clean Work

https://www.tooplate.com/view/2132-clean-work

Free Bootstrap 5 HTML Template

-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
	integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=683c7e08c86fe41ea5c21dd7148dc9f3&libraries=services"></script>
<script>
	
</script>
</head>

<body>
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">크리링 계정 만들기</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="login-background">
						<section class="vh-100">
							<div class="container py-5 h-100">
								<div
									class="row d-flex align-items-center justify-content-center h-100 modal-form">
									<form action="joinMember" method="post" name="userInfo">
										<div class="memberStore"
											style="display: flex; justify-content: space-around;">
											<div class="form-check">
												<!-- onclick=getMember(event)지움 -->
												<input class="form-check-input" type="radio"
													name="flexRadioDefault" id="flexRadioDefault1"
													value="member" checked /> <label class="form-check-label"
													for="flexRadioDefault1"> 일반회원 </label>
											</div>

											<div class="form-check">
												<!-- getMember(event)지움 -->
												<input class="form-check-input" type="radio"
													name="flexRadioDefault" id="flexRadioDefault2"
													value="store" /> <label class="form-check-label"
													for="flexRadioDefault2"> 사업자 </label>
											</div>
										</div>
										<script>
											$(
													function() {
														$(
																"input[name='flexRadioDefault']")
																.click(
																		function() {
																			var test = $(
																					"input[name='flexRadioDefault']:checked")
																					.val();
																			if ($(
																					"input[name='flexRadioDefault']:checked")
																					.val() == "member") {
																				$(
																						"#form1Example25")
																						.attr(
																								"disabled",
																								true);
																				$(
																						"#form1Example26")
																						.attr(
																								"disabled",
																								true);
																			} else {

																				$(
																						"#form1Example25")
																						.attr(
																								"disabled",
																								false);
																				$(
																						"#form1Example26")
																						.attr(
																								"disabled",
																								false);
																			}
																		});

													})
										</script>
										<!-- Email input -->
										<div class="form-outline mb-4">
											<label class="form-label" for="form1Example13">Email
												address</label>
												<input type="email" id="form1Example13" name="joinEmail" class="form-control form-control-lg" />
												<button id ="idCheck" type="button">중복체크</button>
												<input type="hidden" name="emailDuplication" value="emailUncheck">
												
										</div>

										<!-- Password input -->
										<div class="form-outline mb-4">
											<label class="form-label" for="form1Example23">Password</label>
											<input type="password" id="form1Example23" name="joinPw"
												class="form-control form-control-lg" />
										</div>

										<div class="form-outline mb-4">
											<label class="form-label" for="form1Example24">Name</label> <input
												type="text" id="form1Example24" name="joinName"
												class="form-control form-control-lg" />
										</div>

										<div class="form-outline mb-4">
											<label class="form-label" for="sample5_roadAddress">Address</label>
											<input type="text" id="sample5_address" name="joinAddr"
												class="form-control form-control-lg" placeholder="주소" readonly
												 > <input type="button"
												class="btn btn-primary btn-lg btn-block"
												onclick="sample5_execDaumPostcode()" value="주소 검색"><br>
											<!-- <input type="text" id="sample4_roadAddress"
												placeholder="도로명주소" name="joinAddr"
												class="form-control form-control-lg" />
											<input
												type="button" onclick="sample4_execDaumPostcode()"
												class="btn btn-primary btn-lg btn-block" value="주소 찾기" /><br /> -->
										</div>

										<div id="map"
											style="width: 300px; height: 300px; margin-top: 10px; display: none"></div>
										<div id="searchLat" style="display: none;">
											<!-- class="dp-none;" -->
										</div>
										<div id="searchLng" style="display: none;">
											<!-- class="dp-none;" -->
										</div>

										<script>
											function sample4_execDaumPostcode() {
												new daum.Postcode(
														{
															oncomplete : function(
																	data) {
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
											var mapContainer = document
													.getElementById('map'), // 지도를 표시할 div
											mapOption = {
												center : new daum.maps.LatLng(
														37.537187, 127.005476), // 지도의 중심좌표
												level : 5
											// 지도의 확대 레벨
											};

											//지도를 미리 생성
											var map = new daum.maps.Map(
													mapContainer, mapOption);
											//주소-좌표 변환 객체를 생성
											var geocoder = new daum.maps.services.Geocoder();
											//마커를 미리 생성
											var marker = new daum.maps.Marker(
													{
														position : new daum.maps.LatLng(
																37.537187,
																127.005476),
														map : map
													});

											function sample5_execDaumPostcode() {
												new daum.Postcode(
														{
															oncomplete : function(
																	data) {
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
										<div>
											<input type="number" id="form1Example25" name="laundryCnt"
												class="form-control form-control-lg laundryNum"
												placeholder="세탁기 수" disabled="disabled" /> <input
												type="number" id="form1Example26" name="dryerCnt"
												class="form-control form-control-lg" placeholder="건조기 수"
												disabled="disabled" />

										</div>
										<!-- Submit button -->
										<button type="submit"
											class="btn btn-primary btn-lg btn-block modal-btn" onclick="formChk();">
											Sign up</button>
									</form>
								</div>
							</div>
						</section>
					</div>
				</div>
			</div>
		</div>
	</div>


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
				</ul>
			</div>
		</div>
	</nav>

	<main>
		<section
			class="hero-section hero-section-full-height d-flex justify-content-center align-items-center">
			<div class="section-overlay"></div>

			<div class="container">
				<div class="row">
					<!-- GRID Place -->
					<div class="login-background">
						<section class="vh-100">
							<div class="container py-5 h-100">
								<div
									class="row d-flex align-items-center justify-content-center h-100">
									<div class="col-md-8 col-lg-7 col-xl-6">
										<img
											src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.svg"
											class="img-fluid" alt="Phone image" />
									</div>
									<div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">

										<form action="loginChk" method="post">
											<!-- Member OR Store -->
											<div class="memberLoginChk">
												<div class="form-check">
													<input class="form-check-input" type="radio"
														name="loginMemberStore" id="flexRadioDefault1"
														value="member" checked> <label
														class="form-check-label" for="flexRadioDefault1">
														일반 로그인</label>
												</div>
												<div class="form-check">
													<input class="form-check-input" type="radio"
														name="loginMemberStore" id="flexRadioDefault2"
														value="loginMemberStore"> <label class="form-check-label"
														for="flexRadioDefault2"> 사업자 로그인 </label>
												</div>
											</div>
											<!-- Email input -->
											<div class="form-outline mb-4">
												<input type="text" id="form1Example31" name="inputEmail"
													class="form-control form-control-lg" /> <label
													class="form-label" for="form1Example31">Email
													address</label>
											</div>

											<!-- Password input -->
											<div class="form-outline mb-4">
												<input type="password" id="form1Example30" name="inputPw"
													class="form-control form-control-lg" /> <label
													class="form-label" for="form1Example30">Password</label>
											</div>

											<div
												class="d-flex justify-content-around align-items-center mb-4">
												<!-- Checkbox -->
												<div class="form-check">
													<input class="form-check-input" type="checkbox" value=""
														id="form1Example3" checked /> <label
														class="form-check-label" for="form1Example3">
														Remember me </label>
												</div>
												<a href="#!">Forgot password?</a>
											</div>

											<!-- Submit button -->
											<div class="joinform-btn">
												<button type="submit"
													class="btn btn-primary btn-lg btn-block">Sign in</button>
												<button type="button"
													class="btn btn-primary btn-lg btn-block"
													data-bs-toggle="modal" data-bs-target="#exampleModal">
													Join in</button>
											</div>
										</form>

									</div>
								</div>
							</div>
						</section>
					</div>
				</div>
			</div>

			<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320">
                    <path fill="#ffffff" fill-opacity="1"
					d="M0,224L40,229.3C80,235,160,245,240,250.7C320,256,400,256,480,240C560,224,640,192,720,176C800,160,880,160,960,138.7C1040,117,1120,75,1200,80C1280,85,1360,139,1400,165.3L1440,192L1440,320L1400,320C1360,320,1280,320,1200,320C1120,320,1040,320,960,320C880,320,800,320,720,320C640,320,560,320,480,320C400,320,320,320,240,320C160,320,80,320,40,320L0,320Z"></path>
                </svg>
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
	<!-- 날짜 선택 js -->
	<script type="text/javascript">
		$('#idCheck').on('click',function(){
		    var email = $('#form1Example13').val();
		    $.ajax({
				url:"http://localhost:8081/clearing/loginDChk",
				dataType:'text',
				data:{MB_EMAIL:email},
				success: function(result,textStatus){
					if(result ==='usable'){
						alert("사용할수 있는 아이디 입니다.");
					}else{
						alert("이미 사용중인 아이디 입니다.");
					}
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
	<script src="js/loginform.js"></script>
</body>
</html>
