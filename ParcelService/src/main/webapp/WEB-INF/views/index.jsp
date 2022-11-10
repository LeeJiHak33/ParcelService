<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<title>택배 서비스</title> 
<style>
.logo {
	text-align: left;
}

.login {
	position: relative;
	top: -50px;
	padding-bottom: 50px;
	text-align: right;
}

.center {
	clear: both;
	text-align: center;
}
</style>

</head>
<body>
	<h1 class="logo">
		<a href="/">택배 배송 조회</a>
	</h1>
	<div class="login">
		<c:if test="${sessionScope.member == null}">
			<div>
				<a href="login"><button type="button">로그인</button></a><a
					href="signup"><button type="button">회원가입</button></a>
			</div>
		</c:if>
		<c:if test="${sessionScope.member != null}">
			<div>
				<div>
					어서오세요 ${sessionScope.member.name}님 <a href="logout"><button
							type="button">로그아웃</button></a>
				</div>
			</div>
		</c:if>
	</div>

	<div class="center">
		<form action="parcel/list" class="id_form">
			<label>운송장 번호를 입력하세요</label> <input type="number" name="id"
				style="width: 230px" maxlength="10"
				placeholder="'-'를 제외한 10자리를 입력해 주세요"> <a href="parcel/list"><button>검색</button></a>
		</form>
	</div>
	<div>
		<a href="product/list"><button type="button">상품목록</button></a> 
		<a href="sender/list"><button type="button">발송자목록</button></a> 
		<a href="parcel/list"><button type="button">배송 목록</button></a>
	</div>
</body>
</html>