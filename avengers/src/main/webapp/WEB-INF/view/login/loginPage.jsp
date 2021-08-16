<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype HTML>

<head>
	<meta charset="UTF-8">
	<title>LOGIN PAGE</title>

	<!-- CSS 시작 -->
	<link rel="stylesheet" href="style.css">
	<!-- fa 이미지를 쓰기 위한 스크립트 링크 -->
	<script src="https://kit.fontawesome.com/51db22a717.js" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="style.css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
	<style type="text/css">
		:root {
			--body-background-color: #ffffff;
			--font-color: #4e4e4e;
			--border-gray-color: #dadada;
			--login-button-color: #000000;
			--login-button-border-color: #000000;
		}

		* {
			margin: 0;
			padding: 0;
		}

		a {
			text-decoration: none;
			color: #000000;
		}

		body {
			background: var(--body-background-color);
		}

		/* 메인 컨테이너 */
		.main-container {
			width: 100%;
			display: flex;
			flex-direction: column;
			align-items: center;
			margin-top: 21px;
		}

		.main-container .main-wrap {
			width: 768px;
		}

		.main-container .main-wrap .sel-lang-wrap .lang-select {
			width: 96px;
			height: 30px;
			color: var(--font-color);
			border: solid 1px var(--border-gray-color);
		}

		.main-container .main-wrap .logo-wrap {
			padding-top: 55px;
		}


		.main-container .main-wrap .logo-wrap img /* 로고 이미지 대신 텍스트를 썼는데
		.logo-wrap img 이걸 삭제하면 div가 틀어져서 그냥 두었습니다. */
			{
			width: 231px;
			height: 44px;
		}

		.main-container .main-wrap header .sel-lang-wrap {
			display: flex;
			justify-content: flex-end;
		}

		.main-container .main-wrap header .logo-wrap {
			display: flex;
			flex-direction: column;
			align-items: center;
		}

		/* 로고 */
		.logo-wrap {
			font-family: 'Montserrat', sans-serif;
			font-weight: bold;
			font-size: 250%;
		}


		/* 로그인 영역 */
		.login-input-section-wrap {
			padding-top: 60px;
			display: flex;
			flex-direction: column;
			align-items: center;
		}

		.login-input-wrap {
			width: 465px;
			height: 48px;
			border: solid 1px var(--border-gray-color);
			background: white;
		}

		.password-wrap {
			margin-top: 13px;
		}

		.login-input-wrap input {
			border: none;
			width: 430px;
			margin-top: 10px;
			font-size: 14px;
			margin-left: 10px;
			height: 30px;
		}

		.login-button-wrap {
			padding-top: 13px;
		}

		.login-button-wrap button {
			width: 465px;
			height: 48px;
			font-size: 18px;
			background: var(--login-button-color);
			color: white;
			border: solid 1px var(--login-button-border-color);
		}

		.login-stay-sign-in {
			width: 465px;
			height: 52px;

			display: flex;
			font-size: 15px;
			color: #4e4e4e;
			align-items: center;
			justify-content: flex-start;
			border-bottom: solid 1px var(--border-gray-color);
		}

		.login-stay-sign-in i {
			font-size: 25px;
			color: #9ba1a3;
		}

		.login-stay-sign-in span {
			padding-left: 5px;
			line-height: 25px;
		}

		/* 간편로그인 영역 */
		.Easy-sgin-in-wrap {
			display: flex;
			flex-direction: column;
			align-items: center;
			padding-top: 40px;
		}

		.Easy-sgin-in-wrap h2 {
			font-size: 20px;
		}

		.Easy-sgin-in-wrap .sign-button-list {
			padding-top: 25px;
			list-style: none;
			width: 465px;
			display: flex;
			flex-direction: column;
			align-items: center;
		}

		.Easy-sgin-in-wrap .sign-button-list li {
			padding-bottom: 10px;
		}

		.Easy-sgin-in-wrap .sign-button-list li button {
			width: 465px;
			height: 56px;
			border: solid 1px var(--border-gray-color);
			text-align: left;
			background: white;
		}

		.Easy-sgin-in-wrap .sign-button-list li button i {
			padding-left: 15px;
			font-size: 20px;
		}

		/* fa 이미지 */
		.fa-qrcode {
			color: var(--login-button-color);
		}

		.fa-line {
			color: var(--login-button-color);
		}

		.fa-facebook-square {
			color: #4064ac;
		}

		.Easy-sgin-in-wrap .sign-button-list li button span {
			padding-left: 20px;
			font-size: 18px;
		}

		/* 아이디 찾기, 비밀번호 찾기, 회원가입 영역 */
		.Easy-sgin-in-wrap .forget-msg {
			color: var(--font-color);
			font-size: 14px;
			padding-top: 10px;

		}

		/* 푸터 */
		footer {
			padding-top: 95px;
			padding-bottom: 15px;

			display: flex;
			flex-direction: column;
			align-items: center;
			width: 768px;
		}

		.copyright-wrap {
			display: flex;
			flex-direction: column;
			align-items: center;
			height: 15px;
		}

		footer .copyright-wrap span {
			font-size: 13px;
			line-height: 15px;
		}
	</style>
</head>


<!-- html 시작 -->

<body>
	<div class="main-container">
		<div class="main-wrap">
			<header>
				<div class="sel-lang-wrap">
					<select class="lang-select">
						<option>한국어</option>
						<option>English</option>
					</select>
				</div>
				<div class="logo-wrap">
					<span>2nd shop</span>
				</div>
			</header>
			<section class="login-input-section-wrap">
				<div class="login-input-wrap">
					<input placeholder="아이디" type="text"></input>
				</div>
				<div class="login-input-wrap password-wrap">
					<input placeholder="비밀번호" type="password"></input>
				</div>
				<div class="login-button-wrap">
					<button>로그인</button>
				</div>
				<div class="login-stay-sign-in">
					<i class="far fa-check-circle"></i>
					<span>로그인 상태 유지</span>
				</div>
			</section>
			<section class="Easy-sgin-in-wrap">
				<h2>더욱 간편한 로그인</h2>
				<ul class="sign-button-list">
					<li><button><i class="fas fa-qrcode"></i><span>QR코드 로그인</span></button></li>
					<li><button><i class="fab fa-facebook-square"></i><span>Facebook</span></button></li>
					<li><button><i class="fab fa-line"></i><span>line</span></button></li>
				</ul>
				<p class="forget-msg"><a href="#">아이디 찾기</a> | <a href="#">비밀번호 찾기</a> | <a href="#">회원가입</a></p>
			</section>
			<footer>
				<div class="copyright-wrap">
					<span> Copyright © 2nd shop All Rights Reserved.</span>
				</div>
			</footer>
		</div>
	</div>
</body>
