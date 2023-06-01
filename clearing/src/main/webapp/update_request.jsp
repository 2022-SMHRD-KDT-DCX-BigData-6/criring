<%@page import="com.clearing.model.Request_BoardDTO"%>
<%@page import="com.clearing.model.Request_BoardDAO"%>
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
		int req_seq =(int)session.getAttribute("req_seq");
		String req_title = (String)session.getAttribute("req_title");
		Request_BoardDTO dto = new Request_BoardDTO(req_seq, req_title);
		Request_BoardDAO dao = new Request_BoardDAO();
		Request_BoardDTO rDto = dao.selectDetail_request(dto);
	
	%>
		<div id = "board">
            <form action="reqBoardUpdate" method="post" enctype="multipart/form-data">
            <table id="list">
               <tr>
                  <td>제목</td>
                  <td><input type="text" name="req_title" value="<%=rDto.getReqTitle()%>"> </td>
               </tr>
               <tr>
                  <td>작성자</td>
                  <td><input type="hidden" name="req_email"><%=session.getAttribute("email") %></td>
               </tr>
               <tr>
                  <td colspan="2">내용</td>
               </tr>
               <tr>
                  <td colspan="2">
                     <input  type="file" name="req_file" style="float: right;" value="<%=rDto.getReqFile()%>">
                     <textarea  rows="10" name="req_content"  style="resize: none;"><%=rDto.getReqContent() %></textarea>         
                  </td>
               </tr>
               <tr>
                  <td colspan="2">
                     <input type="reset" value="초기화">
                     <input type="submit" value="수정">
                     <a href="requestBoardDetail.jsp?req_seq=<%=rDto.getReqSeq()%>&req_title=<%=rDto.getReqTitle()%>"><input type="button" value="돌아가기"></a>
                  </td>
               </tr>
            </table>
            </form>
         </div>
</body>
</html>