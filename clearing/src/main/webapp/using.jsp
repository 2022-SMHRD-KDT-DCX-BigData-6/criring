<%@page import="java.time.LocalDateTime"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.time.LocalTime"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>크리링</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<!-- CSS FILES -->
<link rel="preconnect" href="https://fonts.googleapis.com" />

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />

<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;0,700;1,400&display=swap"
	rel="stylesheet" />

<link href="css/bootstrap.min.css" rel="stylesheet" />

<link href="css/bootstrap-icons.css" rel="stylesheet" />

<link href="css/tooplate-clean-work.css" rel="stylesheet" />
<link href="css/using.css" rel="stylesheet">
<!-- <style type="text/css">
@font-face {
	font-family: 'gmarket';
	src: url('./fonts/GmarketSansTTFMedium.ttf') format('truetype');
}

body {
	font-family: 'gmarket';
}

.btn {
	color: white;
	border-color: white;
	height: 80px;
	width: 71px;
	font-size: 15px;
	background-color: #7CB8EB;
}

.form-select {
	display: inline-block;
	border: 2px solid;
	border-color: #7CB8EB;
	width: 180px;
	height: 40px;
	margin-left: 100px;
}

.form-select option {
	text-align: center;
}

.book {
	width: 150px;
	height: 55px;
	margin-right: 136px;
	margin-left: 14px;
}

.back {
	width: 150px;
	height: 55px;
}

.center-pos {
	diplay: inline-block;
	position: relative;
	align-items: center;
	width: 100%;
	height: 100%;
}

.abs-pos {
	position: absolute;
	top: 10%;
	left: 10%;
}

#calendarForm {
	width: 210px;
	height: 50px;
}
</style>
 -->
</head>
<body>
	<%
	int nTimeNow = (int) request.getAttribute("nTimeNow");
	String StoreName = (String) session.getAttribute("store_name");
	String StoreAddr = (String) session.getAttribute("store_addr");
	int laundry_cnt = (int) session.getAttribute("laundry_cnt");
	int dryer_cnt = (int) session.getAttribute("dryer_cnt");
	int disableHH = nTimeNow / 100 * 100;
	int disableMi = nTimeNow % 100;
	int used[] = (int[]) request.getAttribute("used");
	int usedLength = used.length;
	String seltime = (String) request.getAttribute("seltime");

	session.setAttribute("store_name", StoreName);
	session.setAttribute("store_addr", StoreAddr);
	session.setAttribute("laundry_cnt", laundry_cnt);
	session.setAttribute("dryer_cnt", dryer_cnt);
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
				src="images/bubbles.png" class="logo img-fluid" alt=""> <span
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
					<li class="nav-item"><a class="nav-link" href="index.jsp">메인</a></li>
					<li class="nav-item"><a class="nav-link" href="about.html">후기
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="requestBoardMain.jsp">문의 </a></li>
					<li class="nav-item"><a class="nav-link" href="contact.html">Contact</a>
					</li>

					<li class="nav-item ms-3"><a
						class="nav-link custom-btn custom-border-btn custom-btn-bg-white btn"
						href="selectReservationDetails">내 정보</a></li>
					<%-- href="Mypage.jsp?email=<%=email%>&addr=<%=addr%>&lat=<%=lat%>&lng=<%=lng%>" --%>
					<li class="nav-item ms-3"><a
						class="nav-link custom-btn custom-border-btn custom-btn-bg-white btn"
						href="logOut">로그아웃</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<main>
		<section
			class="hero-section hero-section-full-height d-flex justify-content-center align-items-center">
			<div class="section-overlay"></div>

			<div class="container">
				<div class="row mainForm">
					<div class="col-lg-7 col-12 text-center mx-auto">
										<h3 class="res_current">예약 현황</h3>
										<div class="storename">
											<span><%=StoreName%></span>
											<span><%=StoreAddr%>점</span>
										</div>
						<form action="usingController" method="post">
							<div class="center-pos">
								<div class="abs-pos">
									<div class="reservation-input">
										<input type="date" id="Date" name="date" class="date-select"> <select
											class="form-select" name="time"
											aria-label="multiple select example">
											<%
											if (seltime == null) {
											%>
											<option selected="selected" disabled="disabled">예약시간</option>
											<%
											} else {
											%>
											<option selected="selected" disabled="disabled"><%=seltime%></option>
											<%
											}
											%>
											<%
											for (int i = 6; i < 24; i++) {
												if ((i * 100) >= disableHH) {
													if (i == 9) {
												if (disableMi < 21) {
											%>
											<option value="0<%=i%>:00~<%=i + 1%>:00">0<%=i%>:00~<%=i + 1%>:00
											</option>
											<%
											} else {
											if (i < 23) {
											%>
											<option value="<%=i + 1%>:00~<%=i + 4%>:00"><%=i + 1%>:00~<%=i + 2%>:00
											</option>
											<%
											}
											%>
											<%
											}
											%>
											<%
											} else if (i < 9) {
											if (disableMi < 21) {
											%>
											<option value="0<%=i%>:00~0<%=i + 1%>:00">0<%=i%>:00~<%=i + 1%>:00
											</option>
											<%
											} else {
											if (i < 23) {
											%>
											<option value="0<%=i + 1%>:00~0<%=i + 1%>:00">0<%=i%>:00~<%=i + 1%>:00
											</option>
											<%
											}
											%>
											<%
											}
											%>
											<%
											} else {
											if (disableMi < 21) {
											%>
											<option value="<%=i%>:00~<%=i + 1%>:00"><%=i%>:00~<%=i + 1%>:00
											</option>
											<%
											} else {
											if (i < 23) {
											%>
											<option value="<%=i + 1%>:00~<%=i + 2%>:00"><%=i + 1%>:00~<%=i + 2%>:00
											</option>

											<%
											}
											%>

											<%
											}
											%>
											<%
											}
											%>
											<%
											}
											%>
											<%
											}
											%>

										</select>
									</div>

									<div class="laundry-form">
										<div class="res-laundry">
											<div class="laundry-group">
												<%
												for (int i = 1; i <= laundry_cnt; i++) {
												%>
	
												<div class="btn-group" role="group"
													aria-label="Basic checkbox toggle button group">
													<input type="checkbox" class="btn-check"
														id="btncheck<%=100 + i%>" name="laundry"
														value="<%=100 + i%>" autocomplete="off"
														onclick='checkOnlyOne(this)'> <label
														class="res-btn btn-outline-primary"
														for="btncheck<%=100 + i%>">세탁기</label>
												</div>

												<%
												}
												%>
											</div>
											<div class="dryer-group">
												<%
												for (int i = 1; i <= dryer_cnt; i++) {
												%>
	
												<div class="btn-group-vertical" role="group"
													aria-label="Basic checkbox toggle button group">
													<input type="checkbox" class="btn-check"
														id="btncheck<%=200 + i%>" name="laundry"
														value="<%=200 + i%>" autocomplete="off"
														onclick='checkOnlyOne(this)'> <label
														class="res-btn btn-outline-primary"
														for="btncheck<%=200 + i%>">건조기</label>
												</div>
	
												<%
												}
												%>
											</div>
										</div>
										<div class="res-complete-btn">
											<button type="submit" class="btn btn-primary book res-complete">예약하기</button>
											<a href="services.html">
												<button type="button" class="btn btn-primary back">돌아가기</button>
											</a>
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>
	</main>
	<!-- footer 넣어야함 TODO -->
	<!-- 사용중인 세탁기 사용불가 js -->
	<script type="text/javascript">
	<%for (int i = 0; i < usedLength; i++) {%>
	var num = <%=used[i]%>;
	if(num<200){
		var laundry = document.getElementById('btncheck<%=used[i]%>');
		laundry.setAttribute("disabled","");
	}else{
		var dryer = document.getElementById('btncheck<%=used[i]%>');
		dryer.setAttribute("disabled","");
	}
	

	<%}%>
	</script>
	<script src="./js/jquery-3.7.0.js"></script>
	<!-- 날짜 선택 js -->
	<script type="text/javascript">
		$('#Date').on('blur',function(){
			const selDate= document.querySelector("#Date").value;
			var date = new Date();
		    var year = date.getFullYear();
		    var month = ("0" + (1 + date.getMonth())).slice(-2);
		    var day = ("0" + date.getDate()).slice(-2);
		    
		    const now_date = year+"-"+month+"-"+day;
			if(now_date!==selDate){
				 window.location.href="http://localhost:8091/clearing3/DateController?date="+selDate;
				
			};
		});
		
		$("select[name=time]").change(function(){
		 	var selTime =$(this).val();
		 	const selDate= document.querySelector("#Date").value;
		 	 window.location.href="http://localhost:8091/clearing/TimeController?time="+selTime+"&date="+selDate;//value값 가져오기 
		});
	</script>
	<!-- js 달력 선택 제한 스크립트 -->
	<script>
		var now_utc = Date.now()
		// getTimezoneOffset()은 현재 시간과의 차이를 분 단위로 반환
		var timeOff = new Date().getTimezoneOffset()*60000; 
		var maxDate = new Date((now_utc+518400000)-timeOff).toISOString().split("T")[0];
		// new Date(now_utc-timeOff).toISOString()은 '2022-05-11T18:09:38.134Z'를 반환
		var today = new Date(now_utc-timeOff).toISOString().split("T")[0];
		document.getElementById("Date").setAttribute("max", maxDate);
		document.getElementById("Date").setAttribute("min", today);
		document.getElementById("Date").setAttribute("value", today);
		var time = new Date();
		var hours = ('0' + time.getHours()).slice(-2); 
		var minutes = ('0' + time.getMinutes()).slice(-2);

		var currentTime = hours + minutes;

		
		function checkOnlyOne(element) {
			  
			  const checkboxes 
			      = document.getElementsByName("laundry");
			  
			  checkboxes.forEach((cb) => {
			    cb.checked = false;
			  })
			  
			  element.checked = true;
			}
	 </script>

</body>
</html>