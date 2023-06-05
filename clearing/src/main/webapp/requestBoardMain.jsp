<%@page import="com.clearing.model.admin_replyDTO"%>
<%@page import="com.clearing.model.admin_replyDAO"%>
<%@page import="com.clearing.model.Request_BoardDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.clearing.model.Request_BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<style type="text/css">
@import 'https://fonts.googleapis.com/css?family=Open+Sans:600,700';

* {font-family: 'Open Sans', sans-serif;}

#writer{
	float: right;
}

#main{
	float: left;
}

.rwd-table {
  margin: auto;
  width: 1200px;
  min-width: 300px;
  max-width: 100%;
  border-collapse: collapse;
}

.rwd-table tr:first-child {
  border-top: none;
  background: #428bca;
  color: #fff;
}

.rwd-table tr {
  border-top: 1px solid #ddd;
  border-bottom: 1px solid #ddd;
  background-color: #f5f9fc;
}

.rwd-table tr:nth-child(odd):not(:first-child) {
  background-color: #ebf3f9;
}

.rwd-table th {
  display: none;
}

.rwd-table td {
  display: block;
}

.rwd-table td:first-child {
  margin-top: .5em;
}

.rwd-table td:last-child {
  margin-bottom: .5em;
}

.rwd-table td:before {
  content: attr(data-th) ": ";
  font-weight: bold;
  width: 120px;
  display: inline-block;
  color: #000;
}

.rwd-table th,
.rwd-table td {
  text-align: center;
}

.rwd-table {
  color: #333;
  border-radius: .4em;
  overflow: hidden;
}

.rwd-table tr {
  border-color: #bfbfbf;
}

.rwd-table th,
.rwd-table td {
  padding: .5em 1em;
}
@media screen and (max-width: 601px) {
  .rwd-table tr:nth-child(2) {
    border-top: none;
  }
}
@media screen and (min-width: 600px) {
  .rwd-table tr:hover:not(:first-child) {
    background-color: #d8e7f3;
  }
  .rwd-table td:before {
    display: none;
  }
  .rwd-table th,
  .rwd-table td {
    display: table-cell;
    padding: .25em .5em;
  }
  .rwd-table th:first-child,
  .rwd-table td:first-child {
    padding-left: 0;
  }
  .rwd-table th:last-child,
  .rwd-table td:last-child {
    padding-right: 0;
  }
  .rwd-table th,
  .rwd-table td {
    padding: 1em !important;
  }
}


/* THE END OF THE IMPORTANT STUFF */

/* Basic Styling */
body {
background: #4B79A1;
background: -webkit-linear-gradient(to left, #4B79A1 , #283E51);
background: linear-gradient(to left, #4B79A1 , #283E51);        
}
h1 {
  text-align: center;
  font-size: 2.4em;
  color: #f2f2f2;
}
.container {
  display: block;
  text-align: center;
}
h3 {
  display: inline-block;
  position: relative;
  text-align: center;
  font-size: 1.5em;
  color: #cecece;
}
h3:before {
  content: "\25C0";
  position: absolute;
  left: -50px;
  -webkit-animation: leftRight 2s linear infinite;
  animation: leftRight 2s linear infinite;
}
h3:after {
  content: "\25b6";
  position: absolute;
  right: -50px;
  -webkit-animation: leftRight 2s linear infinite reverse;
  animation: leftRight 2s linear infinite reverse;
}
@-webkit-keyframes leftRight {
  0%    { -webkit-transform: translateX(0)}
  25%   { -webkit-transform: translateX(-10px)}
  75%   { -webkit-transform: translateX(10px)}
  100%  { -webkit-transform: translateX(0)}
}
@keyframes leftRight {
  0%    { transform: translateX(0)}
  25%   { transform: translateX(-10px)}
  75%   { transform: translateX(10px)}
  100%  { transform: translateX(0)}
}

/*
    Don't look at this last part. It's unnecessary. I was just playing with pixel gradients... Don't judge.
*/
/*
@media screen and (max-width: 601px) {
  .rwd-table tr {
    background-image: -webkit-linear-gradient(left, #428bca 137px, #f5f9fc 1px, #f5f9fc 100%);
    background-image: -moz-linear-gradient(left, #428bca 137px, #f5f9fc 1px, #f5f9fc 100%);
    background-image: -o-linear-gradient(left, #428bca 137px, #f5f9fc 1px, #f5f9fc 100%);
    background-image: -ms-linear-gradient(left, #428bca 137px, #f5f9fc 1px, #f5f9fc 100%);
    background-image: linear-gradient(left, #428bca 137px, #f5f9fc 1px, #f5f9fc 100%);
  }
  .rwd-table tr:nth-child(odd) {
    background-image: -webkit-linear-gradient(left, #428bca 137px, #ebf3f9 1px, #ebf3f9 100%);
    background-image: -moz-linear-gradient(left, #428bca 137px, #ebf3f9 1px, #ebf3f9 100%);
    background-image: -o-linear-gradient(left, #428bca 137px, #ebf3f9 1px, #ebf3f9 100%);
    background-image: -ms-linear-gradient(left, #428bca 137px, #ebf3f9 1px, #ebf3f9 100%);
    background-image: linear-gradient(left, #428bca 137px, #ebf3f9 1px, #ebf3f9 100%);
  }
}*/
</style>
</head>
<body>
	<%
		Request_BoardDAO dao = new Request_BoardDAO();
		List<Request_BoardDTO> sel_list = dao.selectAll_request();
		int num = 0;
	%>
	
	<div class="container">
	<h1>문의게시판</h1>
	<%if(session.getAttribute("email") != null){ %>
	<a href="requestBoardWrite.jsp"><button type="button" class="btn btn-secondary" id="writer">게시글 작성</button></a>
	<a href="index.jsp"><button type="button" class="btn btn-secondary" id="main">홈으로가기</button></a>
	<%} else {%>
	<a href="index.jsp"><button type="button" class="btn btn-secondary" id="main">홈으로가기</button></a>
	<%} %>
	  <table class="rwd-table">
	    <tbody>
	    <%// 관리자로 로그인하면 응답이 뜸 N으로 되어있으면 답글이 없는거 Y로 되어있으면 답글완료한거 확인용도 %>
	    <%if(session.getAttribute("email") == null){ %>
	    <tr>
	        <th>번호</th>
	        <th>제목</th>
	        <th>작성자</th>
	        <th>작성일</th>
	      </tr>
	      <%for (int i = 0; i < sel_list.size(); i++) {%>
	        	<tr>
	        		<td><%=num = num+1 %></td>
	        		<td><a href="requestBoardDetail.jsp?req_seq=<%=sel_list.get(i).getReqSeq()%>&req_title=<%=sel_list.get(i).getReqTitle()%>"><%=sel_list.get(i).getReqTitle() %></a></td>
	        		<td><%=sel_list.get(i).getReqEmail() %></td>
	        		<td><%=sel_list.get(i).getReqDt() %></td>
	        	</tr>
	        	<%if(sel_list.get(i).getReqType().equals("Y")){%>
	        		<tr>
	        		<td></td>
	        		<td><a href="replyDetail.jsp?req_seq=<%=sel_list.get(i).getReqSeq()%>">&nbsp;&nbsp; └ RE:&nbsp;<%=sel_list.get(i).getReqTitle()%>에 관한 답글입니다.</a></td>
	        		<td></td>
	        		<td></td>
	        		</tr>
	        	<%} %>
	        <%} %>
	        <%} else if(session.getAttribute("email").equals("kissmejr@naver.com")) {%>
	      <tr>
	        <th>번호</th>
	        <th>제목</th>
	        <th>작성자</th>
	        <th>작성일</th>
	        <th>응답</th>
	      </tr>
	      <%for (int i = 0; i < sel_list.size(); i++) {%>
	        	<tr>
	        		<td><%=num = num+1 %></td>
	        		<td><a href="requestBoardDetail.jsp?req_seq=<%=sel_list.get(i).getReqSeq()%>&req_title=<%=sel_list.get(i).getReqTitle()%>"><%=sel_list.get(i).getReqTitle() %></a></td>
	        		<td><%=sel_list.get(i).getReqEmail() %></td>
	        		<td><%=sel_list.get(i).getReqDt() %></td>
	        		<td><a href="replyWrite.jsp?req_seq=<%=sel_list.get(i).getReqSeq()%>&req_title=<%=sel_list.get(i).getReqTitle()%>">답글달기</a></td>
	        	</tr>
	        	<%if(sel_list.get(i).getReqType().equals("Y")){%>
	        		<tr>
	        		<td></td>
	        		<td><a href="replyDetail.jsp?req_seq=<%=sel_list.get(i).getReqSeq()%>">&nbsp;&nbsp; └ RE:&nbsp;<%=sel_list.get(i).getReqTitle()%>에 관한 답글입니다.</a></td>
	        		<td></td>
	        		<td></td>
	        		<td></td>
	        		</tr>
	        	<%} %>
	        <%} %>
	        <%} else if(session.getAttribute("email") != null) { %>
		    <tr>
		        <th>번호</th>
		        <th>제목</th>
		        <th>작성자</th>
		        <th>작성일</th>
		      </tr>
		      <%for (int i = 0; i < sel_list.size(); i++) {%>
		        	<tr>
		        		<td><%=num = num+1 %></td>
		        		<td><a href="requestBoardDetail.jsp?req_seq=<%=sel_list.get(i).getReqSeq()%>&req_title=<%=sel_list.get(i).getReqTitle()%>"><%=sel_list.get(i).getReqTitle() %></a></td>
		        		<td><%=sel_list.get(i).getReqEmail() %></td>
		        		<td><%=sel_list.get(i).getReqDt() %></td>
		        	</tr>
		        	<%if(sel_list.get(i).getReqType().equals("Y")){%>
	        		<tr>
	        		<td></td>
	        		<td><a href="replyDetail.jsp?req_seq=<%=sel_list.get(i).getReqSeq()%>">&nbsp;&nbsp; └ RE:&nbsp;<%=sel_list.get(i).getReqTitle()%>에 관한 답글입니다.</a></td>
	        		<td></td>
	        		<td></td>
	        		</tr>
	        	<%} %>
		        <%} %>
	        <%} %>
	        
	      <!-- <tr>
	        <td data-th="Supplier Code">
	          UPS5005
	        </td>
	        <td data-th="Supplier Name">
	          UPS
	        </td>
	        <td data-th="Invoice Number">
	          ASDF19218
	        </td>
	        <td data-th="Invoice Date">
	          06/25/2016
	        </td>
	        <td data-th="Due Date">
	          12/25/2016
	        </td>
	        <td data-th="Net Amount">
	          $8,322.12
	        </td>
	      </tr> -->
	    </tbody>
	  </table>
	  <h3>Resize Me</h3>
	</div>
	<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>