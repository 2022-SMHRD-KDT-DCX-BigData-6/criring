<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- JSTL 경로
	사용할 페이지 안에서 이 라이브러리를 사용하겠다. 라고 명시
	prefix : 문자하나를 정해서 JSTL을 사용하겠다 (Alias(as) 같은 느낌)
-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 화면에 1 ~ 10 까지 출력 -->
	<%
		for(int i=1;i<=10;i++) {
			out.print(i + "\t");
		}
	%>
	<br>
	<!-- 자바코드가 아닌 태그로도 여러문법을 쓸 수 있음 -> forEach문 이용 -->
	<!-- var : 변수선언, begin : 시작, end : 끝, step : 증가량 -->
	<c:forEach var="i" begin="1" end="10" step="1">
		
		<!-- EL문법 -->
		<!-- JSTL과 많이 쓴다 JSTL-EL 이라고도 함. -->
		${i}<t>
	</c:forEach>
</body>
</html>