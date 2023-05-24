<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %> <!-- 이 페이지는 에러페이지이다 라고 알려주기 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body align = "center">
	
    <img src="./images/error.png" alt="에러이미지" width="200px" height = "200px">
    <div>에러났지롱</div>
    
    <%=
    	exception.getMessage()
    %>
</body>
</html>