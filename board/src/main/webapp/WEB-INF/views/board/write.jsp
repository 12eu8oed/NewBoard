<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 작성</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>

</head>
<body>

<div id="nav" class="navbar navbar-dark bg-dark">   <!-- div태그란 구역을 나누어 주는 태그 -->
 	<%@ include file="../include/nav.jsp" %>
</div>

	<form method="post" class="m-4">

	<div class="form-group">
		<label for="title">제목</label>
		<input type="text" name="title" class="form-control" id="title" />
	</div>
	
	<div class="form-group">
		<label for="writer">작성자</label>
		<input type="text" name="writer" class="form-control" id="writer" />
	</div>
	
	<div class="form-group">
		<label for="content">내용</label>
		<textarea cols="50" rows="5" name="content" class="form-control" id="content"></textarea>
	</div>
	
	<button type="submit" class="btn btn-primary">작성</button>
	
	</form>

</body>
</html>
