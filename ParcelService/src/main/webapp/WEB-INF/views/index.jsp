<%@ page language="java" contentType="text/html; charset=UTF-8 "
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
*{
	margin:0;
	padding:0;
}
@font-face {
    font-family: 'Pretendard-Regular';
    src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
    font-weight: 400;
    font-style: normal;
}
.back {
	background-image: url("../resources/images/bg_header_enterprise.png");
	height: 528px;
	background-size: 100%;

}
.logo {
	font-family: 'Pretendard-Regular';
	font-weight: 600;
	text-align: left;
	
}

.login {
	position: relative;
	padding-bottom: 50px;
	text-align: right;
}

.center {
	background: #fff;
    padding: 30px 59px;
    border-radius: 50px;
    overflow: hidden;
    clear: both;
    width: 800px;
    z-index: 55;
    margin-top: 0;
    box-sizing: border-box;
	margin-left: 370px;
	
}
.tit {
	background-image: url("../resources/images/ico_headerSearch_01.png");
	background-position: left center;
	background-repeat: no-repeat;
	claer: both;
	font-family: 'Pretendard-Regular';
	font-weight: 800;
	font-size: 24px;
    line-height: 38px;
    padding-left: 60px;
    padding-right: 35px;
    position: absolute;
    left: 440px;
    top: 135px;
   
}
.search {
	font-family: 'Pretendard-Regular';
	font-weight: 600;
	margin-left:220px;
    border-left: 1px solid #ddd;
    width: 350px;
	text-align: right;
}
.butn {
	size : 30px;
    border: none;
    background-color: #fff;
}

a {
	text-decoration-line: none;
}
</style>

</head>
<body>
<div class="back">
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
		<div class="tit">택배조회</div>
		<div class="search">
		<form action="parcel/list" class="id_form">
				<input type="number" name="id"
				style="width: 230px; border: none; background: transparent;" maxlength="10"
				placeholder="'-'를 제외한 10자리를 입력해 주세요"> <a href="parcel/list"><button class="butn"><img style="margin-left: 20px; position: absolute; right: 400px; top: 138px;" height="30px" src="../resources/images/btn_headerSearch.png "></button></a>
		</form>
		</div>
	</div>
</div>
	<div>
		<a href="product/list"><button type="button">상품목록</button></a> 
		<a href="sender/list"><button type="button">발송자목록</button></a> 		
	</div>
	<div>
		<h2>공지사항</h2>
		<ul>
			<li><a href="notice/detail/2">배송 지연 안내
			<span>
			22년 11월 22일
			</span>
			</a>				
			</li>

			<li><a href="notice/detail/3">우천 발생으로 인한 배송 중단
			<span>
			22년 11월 25일
			</span>
			</a>				
			</li>

			<li><a href="notice/detail/4">시스템 개편으로 인한 일부 서비스 중단 안내
			<span>
			22년 11월 24일
			</span>
			</a>				
			</li>
			
		</ul>
		<a href="notice/list"><button type="button">전체보기</button></a>
	</div>
	<div>
		<h2>자주 묻는 질문</h2>
		<ul>
			<li><a href="question/detail/1">오늘 보내면 언제 배송 되나요?
			<span>
			22년 11월 02일
			</span>
			</a>				
			</li>

			<li><a href="question/detail/2">물건이 파손(분실)되면 어떻게 해야 하죠?
			<span>
			22년 11월 19일
			</span>
			</a>				
			</li>

			<li><a href="question/detail/3">택배서비스를 이용한 현금영수증은 발급이 가능한가요?
			<span>
			22년 10월 28일
			</span>
			</a>				
			</li>
			
		</ul>
		<a href="question/list"><button type="button">전체보기</button></a>
	</div>
</body>
</html>