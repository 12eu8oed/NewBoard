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
<style>
.navbar-custom {
	background-color: #343a40;
} /* 네비게이션 바 색상을 Bootstrap의 기본 어두운 회색으로 변경 */
.btn-custom {
	border-color: #007bff;
	color: #007bff;
} /* 버튼의 테두리와 글씨 색상을 Bootstrap의 기본 파란색으로 변경 */
.btn-custom:hover {
	background-color: #007bff;
	color: white;
} /* 버튼을 호버했을 때의 배경과 글씨 색상을 설정 */
body {
	font-size: 1.2rem;
} /* 본문의 글씨 크기를 1.2rem으로 설정 */
</style>
</head>
<body>

<div id="nav" class="navbar navbar-light" style="background-color: #4c4c4c;">
	<%@ include file="../include/nav.jsp" %>  
</div>

<div class="container mt-4">
    <form method="post">
    
        <div class="form-group">
            <label for="title">제목</label>
            <input type="text" class="form-control" id="title" name="title">
        </div>
        
        <div class="form-group">
            <label for="writer">작성자</label>
            <input type="text" class="form-control" id="writer" name="writer">
        </div>
        
        <div class="form-group">
            <label for="content">내용</label>
            <textarea class="form-control" id="content" name="content" rows="5"></textarea>
        </div>
        
        <button type="submit" class="btn btn-outline-primary">작성</button>
    </form>
</div>

</body>
</html>