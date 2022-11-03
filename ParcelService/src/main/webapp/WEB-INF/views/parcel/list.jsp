<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>배송리스트</title>
</head>
<body>
	<div>
		<div>
			<h1>
				<a href="/">택배 배송 조회</a>
			</h1>
		</div>
		<div>
			<h2>배송 목록</h2>
		</div>
		<div>
			<table border="1">
				<thead>
					<tr>
						<th>운송장번호</th>
						<th>상품명</th>
						<th>주문일자</th>
						<th>가격</th>
						<th>전화번호</th>
						<th>발송일자</th>
						<th>주소</th>
					</tr>
				</thead>

				<tbody>
					<c:if test="${list.size() < 1}">
						<tr>
							<td>조회할 수 없는 상품입니다 운송장 번호를 다시 확인해 주세요</td>
						</tr>
					</c:if>

					<c:forEach var="item" items="${list}">
						<tr>
							<td>${item.id}</td>
							<td>${item.title}</td>
							<td>${item.orderDate}</td>
							<td>${item.price}</td>
							<td>${item.pNumber}</td>
							<td>${item.shipDate}</td>
							<td>${item.shipAddress}</td>
							<td>${item.memberId}</td>
							<td>${item.senderId}</td>
							<td>${item.productId}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div>
			<div>
				<a href="add"><button>추가</button></a>
			</div>
		</div>
	</div>
</body>
</html>