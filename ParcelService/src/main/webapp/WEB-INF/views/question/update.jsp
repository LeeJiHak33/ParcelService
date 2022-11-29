<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>공지사항 변경</title>
<style>
a {
	text-decoration-line: none;
}
</style>
</head>
<body>
	<form method="post">
		<div>
			<label>제목</label> <input type="text" name="title" value="${item.title}">
		</div>
		<div>
			<label>등록날짜</label> <input type="date" name="regDate" value="${item.regDateFormat}">
		</div>
		<div>
			<label>내용</label> <textarea name="contents">${item.contents}</textarea>
		</div>

		<div>
			<button>변경</button>
			<a href="../list"><button type="button">취소</button></a>
		</div>
	</form>
</body>
</html>