<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>발송자 목록</title>
</head>
<body>
	<div>
		<h1>
			<a href="/">택배 배송 조회</a>
		</h1>
	</div>
	<div>
		<h2>발송자 정보</h2>
	</div>
	<div>
		<table border="1">
			<thead>
				<tr>
					<th>아이디</th>
					<th>이름</th>
					<th>전화번호</th>
					<th>지점이름</th>
					<th>관리</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${list.size() < 1}">
					<tr>
						<td>발송자가 없습니다</td>
					</tr>
				</c:if>

				<c:forEach var="item" items="${list}">
					<tr>
						<td>${item.id}</td>
						<td>${item.name}</td>
						<td>${item.pNumber}</td>
						<td>${item.bName}</td>
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