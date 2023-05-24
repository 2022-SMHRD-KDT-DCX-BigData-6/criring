<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	div {
		text-align: center;
	}
</style>
</head>
<body>
    <div>
    	<h1>메인 페이지</h1>
    	<a href="./Ex06subPage.jsp">서브 페이지로 이동</a>
    </div>
        <br><br><br><br>
	<!-- 어떤 파일을 삽입하고 싶은지 파일 경로로 삽입 -->
	<%@ include file="./Ex06footer.jsp" %>
</body>
</html>