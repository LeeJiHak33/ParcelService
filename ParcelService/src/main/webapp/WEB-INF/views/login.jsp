<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../resources/css/login.css" type="text/css">
<title>로그인</title>
<style>

</style>
</head>
<body>
	<div class="back">
		<div class="title">
			<h3><a href="/"><img
					style="width: 105px; height: 75px; position: relative;"
					src="../resources/images/logo2.png"></a>로그인</h3>
		</div>
		<div class="section-wrap">
			<form method="post" class="section">
				<div>
					<label>아이디</label>
					<input type="text" name="id" class="inputid" placeholder="ID">
				</div>
				<div>
					<label>비밀번호</label>
					<input type="password" name="passwd" class="inputpw" placeholder="PW">
				</div>
				<div>
					<button>로그인</button>
					<a href="/"><button type="button">취소</button></a>
				</div>
				<p>*회원가입이나 로그인 없이 택배 조회가 가능합니다.</p>
			</form>
		</div>
	</div>
</body>
</html>