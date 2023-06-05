<%@page import="com.clearing.model.admin_replyDTO"%>
<%@page import="com.clearing.model.admin_replyDAO"%>
<%@page import="com.clearing.model.Request_BoardDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.clearing.model.Request_BoardDAO"%>
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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<style type="text/css">
@import 'https://fonts.googleapis.com/css?family=Open+Sans:600,700';

* {font-family: 'Open Sans', sans-serif;}

#writer{
	float: right;
}

#main{
	float: left;
}

.rwd-table {
  margin: auto;
  width: 1200px;
  min-width: 300px;
  max-width: 100%;
  border-collapse: collapse;
}

.rwd-table tr:first-child {
  border-top: none;
  background: #7cb8eb;
  color: #fff;
}

.rwd-table tr {
  border-top: 1px solid #ddd;
  border-bottom: 1px solid #ddd;
  background-color: #f5f9fc;
}

.rwd-table tr:nth-child(odd):not(:first-child) {
  background-color: #ebf3f9;
}

.rwd-table th {
  display: none;
}

.rwd-table td {
  display: block;
}

.rwd-table td:first-child {
  margin-top: .5em;
}

.rwd-table td:last-child {
  margin-bottom: .5em;
}

.rwd-table td:before {
  content: attr(data-th) ": ";
  font-weight: bold;
  width: 120px;
  display: inline-block;
  color: #000;
}

.rwd-table th,
.rwd-table td {
  text-align: center;
}

.rwd-table {
  color: #333;
  border-radius: .4em;
  overflow: hidden;
}

.rwd-table tr {
  border-color: #bfbfbf;
}

.rwd-table th,
.rwd-table td {
  padding: .5em 1em;
}
@media screen and (max-width: 601px) {
  .rwd-table tr:nth-child(2) {
    border-top: none;
  }
}
@media screen and (min-width: 600px) {
  .rwd-table tr:hover:not(:first-child) {
    background-color: #d8e7f3;
  }
  .rwd-table td:before {
    display: none;
  }
  .rwd-table th,
  .rwd-table td {
    display: table-cell;
    padding: .25em .5em;
  }
  .rwd-table th:first-child,
  .rwd-table td:first-child {
    padding-left: 0;
  }
  .rwd-table th:last-child,
  .rwd-table td:last-child {
    padding-right: 0;
  }
  .rwd-table th,
  .rwd-table td {
    padding: 1em !important;
  }
}


/* THE END OF THE IMPORTANT STUFF */

/* Basic Styling */
body {
background: #4B79A1;
background: -webkit-linear-gradient(to left, #4B79A1 , #283E51);
background: linear-gradient(to left, #4B79A1 , #283E51);        
}
h1 {
  text-align: center;
  font-size: 2.4em;
  color: #f2f2f2;
  padding-bottom: 100px;
}
.req_board {
	padding-top: 10%;
  	display: block;
  	text-align: center;
}
h3 {
  display: inline-block;
  position: relative;
  text-align: center;
  font-size: 1.5em;
  color: #cecece;
}
h3:before {
  content: "\25C0";
  position: absolute;
  left: -50px;
  -webkit-animation: leftRight 2s linear infinite;
  animation: leftRight 2s linear infinite;
}
h3:after {
  content: "\25b6";
  position: absolute;
  right: -50px;
  -webkit-animation: leftRight 2s linear infinite reverse;
  animation: leftRight 2s linear infinite reverse;
}
@-webkit-keyframes leftRight {
  0%    { -webkit-transform: translateX(0)}
  25%   { -webkit-transform: translateX(-10px)}
  75%   { -webkit-transform: translateX(10px)}
  100%  { -webkit-transform: translateX(0)}
}
@keyframes leftRight {
  0%    { transform: translateX(0)}
  25%   { transform: translateX(-10px)}
  75%   { transform: translateX(10px)}
  100%  { transform: translateX(0)}
}
.title {
	text-decoration: none;
	color: black;
}
.ju {
    bottom: 570px;
    position: absolute;
}
.ms-2{
	color: #FFFFFF;
}
</style>


<!--

Tooplate 2132 Clean Work

https://www.tooplate.com/view/2132-clean-work

Free Bootstrap 5 HTML Template

-->
</head>

<body>
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

	<nav class="navbar navbar-expand-lg ju">
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
						href="selectReservationDetails">My page</a></li>
					<%-- href="Mypage.jsp?email=<%=email%>&addr=<%=addr%>&lat=<%=lat%>&lng=<%=lng%>" --%>
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

<!-- 	<main>
		<section
			class="hero-section hero-section-full-height d-flex justify-content-center align-items-center">
			<div class="section-overlay"></div>
 -->	
 	<%
		Request_BoardDAO dao = new Request_BoardDAO();
		List<Request_BoardDTO> sel_list = dao.selectAll_request();
		int num = 0;
	%>

<!-- 		</section>
	</main> -->
	
	<div class="container req_board">
	<h1>문의게시판</h1>
	<%if(session.getAttribute("email") != null){ %>
	<a href="requestBoardWrite.jsp"><button type="button" class="btn btn-secondary" id="writer">게시글 작성</button></a>
	<%} else {%>
	<%} %>
	  <table class="rwd-table">
	    <tbody>
	    <%// 관리자로 로그인하면 응답이 뜸 N으로 되어있으면 답글이 없는거 Y로 되어있으면 답글완료한거 확인용도 %>
	    <%if(session.getAttribute("email") == null){ %>
	    <tr>
	        <th>번호</th>
	        <th>제목</th>
	        <th>작성자</th>
	        <th>작성일</th>
	      </tr>
	      <%for (int i = 0; i < sel_list.size(); i++) {%>
	        	<tr>
	        		<td><%=num = num+1 %></td>
	        		<td><a class="title" href="requestBoardDetail.jsp?req_seq=<%=sel_list.get(i).getReqSeq()%>&req_title=<%=sel_list.get(i).getReqTitle()%>"><%=sel_list.get(i).getReqTitle() %></a></td>
	        		<td><%=sel_list.get(i).getReqEmail() %></td>
	        		<td><%=sel_list.get(i).getReqDt() %></td>
	        	</tr>
	        	<%if(sel_list.get(i).getReqType().equals("Y")){%>
	        		<tr>
	        		<td></td>
	        		<td><a class="title" href="replyDetail.jsp?req_seq=<%=sel_list.get(i).getReqSeq()%>">&nbsp;&nbsp; └ RE:&nbsp;<%=sel_list.get(i).getReqTitle()%>에 관한 답글입니다.</a></td>
	        		<td>관리자</td>
	        		<td></td>
	        		</tr>
	        	<%} %>
	        <%} %>
	        <%} else if(session.getAttribute("email").equals("kissmejr@naver.com")) {%>
	      <tr>
	        <th>번호</th>
	        <th>제목</th>
	        <th>작성자</th>
	        <th>작성일</th>
	        <th>응답</th>
	      </tr>
	      <%for (int i = 0; i < sel_list.size(); i++) {%>
	        	<tr>
	        		<td><%=num = num+1 %></td>
	        		<td><a class="title" href="requestBoardDetail.jsp?req_seq=<%=sel_list.get(i).getReqSeq()%>&req_title=<%=sel_list.get(i).getReqTitle()%>"><%=sel_list.get(i).getReqTitle() %></a></td>
	        		<td><%=sel_list.get(i).getReqEmail() %></td>
	        		<td><%=sel_list.get(i).getReqDt() %></td>
	        		<td><a class="title" href="replyWrite.jsp?req_seq=<%=sel_list.get(i).getReqSeq()%>&req_title=<%=sel_list.get(i).getReqTitle()%>">답글달기</a></td>
	        	</tr>
	        	<%if(sel_list.get(i).getReqType().equals("Y")){%>
	        		<tr>
	        		<td></td>
	        		<td><a class="title" href="replyDetail.jsp?req_seq=<%=sel_list.get(i).getReqSeq()%>">&nbsp;&nbsp; └ RE:&nbsp;<%=sel_list.get(i).getReqTitle()%>에 관한 답글입니다.</a></td>
	        		<td></td>
	        		<td></td>
	        		<td></td>
	        		</tr>
	        	<%} %>
	        <%} %>
	        <%} else if(session.getAttribute("email") != null) { %>
		    <tr>
		        <th>번호</th>
		        <th>제목</th>
		        <th>작성자</th>
		        <th>작성일</th>
		      </tr>
		      <%for (int i = 0; i < sel_list.size(); i++) {%>
		        	<tr>
		        		<td><%=num = num+1 %></td>
		        		<td><a class="title" href="requestBoardDetail.jsp?req_seq=<%=sel_list.get(i).getReqSeq()%>&req_title=<%=sel_list.get(i).getReqTitle()%>"><%=sel_list.get(i).getReqTitle() %></a></td>
		        		<td><%=sel_list.get(i).getReqEmail() %></td>
		        		<td><%=sel_list.get(i).getReqDt() %></td>
		        	</tr>
		        	<%if(sel_list.get(i).getReqType().equals("Y")){%>
	        		<tr>
	        		<td></td>
	        		<td><a class="title" href="replyDetail.jsp?req_seq=<%=sel_list.get(i).getReqSeq()%>">&nbsp;&nbsp; └ RE:&nbsp;<%=sel_list.get(i).getReqTitle()%>에 관한 답글입니다.</a></td>
	        		<td></td>
	        		<td></td>
	        		</tr>
	        	<%} %>
		        <%} %>
	        <%} %>
	        
	      <!-- <tr>
	        <td data-th="Supplier Code">
	          UPS5005
	        </td>
	        <td data-th="Supplier Name">
	          UPS
	        </td>
	        <td data-th="Invoice Number">
	          ASDF19218
	        </td>
	        <td data-th="Invoice Date">
	          06/25/2016
	        </td>
	        <td data-th="Due Date">
	          12/25/2016
	        </td>
	        <td data-th="Net Amount">
	          $8,322.12
	        </td>
	      </tr> -->
	    </tbody>
	  </table>
	  <h3>Resize Me</h3>
	</div>
	<!-- JavaScript Bundle with Popper -->
			

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
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>
