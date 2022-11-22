<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>공지사항</title>
</head>
<body>
	<div>
		<h1>
			<a href="/">택배 배송 조회</a>
		</h1>
	</div>
	<div>
		<h2>공지사항</h2>
	</div>
	<div>
		<table border="1">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>등록날짜</th>
					<th>조회수</th>
					<th>관리</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${list.size() < 1}">
					<tr>
						<td>게시글이 없습니다</td>
					</tr>
				</c:if>

				<c:forEach var="item" items="${list}">
					<tr>
						<td>${item.id}</td>
						<td><a href="detail/${item.id}">${item.title}</a></td>
						<td><fmt:formatDate value="${item.regDate}" pattern="yyyy년 MM월 dd일 "/></td>
						<td>${item.view}</td>
						<td><a href="delete/${item.id}"><button
					type="button">제거</button></a><a href="update/${item.id}"><button type="button">변경</button></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div>
		<div>
			<a href="add"><button type="button">추가</button></a>
		</div>
	</div>
</body>
</html>