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
<link rel="stylesheet" href="../resources/css/noadd.css"
	type="text/css">
<title>공지사항 추가</title>
<style>
</style>
</head>
<body>
	<div class="back">
		<h2 class="main-title">
			<a href="/"> <img
				style="width: 70px; height: 50px; position: relative;"
				src="../resources/images/logo2.png">
			</a> <span class="login-title">공지추가</span> <span
				class="step-border step02"> </span>
		</h2>
		<div class="section-wrap">
			<form method="post" class="section">
				<div>
					<label>제목</label>
					<input type="text" name="title" class="inputpw">
				</div>
				<div>
					<label>등록날짜</label>
					<input type="date" name="regDate" class="inputpw">
				</div>
				<div>
					<label>내용</label>
					<textarea name="contents" class="inputpw2">${item.contents}</textarea>
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