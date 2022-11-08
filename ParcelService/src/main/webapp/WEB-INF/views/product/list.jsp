<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>상품 정보</title>
</head>
<body>
	<div>
		<h1>
			<a href="/">택배 배송 조회</a>
		</h1>
	</div>
	<div>
		<h2>상품 정보</h2>
	</div>
	<div>
		<table border="1">
			<thead>
				<tr>
					<th>상품번호</th>
					<th>상품명</th>
					<th>가격</th>
					<th>배급사</th>
					<th>관리</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${list.size() < 1}">
					<tr>
						<td>등록된 상품이 없습니다</td>
					</tr>
				</c:if>

				<c:forEach var="item" items="${list}">
					<tr>
						<td>${item.id}</td>
						<td>${item.title}</td>
						<td>${item.price}</td>
						<td>${item.publisher}</td>
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