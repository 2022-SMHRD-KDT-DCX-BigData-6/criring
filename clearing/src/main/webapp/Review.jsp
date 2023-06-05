<%@page import="com.clearing.model.tbl_reviewListDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">
        <meta name="author" content="">

<title>크리링 리뷰</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
        
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        
        <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;0,700;1,400&display=swap" rel="stylesheet">

        <link href="css/bootstrap.min.css" rel="stylesheet">

        <link href="css/bootstrap-icons.css" rel="stylesheet">

        <link href="css/tooplate-clean-work.css" rel="stylesheet">

<link href="./css/rating.css" rel="stylesheet" type="text/css">
</head>
<body>

	<%
	String storeName=(String)request.getAttribute("storeName");
		   String storeAdd = (String)request.getAttribute("storeAdd");
		   String storeTel = (String)request.getAttribute("storeTel");
		ArrayList<tbl_reviewListDTO> reviewList =(ArrayList<tbl_reviewListDTO>)request.getAttribute("reviewList");
		  /*  String[] review_content = (String[])request.getAttribute("review_content");
		   String[] review_dt = (String[])request.getAttribute("review_dt");
		   String[] user_email = (String[])request.getAttribute("user_email");
		   int[] review_shares = (int[])request.getAttribute("review_shares");
		   int[] review_rating = (int[])request.getAttribute("review_rating");
		   String[] review_photo = (String[])request.getAttribute("review_photo"); */
		   double star = (double)request.getAttribute("star");
		 //a  out.print(reviewList.get(0).getReview_dt());
	%>
	리뷰 작성 : 로그인 - 이용내역 - 리뷰작성 - 사진업로드 기능 포함한 리뷰작성<br>
	리뷰 정렬 방식 선택 적용<br>
	공감 클릭해서 up(프라이머리 중복 추천 불가)- AJAX 사용하라는디?<br>
	사진 클릭해서 크게 보기 기능<br>
	리뷰 클릭해서 리뷰 내용 전체 보기 기능<br>
	더 보기 또는 페이지 기능<br>
	리뷰 별 모양이랑 반별 찍기<br>
	1번만 쓰게 (이미 작성한 사람은 리뮤작성 버튼 비활설화 하게끔?)<br>
	소수점 1자리까지만 표기
	<h1>크리링 리뷰</h1>
	
	<%--이거는 리뷰 작성에서 사용할거
	 <%for(int i=0; i<review_rating[4];i++){%>
	<fieldset class="rate">
		<input type="checkbox" id="rating<%=i+1 %>" name="rating" value="<%=i+1%>" checked="checked"><label for="rating<%=i %>" title="<%=i+1 %>점"></label>
	</fieldset>
	<%} %>
		<input type="radio" id="rating5" name="rating" value="5"><label for="rating5" title="5점"></label>
		<input type="radio" id="rating4" name="rating" value="4"><label for="rating4" title="4점"></label>
		<input type="radio" id="rating3" name="rating" value="3"><label for="rating3" title="3점"></label>
		<input type="radio" id="rating2" name="rating" value="2"><label for="rating2" title="2점"></label>
		<input type="radio" id="rating1" name="rating" value="1"><label for="rating2" title="1점"></label>

 --%>
	<hr>
	<h4>지도</h4>
	<table border="1" width="60%">
		<tr>
			<td colspan="2">
				<p>★<%=star %>  (<%=reviewList.size() %>)<b> 매장명 : <%=storeName %></b></p>
				
					 <a href="reservate.jsp">예약하기</a><br></p>
				<p>주소 : <%=storeAdd %> ☎ : <%=storeTel %></p>
			</td>
		<tr>
	</table>
	<select id="reviewShow">
		<option name= "reviewShow" value="recent">최근 리뷰 순</option>
		<option name= "reviewShow" value="former">오래된 리뷰 순</option>
		<option name= "reviewShow" value="des">높은 평점 순</option>
		<option name= "reviewShow" value="asc">낮은 평점 순</option>
	</select>

<!-- 템플릿 리뷰박스  -->
	 <section class="services-section section-padding">           
                <div class="container">
                    <div class="row">

                        <div class="col-lg-6 col-12">
                            <div class="services-thumb section-bg mb-lg-0">
                                <div class="row">
                                    <div class="col-lg-5 col-md-5 col-12">
                                        <div class="services-image-wrap"style="width: 105%;">
                                            <a href="services-detail.html">
                                                <img" src="./file/<%=reviewList.get(3).getReview_photo() %>" alt="">

                                                <div class="services-icon-wrap">
                                                    <div class="d-flex justify-content-between align-items-center">
                                                        <p class="text-white mb-0">
                                                            <i class="bi-cash me-2"></i>
                                                            $820
                                                        </p>

                                                        <p class="text-white mb-0">
                                                            <i class="bi-clock-fill me-2"></i>
                                                            5 hrs
                                                        </p>
                                                    </div>                                                    
                                                </div>
                                            </a>
                                        </div>
                                    </div>

                                    <div class="col-lg-7 col-md-7 col-12 d-flex align-items-center">
                                        <div class="services-info mt-4 mt-lg-0 mt-md-0">
                                            <h4 class="services-title mb-1 mb-lg-2">
                                                <a class="services-title-link" href="services-detail.html">Office Cleaning</a>
                                            </h4>

                                            <p><%=reviewList.get(0).getReview_content() %> </p>

                                            <div class="d-flex flex-wrap align-items-center">
                                                <div class="reviews-icons">
                                                <%for(int i=0; i<reviewList.get(1).getReview_rating(); i++) {%>
                                                    <i class="bi-star-fill"></i>
                                                <%} %>
                                                <%for(int i=0; i<5-reviewList.get(1).getReview_rating(); i++) {%>
                                                    <i class="bi-star"></i>
                                                    
                                                <%} %>
                                                </div>

                                                <a href="services-detail.html" class="custom-btn btn button button--atlas mt-2 ms-auto">
                                                    <span>Learn More</span>

                                                    <div class="marquee" aria-hidden="true">
                                                        <div class="marquee__inner">
                                                            <span>Learn More</span>
                                                            <span>Learn More</span>
                                                            <span>Learn More</span>
                                                            <span>Learn More</span>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-6 col-12">
                            <div class="services-thumb section-bg mb-lg-0">
                                <div class="row">
                                    <div class="col-lg-5 col-md-5 col-12">
                                        <div class="services-image-wrap">
                                            <a href="services-detail.html">
                                                <img src="images/services/young-smiling-woman-wearing-rubber-gloves-cleaning-stove.jpg" class="services-image img-fluid" alt="">
                                                <img src="images/services/woman-holding-rag-detergent-cleaning-cooker.jpg" class="services-image services-image-hover img-fluid" alt="">

                                                <div class="services-icon-wrap">
                                                    <div class="d-flex justify-content-between align-items-center">
                                                        <p class="text-white mb-0">
                                                            <i class="bi-cash me-2"></i>
                                                            $640
                                                        </p>

                                                        <p class="text-white mb-0">
                                                            <i class="bi-clock-fill me-2"></i>
                                                            4 hrs
                                                        </p>
                                                    </div>                                                    
                                                </div>
                                            </a>
                                        </div>
                                    </div>

                                    <div class="col-lg-7 col-md-7 col-12 d-flex align-items-center">
                                        <div class="services-info mt-4 mt-lg-0 mt-md-0">
                                            <h4 class="services-title mb-1 mb-lg-2">
                                                <a class="services-title-link" href="services-detail.html">Kitchen Cleaning</a>
                                            </h4>

                                            <p>Best Cleaning Service Provider Ipsum dolor sit consectetur kengan</p>

                                            <div class="d-flex flex-wrap align-items-center">
                                                <div class="reviews-icons">
                                                    <i class="bi-star-fill"></i>
                                                    <i class="bi-star-fill"></i>
                                                    <i class="bi-star-fill"></i>
                                                    <i class="bi-star-fill"></i>
                                                    <i class="bi-star-fill"></i>
                                                </div>

                                                <a href="services-detail.html" class="custom-btn btn button button--atlas mt-2 ms-auto">
                                                    <span>Learn More</span>

                                                    <div class="marquee" aria-hidden="true">
                                                        <div class="marquee__inner">
                                                            <span>Learn More</span>
                                                            <span>Learn More</span>
                                                            <span>Learn More</span>
                                                            <span>Learn More</span>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>

<!-- 템플릿 리뷰박스  -->





	<table border="1" >
			<%for (int i =0; i<reviewList.size(); i++){%>
				<h5>
		<tr>
			<td style="width: 65%;border-right: none;">
				부여한 평점에 따른 별 보여주기
				<fieldset class="rate">				
					<input type="checkbox" id="rating"<%=i+1 %>" name="rating" value="<%=i+1%>" checked="checked"><label for="rating<%=i+1 %>" title="<%=i+1 %>점"></label>
				</fieldset>
				평점 : <%=reviewList.get(i).getReview_rating() %></h5>
			<p><a href="#"><%=reviewList.get(i).getUser_email()%></a>
				
					<%=reviewList.get(i).getReview_content() %> 
					
					
				</p>
				<p>작성일자 : <%=reviewList.get(i).getReview_dt().substring(0,10) %>공감 수 : <%=reviewList.get(i).getReview_shares()%>(onclick인가 뭔가 암튼)</p>
			<a href ="Review_DeleteController">리뷰 삭제하기 </a>
			</td>
			<td style="border-left: none;">
			<%if(!reviewList.get(i).getReview_photo().equals("0")){%>
					<img alt="x" src="./file/<%=reviewList.get(i).getReview_photo() %>" style="width: 70%;">
					
					<%} %>
			</td>
		</tr>		
			<% }%>
			
			
	
		</table>
		<p>더 보기는 스크롤 내리면 알아서 추가 되던지..</p>
		
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