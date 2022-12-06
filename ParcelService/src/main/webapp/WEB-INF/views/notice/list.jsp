<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="../resources/css/noticelist.css" type="text/css">
<title>공지사항</title>
<style>
</style>
</head>
<body>
	<div class="back" style="background-image: url('../resources/images/bg_header_enterprise.png');">
		<div class="header">
		<h1 class="logo">
				<a href="/"><img
					style="width: 105px; height: 75px; position: absolute; right: 1370px; top: 10px;"
					src="../resources/images/logo2.png"></a>
			</h1>

			<nav class="menu">
				<ul>
					<li>회사소개</li>
					<li>개인택배</li>
					<li>택배예약</li>
					<li>고객센터</li>
				</ul>
			</nav>
		</div>
		<div class="login">
			<c:if test="${sessionScope.member == null}">
				<div>
					<a href="login"><button type="button"
							style="border: none; outline: none; box-shadow: none; background: none;">
							<img
								style="width: 35px; height: 35px; position: absolute; right: 100px; top: 26px;"
								src="../resources/images/login2.png">
						</button></a> <a href="signup"><button type="button"
							style="border: none; outline: none; box-shadow: none; background: none;">
							<img
								style="width: 35px; height: 35px; position: absolute; right: 50px; top: 26px;"
								src="../resources/images/signup.png">
						</button></a>
				</div>
			</c:if>
			<c:if test="${sessionScope.member != null}">
				<div>
					<div class="welcome">어서오세요 ${sessionScope.member.name}님</div>
					<div>
						<a href="logout"><button type="button"
								style="border: none; outline: none; box-shadow: none; background: none;">
								<img
									style="width: 35px; height: 35px; position: absolute; right: 50px; top: 26px;"
									src="../resources/images/logout.png">
							</button></a>
					</div>

				</div>
			</c:if>
		</div>
	<div>
		<h2>공지사항</h2>
	</div>
	<div class="naviBoxWrap">
		<p>공지사항</p>
	</div>
		<div class="wrap">
		<table class="board pclist">
			<colgroup>
					<col style="width:90px;">
					<col style="width:190px;">					
					<col style="width:100px;">
					<col style="width:120px;">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">제목</th>
					<th scope="col">등록날짜</th>
					<th scope="col">조회수</th>
					<!--  <th scope="col">관리</th>-->
				</tr>
			</thead>
			<tbody>
				<c:if test="${list.size() < 1}">
					<tr>
						<td>게시글이 없습니다</td>
					</tr>
				</c:if>

				<c:forEach var="item" items="${list}">
					<tr>
						<td>${item.id}</td>
						<td class="text-left" style="text-align: left;"><a href="detail/${item.id}">${item.title}</a></td>
						<td><fmt:formatDate value="${item.regDate}" pattern="yyyy년 MM월 dd일 "/></td>
						<td>${item.view}</td>						
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div>
		<div class="butn">
			<a href="add"><button type="button">추가</button></a><a href="delete/${item.id}"><button
					type="button">제거</button></a><a href="update/${item.id}"><button type="button">변경</button></a>
		</div>
	</div>
	</div>
</body>
</html>