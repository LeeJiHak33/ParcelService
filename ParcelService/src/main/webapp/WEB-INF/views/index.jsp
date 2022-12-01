<%@ page language="java" contentType="text/html; charset=UTF-8 "
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<title>택배 서비스</title>
<style>
* {
	margin: 0;
	padding: 0;
}

@font-face {
	font-family: 'Pretendard-Regular';
	src:
		url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff')
		format('woff');
	font-weight: 400;
	font-style: normal;
}

.header {
	border-bottom: 1px solid rgba(255, 255, 255, .25);
}

.back {
	background-image: url("../resources/images/bg_header_enterprise.png");
	height: 528px;
	background-size: 100%;
	background-repeat: no-repeat;
}

.welcome {
	font-family: 'Pretendard-Regular';
	font-weight: 600;
	color: #fff;
	position: absolute;
	right: 100px;
	top: 32px;
}

.logo {
	font-family: 'Pretendard-Regular';
	font-weight: 600;
	text-align: left;
}

.center {
	background: #fff;
	padding: 30px 59px;
	border-radius: 50px;
	overflow: hidden;
	clear: both;
	width: 800px;
	z-index: 55;
	margin-top: 90px;
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
	top: 217px;
}

.search {
	font-family: 'Pretendard-Regular';
	font-weight: 600;
	margin-left: 220px;
	border-left: 1px solid #ddd;
	width: 350px;
	text-align: right;
}

.butn {
	size: 30px;
	border: none;
	background-color: #fff;
}

input {
	font-family: 'Pretendard-Regular';
	font-weight: 600;
	font-size: 15px;
}

a {
	text-decoration-line: none;
	color: black;
}

nav li {
	font-family: 'Pretendard-Regular';
	font-weight: 400;
	font-size: 20px;
	color: #fff;
	display: inline-block;
	padding: 30px;
	position: relative;
	left: 300px;
}

.notice ul {
	display: flex;
	flex: 1 1 100%;
	max-width: calc(100% - 200px);
	margin: 0 auto;
	font-family: 'Noto Sans KR', sans-serif;
	list-style-type: none;
	position: absolute;
	left: 400px;
	top: 740px;
}
.allview {
	height: 400px;
}

.allview a {
	font-family: 'Noto Sans KR', sans-serif;
	position: relative;
	display: inline-flex;
	font-size: 18px;
	font-weight: 600;
	line-height: 34px;
	border: 1px solid;
	border-radius: 50px;
	padding: 0 14px;
	background-color: transparent;
	overflow: hidden;
	z-index: 0;
	left: 250px;
	top: 200px;
}

.ntit {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 24px;
	font-weight: 600;
	position: absolute;
	left: 250px;
	top: 750px;
}

.notice ul li a {
	position: relative;
	display: inline-block;
	width: 220px; font-size : 18px;
	font-weight: 500;
	height: 100%;
	padding: 18px 18px 10px;
	margin: 20px;
	border-top: 1px solid;
	border-color: lime;
	font-size: 18px;
}

.notice ul li a span {
	font-weight: 900;
}

.questit {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 24px;
	font-weight: 600;
	position: absolute;
	left: 250px;
	top: 1100px;
}

.quesview a {
	font-family: 'Noto Sans KR', sans-serif;
	position: absolute;
	display: inline-flex;
	font-size: 18px;
	font-weight: 600;
	line-height: 34px;
	border: 1px solid;
	border-radius: 50px;
	padding: 0 14px;
	background-color: transparent;
	overflow: hidden;
	z-index: 0;
	left: 1170px;
	top: 1110px;
}

.question ul {
	max-width: calc(100% - 200px);
	margin: 0 auto;
	font-family: 'Noto Sans KR', sans-serif;
	list-style-type: none;
	font-size: 20px;
	position: absolute;
	left: 250px;
	top: 1200px;
	display: inline-block;
	line-height: 2;
	font-weight: 1;
}

.question ul li {
	padding: 20px;
}

.big {
	font-weight: 600;
	width: 458px;
	height: 33px;
	border: 1px solid lime;
	box-shadow: 0px 4px 10px rgb(0 0 0/ 10%);
	border-radius: 12px;
	font-size: 28px;
}

.big a {
	position: absolute;
	bottom: 330px;
}

.preview p {
	position: relative;
	left: 790px;
	top: 142px;
	font-size: 18px;
    font-weight: 300;
    color: gray;
    line-height: 2;
    white-space: pre-wrap;
    max-width: calc(100% - 790px);
}
</style>

</head>
<body>
	<div class="back">
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

		<div class="center">
			<div class="tit">택배조회</div>
			<div class="search">
				<form action="parcel/list" class="id_form">
					<input type="number" name="id"
						style="width: 280px; border: none; background: transparent; box-shadow: none;"
						maxlength="10" placeholder="'-'를 제외한 10자리를 입력해 주세요"> <a
						href="parcel/list"><button class="butn">
							<img
								style="margin-left: 20px; position: absolute; right: 400px; top: 222px;"
								height="30px" src="../resources/images/btn_headerSearch.png ">
						</button></a>
				</form>
			</div>
		</div>
	</div>
	<div>
		<img style="width: 100%;" src="../resources/images/quickmenu2.png">
	</div>
	<!--  <div>
		<a href="product/list"><button type="button">상품목록</button></a> 
		<a href="sender/list"><button type="button">발송자목록</button></a> 		
	</div> -->

	<div class="ntit">
		<h2>공지사항</h2>
	</div>
	<div class="notice">
		<ul>
			<li><a href="notice/detail/2">태풍 11호 "힌남노" 영향에 따른 배송불가 지역 안내<br>
				<br> <span> 22.09.02 </span>
			</a></li>

			<li><a href="notice/detail/3">제주도&울릉도 기상악화로 인한 택배 지연 안내<br>
				<br> <span> 22.10.25 </span>
			</a></li>

			<li><a href="notice/detail/4">시스템 개편으로 인한 일부 서비스 중단 안내<br>
				<br> <span> 22.11.24 </span>
			</a></li>
		</ul>
	</div>
	<div class="allview">
		<a href="notice/list">전체보기</a>
	</div>
	<div class="questit">
		<h2>자주 묻는 질문</h2>
	</div>
	<div class="question">
		<ul>
			<li class="big"><a href="question/detail/1">오늘 보내면 언제 배송
					되나요? </a></li>

			<li><a href="question/detail/2">물건이 파손(분실)되면 어떻게 해야 하죠? </a></li>

			<li><a href="question/detail/3">택배서비스를 이용한 현금영수증은 발급이 가능한가요?
			</a></li>

			<li><a href="question/detail/3">홈페이지 접속 장애/오류시 해결방법 </a></li>

			<li><a href="question/detail/3">배달예정일이 지났는데 택배를 못 받았습니다. </a></li>

		</ul>
	</div>
	<div class="preview">
			<p>점포별 택배 마감시간 이전에 맡기신 물건은</p>
			<p>일반지역 : 2영업일 이내 배송</p>
			<p>제주 및 도서, 산간지역은 배송이 지연될 수 있습니다.</p>
			<p>(단 공휴일, 일요일, 천재지변시에는 배송기일에서 제외됩니다)<br><br></p>
			
			<p>점포별 택배 마감시간은 평일 17시 <br>(시,군,구 일부지역 및 경기 일부지역 15시), 토요일 12시 이며,<br>일요일 및 공휴일은 배송되지 않습니다.<br></p>
			<p><br>택배 마감시간은 지역마다 다르므로 <br>접수하시는 점포로 문의 바랍니다.<br>
			</p>
	</div>
	<div class="quesview">
		<a href="question/list">전체보기</a>
	</div>

</body>
</html>