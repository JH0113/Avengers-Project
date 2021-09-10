<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login Page</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap"
	rel="stylesheet">
<style type="text/css">
* {
	padding: 0px;
	margin: 0px;
	text-decoration: none;
	list-style: none;
	border-collapse: collapse;
	color: #000;
}

.wrap {
	position: absolute;
	width: 100%;
	height: 100%;
	background-color: #f5f6f7;
}

.header {
	width: 768px;
	height: 200px;
	margin: auto;
}

.logo {
	font-family: 'Montserrat', sans-serif;
	font-weight: bold;
	font-size: 250%;
	text-align: center;
	line-height: 240px;
}

.form_container {
	position: relative;
	width: 768px;
	height: 265px;
	margin: auto;
}

.form_box {
	max-width: 400px;
	margin: auto;
}

.input_box {
	position: relative;
	width: 354px;
	height: 29px;
	margin-bottom: 8px;
	padding: 7px 35px 10px 11px;
	border: solid 1px #dadada;
	background: #fff;
	margin-bottom: 8px;
	height: 29px;
	display: flex;
}

.input {
	font-size: 14px;
	line-height: 16px;
	position: relative;
	z-index: 9;
	width: 80%;
	height: 16px;
	padding: 8px 0 6px;
	color: #000;
	border: none;
	background: #fff;
	-webkit-appearance: none;
}

.error_box {
	font-size: 60%;
	margin-bottom: 8px;
	margin-left: 10px;
}

#error_text {
	color: red;
}

.btn {
	display: block;
	width: 100%;
	height: 56px;
	line-height: 55px;
	margin: 12px 0 14px;
	border-radius: 0;
	border: solid 1px rgba(0, 0, 0, .1);
	box-shadow: 0 2px 6px 0 rgb(61 80 81/ 8%);
	background-color: #404040;
	color: #fff;
	font-size: 16px;
	font-weight: 700;
	cursor: pointer;
	text-align: center;
}

.check_box {
	width: 100% px;
	height: 36px;
	border-bottom: solid 1px threedface;
}

.option_container {
	position: relative;
	width: 768px;
	height: 265px;
	margin: auto;
	text-align: center;
}

.opt_text {
	width: 100%;
	height: 56px;
}

.banner {
	width: 400px;
	height: 200px;
	margin: auto;
	background-image: url("images/noticeBanner.png");
	background-size: 400px 200px;
	background-image: url("images/noticeBanner.png");
}

.footer {
	padding-top: 95px;
	padding-bottom: 15px;
	display: flex;
	flex-direction: column;
	align-items: center;
	width: 100%;
}

.copyright {
	font-style: none;
}

a:hover {
	font-weight: bolder;
}
</style>
</head>
<body>
	<div class="wrap">
		<div class="header">
			<div class="logo">
				<a href="main">2nd shop</a>
			</div>
		</div>
		<div class="form_container">
			<form:form action="login" name="frm" method="post"
				modelAttribute="loginDTO">
				<div class="form_box">
					<div class="input_box">
						<input class="input" type="text" name="userId"
							value="${registInfo.memId}" placeholder="아이디">
					</div>
					<div class="error_box">
						<form:errors id="error_text" path="userId" />
					</div>
					<div class="input_box">
						<input class="input" type="password" name="userPw"
							placeholder="비밀번호">
					</div>
					<div class="error_box">
						<form:errors id="error_text" path="userPw" />
					</div>
					<input type="submit" value="로그인" class="btn">
					<div class="check_box">
						<input type="checkbox" value="Y" name="autoLogin"> 로그인 상태
						유지
					</div>
				</div>
			</form:form>
		</div>
		<div class="option_container">
			<div class="opt_text">
				<a href="findIdPage">아이디 찾기</a> | <a href="findPwPage">비밀번호 찾기</a> |
				<a href="memberRegistPage">회원가입</a>
			</div>
			<div class="banner"></div>
		</div>
		
		<div class="footer">
			<span id="copyright">Copyright © 2nd shop All Rights Reserved.</span>
		</div>
	</div>
</body>
</html>