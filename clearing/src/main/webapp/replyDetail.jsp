<%@page import="com.clearing.model.admin_replyDTO"%>
<%@page import="com.clearing.model.admin_replyDAO"%>
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
		admin_replyDAO dao = new admin_replyDAO();
		admin_replyDTO dto = new admin_replyDTO(req_seq);
		admin_replyDTO aDto = dao.select_reply(dto);
		session.setAttribute("reply_seq", aDto.getReplySeq());
		session.setAttribute("req_seq", req_seq);
	%>

         <!-- 답변게시글 세부내용 조회 -->   
         <div id = "board">
            <table id="replyDetail">
               <tr>
                  <td>작성자</td>
               </tr>
               <tr>
                  <td><%=aDto.getAdminId() %></td>
               </tr>
               <tr>
                  <td colspan="2">내용</td>
               </tr>
               <tr>
                  <td colspan="2">
                     
                  </td>
               </tr>
               <tr>
                  <td colspan="2"><%=aDto.getReplyContent() %></td>
               </tr>
               <tr>
                  <td colspan="2">
                     <%=aDto.getReplyPhoto() %>
                  </td>
               </tr>
               <%if(session.getAttribute("email") == null){ %>
                <tr>
                  <td colspan="2"><a href="requestBoardMain.jsp"><button>뒤로가기</button></a></td>
               </tr>
               <%}else if (session.getAttribute("email").equals(aDto.getAdminId())) {%>
               <tr>
                  <td colspan="2"><a href="update_reply.jsp"><button>수정</button></a></td>
                  <td colspan="2"><a href="replyDelete?req_seq=<%=aDto.getReqSeq()%>"><button>삭제</button></a></td>
               </tr>
               <%} else if(session.getAttribute("email") != null) { %>
               	<tr>
                  <td colspan="2"><a href="requestBoardMain.jsp"><button>뒤로가기</button></a></td>
               </tr>
               <%} %>
</body>
</html>