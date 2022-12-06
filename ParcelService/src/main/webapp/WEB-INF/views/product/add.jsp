<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="../resources/css/proadd.css"
	type="text/css">
<title>상품 추가</title>
<style>
</style>
</head>
<body>
	<div class="back">
		<h2 class="main-title">
			<a href="/"> <img
				style="width: 70px; height: 50px; position: relative;"
				src="../resources/images/logo2.png">
			</a> <span class="login-title">상품추가</span> <span
				class="step-border step02"> </span>
		</h2>
		<div class="section-wrap">
			<form method="post" class="section">
				<div>
					<label>상품번호</label>
					<input type="number" name="id" class="inputpw">
				</div>
				<div>
					<label>상품명</label>
					<input type="text" name="title" class="inputpw">
				</div>
				<div>
					<label>가격</label>
					<input type="number" name="price" class="inputpw">
				</div>
				<div>
					<label>회사</label>
					<input type="text" name="publisher" class="inputpw">
				</div>
				<div>
					<label>운송장번호</label>
					<input type="number" name="parcelId" class="inputpw">
				</div>
				
				<div class="lobt"> 
				 	<button>등록</button>
				 	<a href="list"><button type="button">취소</button></a>
				 </div>
			</form>
		</div>
	</div>
</body>
</html>