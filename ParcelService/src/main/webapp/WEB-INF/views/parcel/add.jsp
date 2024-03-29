<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>택배추가</title>
<style>
a {
	text-decoration-line: none;
}
</style>
</head>
<body>
	<div>
		<div>
			<h3>택배 등록</h3>
		</div>
		<div>
			<form method="post">
				<div>
					<label>운송장번호</label> <input type="number" name="id">
				</div>
				<div>
					<label>상품명</label> <input type="text" name="title">
				</div>
				<div>
					<label>주문일자</label> <input type="date" name="orderDate">
				</div>
				<div>
					<label>가격</label> <input type="number" name="price">
				</div>
				<div>
					<label>전화번호</label> <input type="text" name="pNumber">
				</div>
				<div>
					<label>발송일자</label> <input type="date" name="shipDate">
				</div>
				<div>
					<label>주소</label> <input type="text" name="address">
				</div>
				<div>
					<label>사용자 아이디</label> <input type="text" name="memberId">
				</div>
				<div>
					<label>보내는 사람</label> <input type="text" name="senderId">
				</div>
				<div>
					<button>등록</button>
					<a href="list"><button type="button">취소</button></a>
				</div>
			</form>
		</div>
	</div>
</body>
</html>