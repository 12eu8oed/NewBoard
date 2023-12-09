<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 조회</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
</head>
<body>  <!-- <br />태그는 줄바꿈 -->

<div id="nav" class="navbar navbar-dark bg-dark">
 	<%@ include file="../include/nav.jsp" %>
</div>

<!-- 
<label>제목</label>
${view.title}<br />

<label>작성자</label>
${view.writer}<br />

<label>내용</label><br />
${view.content}<br />
 -->
	
<h2 class="mt-3">${view.title}</h2>

<hr />

	<div class="writer">
		<span class="font-weight-bold">작성자 : </span>${view.writer}
	</div>

<hr />

	<div class="content">
		${view.content}
	</div>

<div class="mt-3">
	<a href="/board/modify?bno=${view.bno}" class="btn btn-primary">게시물 수정</a>
	<a href="/board/delete?bno=${view.bno}" class="btn btn-danger">게시물 삭제</a>
</div>

</body>
</html>