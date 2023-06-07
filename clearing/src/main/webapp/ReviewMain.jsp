<%@page import="com.clearing.model.tbl_reviewListDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="description" content="">
<meta name="author" content="">

<title>Services | Bootstrap 5 Theme</title>
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>

<!-- CSS FILES -->
<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;0,700;1,400&display=swap"
	rel="stylesheet">

<link href="./css/bootstrap.min.css" rel="stylesheet">

<link href="./css/bootstrap-icons.css" rel="stylesheet">

<link href="./css/tooplate-clean-work.css" rel="stylesheet">
<style type="text/css">
.carousel-control-prev:hover{
background-color: #7CB8EB;
}
.carousel-control-next:hover{
background-color: #7CB8EB;
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
	String storeName = (String) request.getAttribute("storeName");
	String storeAdd = (String) request.getAttribute("storeAdd");
	String storeTel = (String) request.getAttribute("storeTel");
	ArrayList<tbl_reviewListDTO> reviewList = new ArrayList<tbl_reviewListDTO>();
	if(request.getAttribute("reviewList")==null){
		reviewList=null;		
	}else{
			reviewList =(ArrayList<tbl_reviewListDTO>) request.getAttribute("reviewList");
	}

	String star = (String) request.getAttribute("star");
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
					<li class="nav-item"><a class="nav-link" href="index.jsp">Home</a>
					</li>

					<li class="nav-item"><a class="nav-link" href="about.html">About
							Us</a></li>

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#section_5"
						id="navbarLightDropdownMenuLink" role="button"
						data-bs-toggle="dropdown" aria-expanded="false">Pages</a>

						<ul class="dropdown-menu dropdown-menu-light"
							aria-labelledby="navbarLightDropdownMenuLink">
							<li><a class="dropdown-item active" href="services.html">Our
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
						href="#">Get started</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<main>
		<section
			class="banner-section d-flex justify-content-center align-items-end">
			<div class="section-overlay"></div>

			<div class="container">
				<div class="row">

					<div class="col-lg-7 col-12">
						<h2 class="text-white mb-lg-0">
							<%=storeName %> <p style="color: white;font-size: 20px">주소 : <%=storeAdd %>&nbsp;&nbsp;&nbsp; ☎ : <%=storeTel %>&nbsp;&nbsp;&nbsp;&nbsp; ★<%=star %></p>
						</h2>
					</div>

					<div
						class="col-lg-4 col-12 d-flex justify-content-lg-end align-items-center ms-auto">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb justify-content-center">
								<li class="breadcrumb-item"><a href="index.jsp">Home</a></li>

								<li class="breadcrumb-item active" aria-current="page"><%=storeName%>
									</li>
							</ol>
						</nav>
					</div>

				</div>
			</div>
		</section>


	

		<section class="services-section section-padding section-bg">
						<%if(reviewList.isEmpty()){%>
							<div align="center">
							<img alt="x" src="images/plz_Write.png"><br>
							<br>
							등록된 리뷰가 없습니다..<br>
							 처음으로 작성해보세요❗
							</div>
						
						<% }else{%>
			<div class="container">
				<div class="row">

					<div id="carouselExampleControls" class="carousel slide"
						data-bs-ride="carousel">
						<div class="carousel-inner">
						<%if(reviewList.size()/4==1){%>
						<%if(reviewList.size()%4>0){%>
							
							<div class="carousel-item active" data-bs-interval="10000">

							<div class="container">
						<div class="row">
							<%for(int i=0; i<4;i++){ %>
								
								<div class="col-lg-6 col-12"> 
									<div class="services-thumb mb-lg-0">
										<div class="row">
											<div class="col-lg-5 col-md-5 col-12">
												<div class="services-image-wrap">
												<%if (!reviewList.get(i).getReview_photo().equals("0")) {%>
												
													<img src="./file/<%=reviewList.get(i).getReview_photo()%>"
														class="services-image img-fluid" alt="">
												<%}else{%>
													<img src="images/bubbles.png"
														class="services-image img-fluid" alt="">
												<%} %>
												</div>
											</div>

											<div
												class="col-lg-7 col-md-7 col-12 d-flex align-items-center">
												<div class="services-info mt-4 mt-lg-0 mt-md-0">

													<%String[] user_email=reviewList.get(i).getUser_email().split("@");
													   String email_front=user_email[0];
													   String numStr = email_front.replaceAll("[0-9]", "*");
													   %>
													<div class="d-flex flex-wrap align-items-center">
													작성자:<%=numStr%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														<div class="reviews-icons">
															<%
															for ( int j = 0; j < reviewList.get(i).getReview_rating(); j++) {
															%>
															<i class="bi-star-fill"></i>
															<%
															}
															%>
															<%
															for ( int j  = 0; j < 5 - (reviewList.get(i).getReview_rating()); j++) {
															%>
															<i class="bi-star"></i>

															<%
															}
															%>
														</div>
													</div><br>
													<div id="fb-root"></div>
													<%=reviewList.get(i).getReview_content()%><br><br>
													<p>
													<%=reviewList.get(i).getReview_dt().substring(0, 10)%>
													</p>

												</div>
											</div>
										</div>
									</div> 
								<br>
								</div>
								
							<%} %>
							
							</div>
								</div>
								
							</div>
							<div class="carousel-item active" data-bs-interval="10000">

							<div class="container">
						<div class="row">
							<%for(int i=4; i<reviewList.size();i++){ %>
								
								<div class="col-lg-6 col-12"> 
									<div class="services-thumb mb-lg-0">
										<div class="row">
											<div class="col-lg-5 col-md-5 col-12">
												<div class="services-image-wrap">
												<%if (!reviewList.get(i).getReview_photo().equals("0")) {%>
												
													<img src="./file/<%=reviewList.get(i).getReview_photo()%>"
														class="services-image img-fluid" alt="">
												<%}else{%>
													<img src="images/bubbles.png"
														class="services-image img-fluid" alt="">
												<%} %>
												</div>
											</div>

											<div
												class="col-lg-7 col-md-7 col-12 d-flex align-items-center">
												<div class="services-info mt-4 mt-lg-0 mt-md-0">

													<%String[] user_email=reviewList.get(i).getUser_email().split("@");
													   String email_front=user_email[0];
													   String numStr = email_front.replaceAll("[0-9]", "*");
													   %>
													<div class="d-flex flex-wrap align-items-center">
													작성자:<%=numStr%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														<div class="reviews-icons">
															<%
															for ( int j = 0; j < reviewList.get(i).getReview_rating(); j++) {
															%>
															<i class="bi-star-fill"></i>
															<%
															}
															%>
															<%
															for ( int j  = 0; j < 5 - (reviewList.get(i).getReview_rating()); j++) {
															%>
															<i class="bi-star"></i>

															<%
															}
															%>
														</div>
													</div><br>
													<div id="fb-root"></div>
													<%=reviewList.get(i).getReview_content()%><br><br>
													<p>
													<%=reviewList.get(i).getReview_dt().substring(0, 10)%>
													</p>

												</div>
											</div>
										</div>
									</div> 
								<br>
								</div>
								
							<%} %>
							
							</div>
								</div>
								
							</div>
						
						<% 
						}else{
						for(int k = 0;k<(reviewList.size()/4);k++){%>
							<div class="carousel-item active" data-bs-interval="10000">

							<div class="container">
						<div class="row">
							<%for(int i=0; i<reviewList.size();i++){ %>
								
								<div class="col-lg-6 col-12"> 
									<div class="services-thumb mb-lg-0">
										<div class="row">
											<div class="col-lg-5 col-md-5 col-12">
												<div class="services-image-wrap">
												<%if (!reviewList.get(i).getReview_photo().equals("0")) {%>
												
													<img src="./file/<%=reviewList.get(i).getReview_photo()%>"
														class="services-image img-fluid" alt="">
												<%}else{%>
													<img src="images/bubbles.png"
														class="services-image img-fluid" alt="">
												<%} %>
												</div>
											</div>

											<div
												class="col-lg-7 col-md-7 col-12 d-flex align-items-center">
												<div class="services-info mt-4 mt-lg-0 mt-md-0">

													<%String[] user_email=reviewList.get(i).getUser_email().split("@");
													   String email_front=user_email[0];
													   String numStr = email_front.replaceAll("[0-9]", "*");
													   %>
													<div class="d-flex flex-wrap align-items-center">
													작성자:<%=numStr%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														<div class="reviews-icons">
															<%
															for ( int j = 0; j < reviewList.get(i).getReview_rating(); j++) {
															%>
															<i class="bi-star-fill"></i>
															<%
															}
															%>
															<%
															for ( int j  = 0; j < 5 - (reviewList.get(i).getReview_rating()); j++) {
															%>
															<i class="bi-star"></i>

															<%
															}
															%>
														</div>
													</div><br>
													<div id="fb-root"></div>
													<%=reviewList.get(i).getReview_content()%><br><br>
													<p>
													<%=reviewList.get(i).getReview_dt().substring(0, 10)%>
													</p>

												</div>
											</div>
										</div>
									</div> 
								<br>
								</div>
								
							<%} %>
							
							</div>
								</div>
								
							</div>
						
						<%}
						}
						%>
						<%} %>
						
						</div>
							<button class="carousel-control-prev" type="button"
								data-bs-target="#carouselExampleControls" data-bs-slide="prev">
								<span class="carousel-control-prev-icon" aria-hidden="true"></span>
								<span class="visually-hidden">Previous</span>
							</button>
							<button class="carousel-control-next" type="button"
								data-bs-target="#carouselExampleControls" data-bs-slide="next">
								<span class="carousel-control-next-icon" aria-hidden="true"></span>
								<span class="visually-hidden">Next</span>
							</button>
						</div>
						
						<%} %>
						
							
						


				</div>
			</div>
		</section>



	</main>

	<footer class="site-footer" style="margin-top: 0">
		<div class="container">
			<div class="row">

				<div class="col-lg-12 col-12 d-flex align-items-center mb-4 pb-2">
					<div>
						<img src="images/bubbles.png" class="logo img-fluid" alt="">
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

</body>
</html>
