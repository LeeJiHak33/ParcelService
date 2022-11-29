<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원가입</title>
<style>
a {
	text-decoration-line: none;
}
</style>
<script>
	let isCheck;

	function checkId(mode) {
		if (document.signup_form.id.value == "") {
			alert("중복검사 전에 아이디를 입력 하세요");
			return;
		}
		if (mode)
			checkId_Async();
		else
			checkId_Sync();
	}

	function checkId_Async() {

		const form = document.signup_form;

		const xhr = new XMLHttpRequest();

		xhr.onreadystatechange = function() {
			console.log(xhr.readyState);

			if (xhr.readyState == XMLHttpRequest.DONE) {
				if (xhr.status == 200) {
					const result = xhr.responseText;
					console.log("응답 : " + result);

					if (result == "OK") {
						isCheck = form.id.value;
						alert("사용 가능한 아이디 입니다");
					} else
						alert("이미 사용중인 아이디 입니다");
				}
			}
		};

		xhr.open("GET", "checkId/" + form.id.value, true);

		xhr.send();
	}

	function signup() {
		const form = document.signup_form;

		if (isCheck != form.id.value) {
			alert("아이디 중복 검사를 해야합니다");
			return;
		}

		if (form.id.value == "") {
			alert("아이디를 입력 해 주세요");
			form.id.focus();
			return;
		}
		if (form.passwd.value == "") {
			alert("비밀번호를 입력 해 주세요");
			form.passwd.focus();
			return;
		}
		if (form.passwd_valid.value == "") {
			alert("비밀번호 확인을 입력 해 주세요");
			form.passwd_valid.focus();
			return;
		}
		if (form.passwd.value != form.passwd_valid.value) {
			alert("비밀번호가 일치하지 않습니다");
			form.passwd.focus();
			return;

		}
		if (form.name.value == "") {
			alert("이름을 입력 해 주세요");
			form.name.focus();
			return;
		}
		form.submit();
	}
</script>
</head>
<body>
	<div>
		<div>
			<h3>회원가입</h3>
		</div>
		<div>
			<form name="signup_form" method="post">
				<div>
					<label>아이디:</label> <input type="text" name="id"
						placeholder="아이디를 입력해 주세요">
					<button type="button" onclick="checkId(true)">중복체크</button>
				</div>
				<div>
					<label>비밀번호:</label> <input type="password" name="passwd" placeholder="비밀번호를 입력해 주세요">
				</div>
				<div>
					<label>비밀번호 확인:</label> <input type="password" name="passwd_valid">
				</div>
				<div>
					<label>이름:</label> <input type="text" name="name"
						placeholder="이름을 입력해 주세요">
				</div>
				<div>
					<label>주소:</label> <input type="text" name="address"
						placeholder="주소를 입력해 주세요">
				</div>
				<div>
					<button type="button" onclick="signup()">회원가입</button>
					<a href="/"><button type="button">취소</button></a>
				</div>
			</form>
		</div>
	</div>
</body>
</html>