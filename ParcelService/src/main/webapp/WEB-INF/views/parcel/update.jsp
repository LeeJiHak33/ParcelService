<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>배송 목록 변경</title>
</head>
<body>
	<form method="post">
		<div>
			<label>운송장번호</label> <input type="number" name="id" value="${item.id}">
		</div>
		<div>
			<label>상품명</label> <input type="text" name="title" value="${item.title}">
		</div>
		<div>
			<label>주문일자</label> <input type="date" name="orderDate" value="${item.orderDateFormat}">
		</div>
		<div>
			<label>가격</label> <input type="number" name="price" value="${item.price}">
		</div>
		<div>
			<label>전화번호</label> <input type="text" name="pNumber" value="${item.pNumber}">
		</div>
		<div>
			<label>발송일자</label> <input type="date" name="shipDate" value="${item.shipDateFormat}">
		</div>
		<div>
			<label>주소</label> <input type="text" name="address" value="${item.address}">
		</div>
		<div>
			<label>사용자 아이디</label> <input type="text" name="memberId" value="${item.memberId}">
		</div>
		<div>
			<label>보내는 사람</label> <input type="text" name="senderId" value="${item.senderId}">
		</div>
		<div>
			<button>변경</button>
			<a href="../list"><button type="button">취소</button></a>
		</div>

	</form>
</body>
</html>