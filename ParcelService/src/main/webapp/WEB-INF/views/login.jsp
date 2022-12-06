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
<link rel="stylesheet" href="../resources/css/idpwlo.css" type="text/css">
<title>로그인</title>
<style>

</style>
</head>
<body>
	<div class="back">
		<h2 class="main-title">
			<a href="/">
			<img style="width: 70px; height: 50px; position: relative;" src="../resources/images/logo2.png">
			</a>
			<span class="login-title">로그인</span>
			<span class="step-border step02">
			</span>
		</h2>
		<div class="section-wrap">
			<form method="post" class="section">
				<div class="section-back">
				<div>
					<label>아이디</label>
					<input type="text" name="id" class="inputid" placeholder="ID">
				</div>
				<div>
					<label>비밀번호</label>
					<input type="password" name="passwd" class="inputpw" placeholder="PW">
				</div>
				<div class="lobt">
					<button>로그인</button>
					<a href="/"><button type="button">취소</button></a>
				</div>
				<p style="text-align: center; color: #a7a7a7;">*회원가입이나 로그인 없이 택배 조회가 가능합니다.</p>
				</div>
			</form>
		</div>
	</div>
</body>
</html>