<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>regist Page</title>
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap"
	rel="stylesheet">
<style type="text/css">
* {
	font-family: 'Montserrat', sans-serif;
	text-decoration: none;
	list-style: none;
	padding: 0px;
	margin: 0px;
	color: #000;
}

.web {
	width: 100%;
	height: 100%;
	background-color: #f5f6f7;
}

.container {
	width: 500px;
	height: 1300px;
	margin: auto;
	top: 0px;
}

.logo {
	width: 100%;
	height: 200px;
	font-family: 'Montserrat', sans-serif;
	font-weight: bold;
	font-size: 250%;
	text-align: center;
	line-height: 240px;
}

.regist_box {
	width: 100%;
	height: 950px;
}

.input_box {
	display: block;
	position: relative;
	width: 100%;
	height: 51px;
	border: solid 1px #dadada;
	padding: 10px 110px 10px 14px;
	background: #fff;
	box-sizing: border-box;
	vertical-align: top;
}

.input {
	display: block;
	position: relative;
	width: 100%;
	height: 29px;
	padding-right: 25px;
	line-height: 29px;
	border: none;
	background: #fff;
	font-size: 15px;
	box-sizing: border-box;
	z-index: 10;
	*position: absolute;
	*top: 0;
	*left: 0;
	apperance: none;
	-webkit-apperance: none;
}

.text_box {
	margin: 19px 0 8px;
	font-size: 14px;
	font-weight: 700;
}

.btn {
	display: block;
	width: 100%;
	padding: 15px 0 15px;
	font-size: 18px;
	font-weight: 700;
	text-align: center;
	cursor: pointer;
	box-sizing: border-box;
	margin-top: 30px;
	background-color: #000;
	color: #fff;
}

.footer {
	padding-top: 95px;
	padding-bottom: 15px;
	display: flex;
	flex-direction: column;
	align-items: center;
	width: 100%;
}
#copyright {
	font-family: none;
}
</style>
</head>
<body>
	<div class="web">
		<form action="regist" name="frm" method="post">
			<div class="container">
				<div class="logo">
					<a href="main">2nd shop</a>
				</div>
				<div class="regist_box">
					<div class="text_box">아이디</div>
					<span class="input_box"> <input type="text" name="memId"
						class="input">
					</span>
					<div class="text_box">비밀번호</div>
					<span class="input_box"> <input type="password" name="memPw"
						class="input">
					</span>
					<div class="text_box">비밀번호 확인</div>
					<span class="input_box"> <input type="password"
						name="memPwCon" class="input">
					</span>
					<div class="text_box">이름</div>
					<span class="input_box"> <input type="text" name="memName"
						class="input">
					</span>
					<div class="text_box">닉네임</div>
					<span class="input_box"> <input type="text" name="memNick"
						class="input">
					</span>
					<div class="text_box">우편번호</div>
					<span class="input_box"> <input type="text"
						name="postNumber" class="input">
					</span>
					<div class="text_box">주소</div>
					<span class="input_box"> <input type="text" name="memAdd"
						class="input">
					</span>
					<div class="text_box">상세주소</div>
					<span class="input_box"> <input type="text"
						name="memAddDetail" class="input">
					</span>
					<div class="text_box">핸드폰</div>
					<span class="input_box"> <input type="text" name="memPhone"
						class="input">
					</span>
					<button type="submit" class="btn">가입하기</button>
					<div class="footer">
						<span id="copyright">Copyright © 2nd shop All Rights
							Reserved.</span>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>