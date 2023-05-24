<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- 절대값을 리턴해주는 메소드 : 선언문 -->
	<%!
		public int absNum(int num) {
		int abs=0;
		
		if(num > 0) {
			abs = num;
		} else {
			abs = num * (-1);
		}
		abs = num>0?num : num *(-1);
		return abs;
	}
	%>
	<%=2/0 %>
	입력한 절대값 : <%= absNum(5) %>
	입력한 절대값 : <%= absNum(-5) %>
	<!-- 출력해주는 문장 -->
	<% System.out.print(absNum(-5)); %>
	
	<form action="Ex04abs.jsp" method="post">
		<input type="text" name = "num">변환할 수를 입력하세요
		<input type="submit" value="제출">
	</form>
	
	<%
		request.setCharacterEncoding("UTF-8");
		String num = request.getParameter("num");
		
		if(num == null) {
			num = request.getParameter("num");
		} else {
			int num1 = Integer.parseInt(num);
			out.print("변한된 수 : " + absNum(num1));
		}
		
	%>
</body>
</html>