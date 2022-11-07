<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>발송자 추가</title>
</head>
<body>
	<div>
		<div>
			<h3>발송자 등록</h3>
		</div>
		<div>
			<form method="post">
				<div>
					<label>발송자 아이디</label>
					<input type="text" name="id">
				</div>
				<div>
					<label>이름</label>
					<input type="text" name="name">
				</div>
				<div>
					<label>전화번호</label>
					<input type="text" name="pNumber">
				</div>
				<div>
					<label>지점이름</label>
					<input type="text" name="bName">
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