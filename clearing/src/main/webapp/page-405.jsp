<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">
        <meta name="author" content="">

        <title>Page Not Found | Bootstrap 5 Theme</title>

        <!-- CSS FILES -->        
        <link rel="preconnect" href="https://fonts.googleapis.com">
        
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        
        <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;0,700;1,400&display=swap" rel="stylesheet">

        <link href="css/bootstrap.min.css" rel="stylesheet">

        <link href="css/bootstrap-icons.css" rel="stylesheet">

        <link href="css/tooplate-clean-work.css" rel="stylesheet">
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
						<i class="bi-house-fill me-2"></i> 온라인 코인세탁방 예약
					</p>

					<p class="d-flex d-lg-block d-md-block d-none me-4 mb-0">
						<i class="bi-clock-fill me-2"></i> <strong class="me-2">월
							- 금</strong> 8:00 AM - 5:30 PM
					</p>

					<p class="site-header-icon-wrap text-white d-flex mb-0 ms-auto">
						<i class="site-header-icon bi-whatsapp me-2"></i> <a
							href="tel: 110-220-9800" class="text-white"> 010-1234-1234 </a>
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
					<li class="nav-item"><a class="nav-link" href="index.jsp">메인</a></li>
					<li class="nav-item"><a class="nav-link" href="NonUserReview">후기
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="requestBoardMain.jsp?boardPage=1">문의</a></li>
					<%
					String email = (String)session.getAttribute("email");
					if (email != null) {
						if (email.equals("admin")) {
					%>
					<!-- admin 로그인시 생기는 메뉴 TODO-->
					<li class="nav-item"><a class="nav-link" href="#">관리자</a>
					</li>
					<%
					}
					}
					%>

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

            <section class="banner-section d-flex justify-content-center align-items-end">
                <div class="section-overlay"></div>

                <div class="container">
                    <div class="row">

                        <div class="col-lg-7 col-12">
                            <h1 class="text-white mb-lg-0">등록되지 않은 업체입니다.</h1>
                        </div>

                        <div class="col-lg-4 col-12 d-flex justify-content-lg-end align-items-center ms-auto">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb justify-content-center">
                                    <li class="breadcrumb-item"><a href="index.jsp">돌아가기</a></li>

                                    <li class="breadcrumb-item active" aria-current="page">이용불가</li>
                                </ol>
                            </nav>
                        </div>

                    </div>
                </div>
            </section>
         

            <section class="section-padding">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-10 col-12 text-center mx-auto">
                            <h2 class="page-404-title" style="font-size: 5rem;">등록되지 않은 업체입니다</h2>
                            <a class="custom-btn btn button button--atlas mt-4" href="index.jsp">
                                <span>메인으로</span>

                                <div class="marquee" aria-hidden="true">
                                    <div class="marquee__inner">
                                        <span>메인으로</span>
                                        <span>메인으로</span>
                                        <span>메인으로</span>
                                        <span>메인으로</span>
                                    </div>
                                </div>
                            </a>
                        </div>

                    </div>
                </div>
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
							class="footer-menu-link">후기</a></li>
						<li class="footer-menu-item"><a href="#"
							class="footer-menu-link">문의</a></li>
					</ul>
				</div>

				<div class="col-lg-5 col-12 mb-4 mb-lg-0">
					<h5 class="site-footer-title mb-3">서비스</h5>

					<ul class="footer-menu">
						<li class="footer-menu-item"><a href="#"
							class="footer-menu-link"> <i
								class="bi-chevron-double-right footer-menu-link-icon me-2"></i>
								코인세탁방 검색
						</a></li>

						<li class="footer-menu-item"><a href="#"
							class="footer-menu-link"> <i
								class="bi-chevron-double-right footer-menu-link-icon me-2"></i>
								예약
						</a></li>

						<li class="footer-menu-item"><a href="NonUserReview"
							class="footer-menu-link"> <i
								class="bi-chevron-double-right footer-menu-link-icon me-2"></i>
								후기
						</a></li>

						<li class="footer-menu-item"><a
							href="requestBoardMain.jsp?boardPage=1" class="footer-menu-link">
								<i class="bi-chevron-double-right footer-menu-link-icon me-2"></i>
								문의
						</a></li>
					</ul>
				</div>

				<div class="col-lg-4 col-md-6 col-12 mb-4 mb-lg-0 mb-md-0">
					<h5 class="site-footer-title mb-3">Office</h5>

					<p class="text-white d-flex mt-3 mb-2">
						<i class="bi-geo-alt-fill me-2"></i> 광주 서구 경열로 20

					</p>

					<p class="text-white d-flex mb-2">
						<i class="bi-telephone-fill me-2"></i> <a
							href="tel: 010-1234-1234" class="site-footer-link">
							010-1234-1234 </a>
					</p>

					<p class="text-white d-flex">
						<i class="bi-envelope-fill me-2"></i> <a
							href="email: youjinseozzang1004@gmail.com"
							class="site-footer-link"> youjinseozzang1004@gmail.com </a>
					</p>

					<ul class="social-icon mt-4">
						<li class="social-icon-item"><a
							class="social-icon-link button button--skoll"> <span></span>
								<span class="bi-twitter"></span>
						</a></li>

						<li class="social-icon-item"><a
							class="social-icon-link button button--skoll"> <span></span>
								<span class="bi-facebook"></span>
						</a></li>

						<li class="social-icon-item"><a
							class="social-icon-link button button--skoll"> <span></span>
								<span class="bi-instagram"></span>
						</a></li>
					</ul>
				</div>

				<div class="col-lg-3 col-md-6 col-6 mt-3 mt-lg-0 mt-md-0">
					<div class="featured-block">
						<h5 class="text-white mb-3">이용 시간</h5>

						<strong class="d-block text-white mb-1">월 - 금</strong>

						<p class="text-white mb-3">8:00 AM - 5:30 PM</p>

						<strong class="d-block text-white mb-1">토</strong>

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