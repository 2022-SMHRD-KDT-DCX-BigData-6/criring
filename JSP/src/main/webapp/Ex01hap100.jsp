<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	var a = 10
	console.log(a);
	var a_value = document.getElementsByClassName("abc").value;
	console.log(a_value);
</script>
</head>
<body>

	<!-- 스크립틀릿 -->
	<% 
	int result=0;
	for(int i =0 ; i<=100;i++) {
		result +=i;
	}
		System.out.print(result);
	%>
	
	<b>1~100까지의 합 : </b><b class="abc"><%= result %></b>
</body>
</html>