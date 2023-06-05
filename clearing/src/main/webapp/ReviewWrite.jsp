<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="./css/rating.css" rel="stylesheet" type="text/css">
</head>
<body>



	<h1>리뷰 작성하기</h1>
	<hr>
	<h3>이용하신 매장은 어떠셨나요?</h3>

	<form action="Review_WriteController" method="post" enctype="multipart/form-data">
		<fieldset class="rate" name="rating">
			<input type="radio" id="rating5" name="rating" value="5"><label
				for="rating5" title="5점"></label> <input type="radio" id="rating4"
				name="rating" value="4""><label for="rating4" title="4점"></label>
			<input type="radio" id="rating3" name="rating" value="3"><label
				for="rating3" title="3점"></label> <input type="radio" id="rating2"
				name="rating" value="2"><label for="rating2" title="2점"></label>
			<input type="radio" id="rating1" name="rating" value="1"><label
				for="rating1" title="1점"></label>
		</fieldset>
		<br> <br>
		<div>
			리뷰내용<br> 
			<input type="text" name="textfield" style="height: 250px; width: 250px;">
		</div>
		<br> 
			<input type="file" name="file"><br> 
			<input type="submit" value="작성하기">
		</form>
	<br>
	<br>
	<br>
</body>
</html>








