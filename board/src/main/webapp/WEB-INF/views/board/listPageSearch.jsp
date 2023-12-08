<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body {
    font-family: Arial, sans-serif;
}

#nav {
    background-color: rgba(255, 255, 128, .5);
    color: white;
    padding: 10px;
    border: 1px solid #000;
}

table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    border: 1px solid #ddd;
    padding: 8px;
}

th {
    text-align: center;
    background-color: #f1f1f1;
}

a {
    color: #000;
    text-decoration: none;
}

.pagination {
    display: flex;
    justify-content: center;
    margin-top: 20px;
}

.pagination li {
    margin: 0 5px;
}

.pagination li a {
    padding: 5px 10px;
    border: 1px solid #ddd;
    color: #000;
}

.pagination li.active a {
    background-color: #f1f1f1;
}
</style>
<body>

<div id="nav">
	 <%@ include file="../include/nav.jsp" %>
</div>

<table>
	<thead>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성일</th>
			<th>작성자</th>
			<th>조회수</th>
	</thead>
	
	<tbody>

			<c:forEach items="${list}" var="list">
				<tr>
					<td>${list.bno}</td>
					<td>
						<a href="/board/view?bno=${list.bno}">${list.title}</a>
					</td>
					<td>
						<fmt:formatDate value="${list.regDate}" pattern="yyyy-MM-dd hh:mm:ss" /> <!-- 연도 날짜 시 분 초 -->
					</td>
					<td>${list.writer}</td>
					<td>${list.viewCnt}</td>
				</tr>
			</c:forEach>

		</tbody>
	
</table>

	<div>
		<c:if test="${page.prev}">
			<span>[<a href="/board/listPageSearch?num=${page.startPageNum - 1}">이전</a>]</span>
		</c:if>

		<c:forEach begin="${page.startPageNum}" end="${page.endPageNum}" var="num">
			<span> 
				<c:if test="${select != num}">
					<a href="/board/listPageSearch?num=${num}">${num}</a>
				</c:if>
				
				<c:if test="${select == num}">
					<b>${num}</b>  <!-- 현재페이지에는 하이퍼링크를 달지 않는다. -->
				</c:if>
			</span>	
		</c:forEach>
		
		<c:if test="${page.next}">
			<span>[<a href="/board/listPageSearch?num=${page.endPageNum + 1}">다음</a>]</span>
		</c:if>
	</div>

</body>
</html>