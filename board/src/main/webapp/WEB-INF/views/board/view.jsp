<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 조회</title>
<style>
</style>
</head>
<body>  <!-- <br />태그는 줄바꿈 -->

<div id="nav">
 	<%@ include file="../include/nav.jsp" %>
</div>
	
	<label>[제목]</label> 
	${view.title} <br />

	<label>[작성자]</label> 
	${view.writer} <br />

	<label>[내용]</label> <br />
	${view.content} <br />

	<div>
		<a href="/board/modify?bno=${view.bno}">게시물 수정</a>
	</div>
</body>
</html>