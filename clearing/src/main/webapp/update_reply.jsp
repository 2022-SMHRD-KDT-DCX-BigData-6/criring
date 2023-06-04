<%@page import="com.clearing.model.admin_replyDAO"%>
<%@page import="com.clearing.model.admin_replyDTO"%>
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
		int req_seq = (int)session.getAttribute("req_seq");
		admin_replyDAO dao = new admin_replyDAO();
		admin_replyDTO dto = new admin_replyDTO(req_seq);
		admin_replyDTO aDto = dao.select_reply(dto);
	%>
	<div id = "board">
            <form action="replyUpdate" method="post" enctype="multipart/form-data">
            <table id="list">
               <tr>
                  <td>작성자</td>
                  <td><input type="hidden" name="admin_id"><%=aDto.getAdminId() %></td>
               </tr>
               <tr>
                  <td colspan="2">내용</td>
               </tr>
               <tr>
                  <td colspan="2">
                     <input  type="file" name="reply_photo" style="float: right;" value="<%=aDto.getReplyPhoto() %>">
                     <textarea  rows="10" name="reply_content"  style="resize: none;"><%=aDto.getReplyContent() %></textarea>         
                  </td>
               </tr>
               <tr>
                  <td colspan="2">
                     <input type="reset" value="초기화">
                     <input type="submit" value="수정">
                     <a href="replyDetail.jsp?req_seq=<%=aDto.getReqSeq()%>"><input type="button" value="돌아가기"></a>
                  </td>
               </tr>
            </table>
            </form>
         </div>
</body>
</html>