<%@page import="java.util.List"%>
<%@page import="com.clearing.model.Request_BoardDTO"%>
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
* {
  margin: 0;
  padding: 0;
}

div.app {
  width: 100%;
}

#writer{
	float: right;
}

table,
td {
  border: 1px solid #333;
  border-collapse: collapse;
}

table {
  width: 100%;
  margin-top: 20px;
}

td,
th {
  padding: 3px;
}

thead,
tfoot {
  background-color: #333;
  color: #fff;
}

td.center {
  text-align: center;
}

div.paging {
  width: 100%;
  display: inline-flex;
  align-items: center;
  margin-top: 20px;
  justify-content: center;
}

div.paging>i,
div.paging>div.pages {
  margin: 0 10px;
}

div.paging>i,
div.paging>div.pages>span {
  margin: 0 3px;
  cursor: pointer;
}

span.active {
  color: orangered;
  font-weight: bold;
}

</style>
</head>
<body>
	<%
		Request_BoardDAO dao = new Request_BoardDAO();
		List<Request_BoardDTO> sel_list = dao.selectAll_request();
	%>
	<div>
	<h1>문의 게시판 <a href="requestBoardWrite.jsp"><button type="button" class="btn btn-secondary" id="writer">게시글 작성</button></a></h1>
	</div>
    <div class="app">
      <table id="tblTodo">
        <caption></caption>
        <colgroup>
          <col width="10%" />
          <col width="10%" />
          <col width="*" />
          <col width="10%" />
        </colgroup>
        <thead>
          <tr>
            <th>넘버</th>
            <th>작성자</th>
            <th>제목</th>
            <th>작성일</th>
          </tr>
        </thead>
        <tbody>
        <%for (int i = 0; i < sel_list.size(); i++) {%>
        	<tr>
        		<td><%=i+1 %></td>
        		<td><%=sel_list.get(i).getReqEmail() %></td>
        		<td><%=sel_list.get(i).getReqTitle() %></td>
        		<td><%=sel_list.get(i).getReqDt() %></td>
        	</tr>
        <%} %>
        </tbody>
      </table>

      <div class="paging">
        <!-- Icon은 fontawesome에서 가져왔습니다. -->
        <i class="fa-solid fa-angles-left" id="first_page"></i>
        <i class="fa-solid fa-angle-left" id="prev_page"></i>
        <div class="pages">
          <span class="active">1</span>
          <span>2</span>
          <span>3</span>
          <span>4</span>
          <span>5</span>
        </div>
        <i class="fa-solid fa-angle-right" id="next_page"></i>
        <i class="fa-solid fa-angles-right" id="last_page"></i>
      </div>
    </div>
    <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>