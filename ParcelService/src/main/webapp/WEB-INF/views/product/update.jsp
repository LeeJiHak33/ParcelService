<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>상품 변경</title>
</head>
<body>
	<form method="post">
		<div>
			<label>상품번호</label> <input type="number" name="id" value="${item.id}">
		</div>
		<div>
			<label>상품명</label> <input type="text" name="title" value="${item.title}">
		</div>
		<div>
			<label>가격</label> <input type="number" name="price" value="${item.price}">
		</div>
		<div>
			<label>회사</label> <input type="text" name="publisher" value="${item.publisher}">
		</div>
		<div>
			<button>변경</button>
			<a href="../list"><button type="button">취소</button></a>
		</div>
	</form>
</body>
</html>