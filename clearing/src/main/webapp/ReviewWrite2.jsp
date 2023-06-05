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

<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;0,700;1,400&display=swap"
	rel="stylesheet">

<link href="css/bootstrap.min.css" rel="stylesheet">

<link href="css/bootstrap-icons.css" rel="stylesheet">

<link href="css/tooplate-clean-work.css" rel="stylesheet">

<link href="./css/rating.css" rel="stylesheet" type="text/css">
<style type="text/css">
	@font-face {
    font-family: 'gmarket';
    src: url('./fonts/GmarketSansTTFMedium.ttf') format('truetype');
}
body {
	font-family: 'gmarket';
}
</style>
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

					<li class="nav-item"><a class="nav-link active"
						href="#">aboutus</a></li>

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
						<h1 class="text-white mb-lg-0">리뷰 작성하기</h1>
					</div>

					<div
						class="col-lg-4 col-12 d-flex justify-content-lg-end align-items-center ms-auto">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb justify-content-center">
								<li class="breadcrumb-item"><a href="index.jsp">Home</a></li>

								<li class="breadcrumb-item active" aria-current="page">About
									Us</li>
							</ol>
						</nav>
					</div>

				</div>
			</div>
		</section>


		<section class="section-padding">
			<div class="container">
				<div class="row">

					<h1><%=request.getParameter("store_name") %></h1>
					<hr>
					<h3>이용하신 매장은 어떠셨나요?</h3>

					<form action="Review_WriteController" method="post"
						enctype="multipart/form-data">
						<fieldset class="rate" name="rating">
							<input type="radio" id="rating5" name="rating" value="5"><label
								for="rating5" title="5점"></label> <input type="radio"
								id="rating4" name="rating" value="4""><label
								for="rating4" title="4점"></label> <input type="radio"
								id="rating3" name="rating" value="3"><label
								for="rating3" title="3점"></label> <input type="radio"
								id="rating2" name="rating" value="2"><label
								for="rating2" title="2점"></label> <input type="radio"
								id="rating1" name="rating" value="1"><label
								for="rating1" title="1점"></label>
						</fieldset>
						<br> <br>
						<div>
							리뷰내용<br>
							<textarea rows="10" cols="50" name="textfield" maxlength="80" placeholder="80자까지 입력해주세요"></textarea>							
							 <!-- <input type="text" name="textfield"
								style="height: 250px; width: 250px;">
 -->						</div>
						<br> <input type="file" name="file"><br> <input
							type="submit" value="작성하기">
					</form>

				</div>
			</div>
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