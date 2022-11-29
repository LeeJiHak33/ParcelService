<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<style>
a {
	text-decoration-line: none;
}
</style>
</head>
<body>
	<div>
		<h1>
			<a href="/">택배 배송 조회</a>
		</h1>
	</div>
	<div>
		<div>
			<h3>공지사항</h3>
		</div>

		<div>
			<label>제목</label>
			<div>${item.title}</div>
		</div>
		<div>
			<label>등록날짜</label>
			<div>
				<fmt:formatDate value="${item.regDate}" pattern="yyyy년 MM월 dd일" />
			</div>
		</div>
		<div>
			<label>내용</label>
			<div>${item.contents}</div>
		</div>
		<div>
			<a href="../list"><button>목록</button></a><a
				href="../delete/${item.id}"><button>삭제</button></a><a
				href="../update/${item.id}"><button>변경</button></a>
		</div>
	</div>
</body>
</html>