<%@page import="com.clearing.model.Request_BoardDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.clearing.model.Request_BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="description" content="">
<meta name="author" content="">

<title>About Us | Bootstrap 5 Theme</title>

<!-- CSS FILES -->        
<link rel="preconnect" href="https://fonts.googleapis.com">
        
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        
<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;0,700;1,400&display=swap" rel="stylesheet">

<link href="css/bootstrap.min.css" rel="stylesheet">

<link href="css/bootstrap-icons.css" rel="stylesheet">

<link href="css/tooplate-clean-work.css" rel="stylesheet">
<style type="text/css">
@import 'https://fonts.googleapis.com/css?family=Open+Sans:600,700';

@font-face {
    font-family: 'gmarket';
    src: url('./fonts/GmarketSansTTFMedium.ttf') format('truetype');
}
body {
	font-family: 'gmarket';
}
#writer{
	float: right;
}

#main{
	float: left;
}


/* THE END OF THE IMPORTANT STUFF */

/* Basic Styling */
.req_board {
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
.paging{
	margin-top: 30px;
}
.request{
	width: 80%;
	text-align: center;
	margin: auto;
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
                            <i class="bi-house-fill me-2"></i>
                            One-Stop Cleaning Service
                        </p>

                        <p class="d-flex d-lg-block d-md-block d-none me-4 mb-0">
                            <i class="bi-clock-fill me-2"></i>
                            <strong class="me-2">Mon - Fri</strong> 8:00 AM - 5:30 PM
                        </p>

                        <p class="site-header-icon-wrap text-white d-flex mb-0 ms-auto">
                            <i class="site-header-icon bi-whatsapp me-2"></i>

                            <a href="tel: 110-220-9800" class="text-white">
                                110 220 9800
                            </a>
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

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="index.jsp">Home</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link active" href="about.html">About Us</a>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#section_5" id="navbarLightDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">Pages</a>

                            <ul class="dropdown-menu dropdown-menu-light" aria-labelledby="navbarLightDropdownMenuLink">
                                <li><a class="dropdown-item" href="services.html">Our Services</a></li>

                                <li><a class="dropdown-item" href="coming-soon.html">Coming Soon</a></li>

                                <li><a class="dropdown-item" href="page-404.html">Page 404</a></li>
                            </ul>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="contact.html">Contact</a>
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

            <section class="banner-section d-flex justify-content-center align-items-end">
                <div class="section-overlay"></div>

                <div class="container">
                    <div class="row">

                        <div class="col-lg-7 col-12">
                            <h1 class="text-white mb-lg-0">문의 게시판</h1>
                        </div>


                    </div>
                </div>
            </section>
         

<section class="section-padding">
    <%
		Request_BoardDAO dao = new Request_BoardDAO();
		List<Request_BoardDTO> sel_list = dao.selectAll_request();
		int num = 0;
	%>

<!-- 		</section>
	</main> -->
	
<%-- 	<div class="container req_board">
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
	    </tbody>
	  </table>
	  <h3 class="paging">Resize Me</h3>
	</div> --%>
	
	<div class="request">
	<%if(session.getAttribute("email") != null){ %>
	<a href="requestBoardWrite.jsp" id="writer"><button type="button" class="btn btn-secondary" id="writer">게시글 작성</button></a>
	<%} else {%>
	<%} %>
	<table class="table">
  <tbody>
   <%// 관리자로 로그인하면 응답이 뜸 N으로 되어있으면 답글이 없는거 Y로 되어있으면 답글완료한거 확인용도 %>
	    <%if(session.getAttribute("email") == null){ %>
	  <thead>
	     <tr>
	        <th>번호</th>
	        <th>제목</th>
	        <th>작성자</th>
	        <th>작성일</th>
	      </tr>
	   </thead>
	      <%for (int i = 0; i < sel_list.size(); i++) {%>
	        	<tr>
	        		<td><%=num = num+1 %></td>
	        		<td><a class="title" href="requestBoardDetail.jsp?req_seq=<%=sel_list.get(i).getReqSeq()%>&req_title=<%=sel_list.get(i).getReqTitle()%>"><%=sel_list.get(i).getReqTitle() %></a></td>
	        		<td><%=sel_list.get(i).getReqEmail() %></td>
	        		<td><%=sel_list.get(i).getReqDt() %></td>
	        	</tr>
	        	<%if(sel_list.get(i).getReqType().equals("Y")){%>
	        		<tr colspan="2" class="table-active">
	        		<td></td>
	        		<td><a class="title" href="replyDetail.jsp?req_seq=<%=sel_list.get(i).getReqSeq()%>">&nbsp;&nbsp; └ RE:&nbsp;<%=sel_list.get(i).getReqTitle()%>에 관한 답글입니다.</a></td>
	        		<td>관리자</td>
	        		<td></td>
	        		</tr>
	        	<%} %>
	        <%} %>
	        <%} else if(session.getAttribute("email").equals("kissmejr@naver.com")) {%>
	   <thead>
	      <tr>
	        <th>번호</th>
	        <th>제목</th>
	        <th>작성자</th>
	        <th>작성일</th>
	        <th>응답</th>
	      </tr>
	   </thead>   
	      
	      <%for (int i = 0; i < sel_list.size(); i++) {%>
	        	<tr>
	        		<td><%=num = num+1 %></td>
	        		<td><a class="title" href="requestBoardDetail.jsp?req_seq=<%=sel_list.get(i).getReqSeq()%>&req_title=<%=sel_list.get(i).getReqTitle()%>"><%=sel_list.get(i).getReqTitle() %></a></td>
	        		<td><%=sel_list.get(i).getReqEmail() %></td>
	        		<td><%=sel_list.get(i).getReqDt() %></td>
	        		<td><a class="title" href="replyWrite.jsp?req_seq=<%=sel_list.get(i).getReqSeq()%>&req_title=<%=sel_list.get(i).getReqTitle()%>">답글달기</a></td>
	        	</tr>
	        	<%if(sel_list.get(i).getReqType().equals("Y")){%>
	        		<tr colspan="2" class="table-active">
	        		<td></td>
	        		<td><a class="title" href="replyDetail.jsp?req_seq=<%=sel_list.get(i).getReqSeq()%>">&nbsp;&nbsp; └ RE:&nbsp;<%=sel_list.get(i).getReqTitle()%>에 관한 답글입니다.</a></td>
	        		<td></td>
	        		<td></td>
	        		<td></td>
	        		</tr>
	        	<%} %>
	        <%} %>
	        <%} else if(session.getAttribute("email") != null) { %>
		 <thead>
		    <tr>
		        <th>번호</th>
		        <th>제목</th>
		        <th>작성자</th>
		        <th>작성일</th>
		    </tr>
		 </thead>
		      <%for (int i = 0; i < sel_list.size(); i++) {%>
		        	<tr>
		        		<td><%=num = num+1 %></td>
		        		<td><a class="title" href="requestBoardDetail.jsp?req_seq=<%=sel_list.get(i).getReqSeq()%>&req_title=<%=sel_list.get(i).getReqTitle()%>"><%=sel_list.get(i).getReqTitle() %></a></td>
		        		<td><%=sel_list.get(i).getReqEmail() %></td>
		        		<td><%=sel_list.get(i).getReqDt() %></td>
		        	</tr>
		        	<%if(sel_list.get(i).getReqType().equals("Y")){%>
	        		<tr colspan="2" class="table-active">
	        		<td></td>
	        		<td><a class="title" href="replyDetail.jsp?req_seq=<%=sel_list.get(i).getReqSeq()%>">&nbsp;&nbsp; └ RE:&nbsp;<%=sel_list.get(i).getReqTitle()%>에 관한 답글입니다.</a></td>
	        		<td></td>
	        		<td></td>
	        		</tr>
	        	<%} %>
		        <%} %>
	        <%} %>
  </tbody>
</table>
	<h3 class="paging">Resize Me</h3>
	</div>
	
	<!-- JavaScript Bundle with Popper -->
</section>
        </main>

        <footer class="site-footer">
            <div class="container">
                <div class="row">

                    <div class="col-lg-12 col-12 d-flex align-items-center mb-4 pb-2">
                        <div>
                            <img src="images/bubbles.png" class="logo img-fluid" alt="">
                        </div>

                        <ul class="footer-menu d-flex flex-wrap ms-5">
                            <li class="footer-menu-item"><a href="#" class="footer-menu-link">About Us</a></li>

                            <li class="footer-menu-item"><a href="#" class="footer-menu-link">Blog</a></li>

                            <li class="footer-menu-item"><a href="#" class="footer-menu-link">Reviews</a></li>

                            <li class="footer-menu-item"><a href="#" class="footer-menu-link">Contact</a></li>
                        </ul>
                    </div>

                    <div class="col-lg-5 col-12 mb-4 mb-lg-0">
                        <h5 class="site-footer-title mb-3">Our Services</h5>

                        <ul class="footer-menu">
                            <li class="footer-menu-item">
                                <a href="#" class="footer-menu-link">
                                    <i class="bi-chevron-double-right footer-menu-link-icon me-2"></i>
                                    House Cleaning
                                </a>
                            </li>

                            <li class="footer-menu-item">
                                <a href="#" class="footer-menu-link">
                                    <i class="bi-chevron-double-right footer-menu-link-icon me-2"></i>
                                    Car Washing
                                </a>
                            </li>

                            <li class="footer-menu-item">
                                <a href="#" class="footer-menu-link">
                                    <i class="bi-chevron-double-right footer-menu-link-icon me-2"></i>
                                    Laundry
                                </a>
                            </li>

                            <li class="footer-menu-item">
                                <a href="#" class="footer-menu-link">
                                    <i class="bi-chevron-double-right footer-menu-link-icon me-2"></i>
                                    Office Cleaning
                                </a>
                            </li>

                            <li class="footer-menu-item">
                                <a href="#" class="footer-menu-link">
                                    <i class="bi-chevron-double-right footer-menu-link-icon me-2"></i>
                                    Toilet Cleaning
                                </a>
                            </li>
                        </ul>
                    </div>

                    <div class="col-lg-4 col-md-6 col-12 mb-4 mb-lg-0 mb-md-0">
                        <h5 class="site-footer-title mb-3">Office</h5>

                        <p class="text-white d-flex mt-3 mb-2">
                            <i class="bi-geo-alt-fill me-2"></i>
                            Akershusstranda 20, 0150 Oslo, Norway
                        </p>

                        <p class="text-white d-flex mb-2">
                            <i class="bi-telephone-fill me-2"></i>

                            <a href="tel: 110-220-9800" class="site-footer-link">
                                110-220-9800
                            </a>
                        </p>

                        <p class="text-white d-flex">
                            <i class="bi-envelope-fill me-2"></i>

                            <a href="mailto:info@company.com" class="site-footer-link">
                                info@company.com
                            </a>
                        </p>

                        <ul class="social-icon mt-4">
                            <li class="social-icon-item">
                                <a href="#" class="social-icon-link button button--skoll">
                                    <span></span>
                                    <span class="bi-twitter"></span>
                                </a>
                            </li>

                            <li class="social-icon-item">
                                <a href="#" class="social-icon-link button button--skoll">
                                    <span></span>
                                    <span class="bi-facebook"></span>
                                </a>
                            </li>

                            <li class="social-icon-item">
                                <a href="#" class="social-icon-link button button--skoll">
                                    <span></span>
                                    <span class="bi-instagram"></span>
                                </a>
                            </li>
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
                            <p class="copyright-text mb-0">Copyright © 2036 Clean Work Co., Ltd.</p>
                        </div>
                        
                        <div class="col-lg-6 col-12 text-end">
                            <p class="copyright-text mb-0">
                            // Designed by <a href="https://www.tooplate.com" target="_parent">Tooplate</a> //</p>
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

    </body>
</html>
