<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id = "board">
            <form action="reqBoardInsert" method="post" enctype="multipart/form-data">
            <table id="list">
               <tr>
                  <td>제목</td>
                  <td><input type="text" name="req_title"> </td>
               </tr>
               <tr>
                  <td>작성자</td>
                  <td><input  type="text" name="req_email"> </td>
               </tr>
               <tr>
                  <td colspan="2">내용</td>
               </tr>
               <tr>
                  <td colspan="2">
                     <input  type="file" name="req_file" style="float: right;">
                     <textarea  rows="10" name="req_content" style="resize: none;"></textarea>         
                  </td>
               </tr>
               <tr>
                  <td colspan="2">
                     <input type="reset" value="초기화">
                     <input type="submit" value="작성하기">
                  </td>
               </tr>
            </table>
            </form>
         </div>
</body>
</html>