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
                     <%if(!rDto.getReqFile().equals("0")){%>
					<img alt="x" src="./file/<%=rDto.getReqFile() %>" style="width: 40%;">
					
					<%} %>
                  </td>
               </tr>
            </table>
         </div>
         
         <div id = "replyBoard">
            <form action="replyInsert" method="post" enctype="multipart/form-data">
            <table id="list">
               <tr>
                  <td>작성자</td>
                  <td><input type="hidden" name="admin_id"><%=session.getAttribute("email") %></td>
               </tr>
               <tr>
                  <td colspan="2">내용</td>
               </tr>
               <tr>
                  <td colspan="2">
                     <input  type="file" name="reply_photo" style="float: right;">
                     <textarea  rows="10" name="reply_content" style="resize: none;"></textarea>         
                  </td>
               </tr>
               <tr>
                  <td colspan="2">
                     <input type="reset" value="초기화">
                     <input type="submit" value="작성하기">
                     <a href="requestBoardMain.jsp"><input type="button" value="돌아가기"></a>
                  </td>
               </tr>
            </table>
            </form>
         </div>      
</body>
</html>