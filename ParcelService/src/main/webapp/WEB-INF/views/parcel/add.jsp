<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<title>택배추가</title>
</head>
<body>
	<div>
		<div>
			<h3>택배 등록</h3>
		</div>
		<div>
			<form>
				<div>
					<label>운송장번호</label> <input type="number" name="id">
				</div>
				<div>
					<label>상품명</label> <input type="text" name="title">
				</div>
				<div>
					<label>주문일자</label> <input type="datetime" name="orderDate">
				</div>
				<div>
					<label>가격</label> <input type="number" name="price">
				</div>
				<div>
					<label>전화번호</label> <input type="text" name="pNumber">
				</div>
				<div>
					<label>발송일자</label> <input type="datetime" name="shipDate">
				</div>
				<div>
					<label>주소</label> <input type="text" name="shipAddress">
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