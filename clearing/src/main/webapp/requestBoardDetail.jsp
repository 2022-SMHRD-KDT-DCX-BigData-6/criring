<%@page import="com.clearing.model.Request_BoardDAO"%>
<%@page import="com.clearing.model.Request_BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%	
		int req_seq = Integer.parseInt(request.getParameter("req_seq"));
		String req_title = request.getParameter("req_title");
		Request_BoardDTO dto = new Request_BoardDTO(req_seq, req_title);
		Request_BoardDAO dao = new Request_BoardDAO();
		Request_BoardDTO rDto = dao.selectDetail_request(dto);
		session.setAttribute("req_seq", req_seq);
		session.setAttribute("req_title", req_title);
	%>

         <!-- 게시글 세부내용 조회 -->   
         <div id = "board">
            <table id="reqDetail">
               <tr>
                  <td>제목</td>
               </tr>
               <tr>
                  <td><%=rDto.getReqTitle() %></td>
               </tr>
               <tr>
                  <td>작성자</td>
               </tr>
               <tr>
                  <td><%=rDto.getReqEmail() %></td>
               </tr>
               <tr>
                  <td colspan="2">내용</td>
               </tr>
               <tr>
                  <td colspan="2">
                     
                  </td>
               </tr>
               <tr>
                  <td colspan="2"><%=rDto.getReqContent() %></td>
               </tr>
               <tr>
                  <td colspan="2">
                     <%=rDto.getReqFile() %>
                  </td>
               </tr>
               <%
               // 로그인 아이디가 작성자의 아이디와 일치할 시 수정가능
               if (session.getAttribute("email") == null ) {
            	   
               } else if(session.getAttribute("email").equals(rDto.getReqEmail())) { %>
               <tr>
                  <td colspan="2"><a href="update_request.jsp"><button>수정</button></a></td>
               </tr>
               <%} %>
               <%
               // 로그인 아이디가 관리자 또는 작성자일 시 삭제 가능
               if (session.getAttribute("email") == null) {
            	   
               } else if(session.getAttribute("email").equals(rDto.getReqEmail()) || session.getAttribute("email").equals("kissmejr@naver.com")) { %>
               <tr>
                  <td colspan="2"><a href="requestBoardMain.jsp"><button>삭제</button></a></td>
               </tr>
               <%} %>
               <tr>
                  <td colspan="2"><a href="requestBoardMain.jsp"><button>뒤로가기</button></a></td>
               </tr>
            </table>
         </div>
</body>
</html>