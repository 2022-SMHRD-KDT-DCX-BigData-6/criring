<%@page import="com.clearing.model.StoreDTO"%>
<%@page import="com.clearing.model.tbl_reviewListDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>내가 작성한 리뷰 리스트</h1>
	<%
	ArrayList<tbl_reviewListDTO> reviewList = (ArrayList<tbl_reviewListDTO>) request.getAttribute("userReviewList");
	ArrayList<StoreDTO> reviewStoreName = (ArrayList<StoreDTO>) request.getAttribute("reviewListStoreName");
	
	if (reviewList == null) {
	%>
	<form action="Review_ViewUserController" method="post" enctype="multipart/form-data">
		<input type="submit" value="리뷰클릭">
	</form>
	
	<%
	} else {
	for (int i = 0; i < reviewList.size(); i++) {
%>
		
		<table border="1">
	<tr>
	<td>
	업체명 : <%=reviewStoreName.get(i).getSTORE_NAME() %>
	평점 : <%=reviewList.get(i).getReview_rating() %><br>
	리뷰 내용 : <%=reviewList.get(i).getReview_content() %>
	
	</td>
		<td>
			<a href="http://localhost:8081/Moo123123/Review_DeleteController?review_seq=<%=reviewList.get(i).getReview_seq()%>" >삭제</a>
	
		</td>
		<td>	
			<%-- 
			리뷰 사진 보기인데 우선 주석 처리해버림
			<img alt="x" src="./file/<%=reviewList.get(i).getReview_photo()%>">
	 		--%>
	 	</td>
		<%  %>
	</tr>
	
	</table>
		<br>

	<% }
	}
	%>




</body>
</html>