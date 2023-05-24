<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="" method="get">
		<input type="text" name="room">방의 개수는? <input type="submit"
			value="send">
	</form>
	<!-- out 객체를 생성하지 않았는데 사용이 가능하다
	서블릿에서는 PrintWriter, JSP에서는 JSPWriter -> out -> 내장객체 -->
	<table border='1'>
	
	
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
			<td>4</td>
			<td>5</td>
		</tr>
		
		<tr>
			<%
			for (int i = 0; i < 5; i++) {
			%>
			<td><%=i%></td>
			<%
			}
			%>
		</tr>
		
		<tr>
			<% 
			for(int i =0; i<=10;i++) {
				out.print("<td>"+ i +"</td>");
			}
			%>
		</tr>
		<tr>
			<%
				
			%>
		</tr>
		<tr>
			<%
			String col1 = request.getParameter("room");
			if (col1 == null) {
				col1 = request.getParameter("room");
				System.out.print(col1);
			} else {
				int col = Integer.parseInt(col1);
				for (int i = 0; i < col; i++) {
					out.print("<td>" + i + "</td>");
				}
			}
			%>
		</tr>
	</table>

</body>
</html>