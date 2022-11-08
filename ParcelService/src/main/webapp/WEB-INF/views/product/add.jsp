<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>상품 추가</title>
</head>
<body>
	<div>
		<div>
			<h3>상품 등록</h3>
		</div>
		<div>
			<form method="post">
				<div>
					<label>상품번호</label>
					<input type="number" name="id">
				</div>
				<div>
					<label>상품명</label>
					<input type="text" name="title">
				</div>
				<div>
					<label>가격</label>
					<input type="number" name="price">
				</div>
				<div>
					<label>회사</label>
					<input type="text" name="publisher">
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