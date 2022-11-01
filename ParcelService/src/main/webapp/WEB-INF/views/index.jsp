<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<title>택배 서비스</title>
</head>
<body>
	<h1><a href="/parcelservice/">택배 배송 조회</a></h1>
	<div>
		<label>운송장 번호를 입력하세요</label> <input type="text" name="id">
		<a href="parcel/list"><button type="button">검색</button></a>
	</div>
	<div>
		<a href="login">로그인</a>
	</div>
	<div>
		<a href="signup">회원가입</a>
	</div>
</body>
</html>