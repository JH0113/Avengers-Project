<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>main page</title>
<link rel="stylesheet" href="style.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap"
	rel="stylesheet">
<style type="text/css">
* {
	list-style: none;
	text-decoration: none;
	color: #000;
	margin: 0;
	padding: 0;
}

.web {
	width: 100%;
	height: 100%;
}

.body {
	max-width: 1200px;
	display: flex;
	height: 1300px;
	margin: auto;
}

.left_bar {
	height: 1200px;
	width: 250px;
}

.logo {
	background-color: #fff;
	height: 150px;
	width: 100%;
	text-align: center;
	line-height: 150px;
}

#logo_text {
	font-family: 'Montserrat', sans-serif;
	font-size: 300%;
}


li {
	padding: 5px;
	font-family: 'Montserrat', sans-serif;
	font-size: 130%;
}

li a {
	display: block;
}

.right_bar {
	height: 1200px;
	width: 950px;
}

.header {
	height: 240px;
	width: 100%;
}

.top_menu {
	display: flex;
	width: 900px;
	margin: auto;
	height: 86px;
	padding-top: 10px;
	padding-left: 440px;
}

.nav {
	float: right;
	background-color: #fff;
	display: flex;
	justify-content: flex-end;
	line-height: 86px;
}

.nav li {
	margin-left: 84px;
}

.nav li a:hover {
	font-weight: bolder;
}

.nav li a {
	color: #000;
}

.search {
	width: 100%;
	height: 120px;
	padding-top: 20px;
}

.search_area {
	float: right;
	width: 300px;
	height: 40px;
	background: rgba(0.0 .0 .0 .5);
	border-radius: 5px;
	margin-top: 24px;
}

.search_area form input {
	border: none;
	border-bottom: solid 1px;
	background: rgba(0, 0, 0, 0.0);
	width: 250px;
	height: 40px;
	color: #000;
	padding-left: 15px;
}

.search_area form span {
	width: 50px;
	color: #000;
	font-weight: bold;
	cursor: pointer;
}

.headmenu {
	width: 100%;
	height: 120px;
}

.banner {
	width: 100%;
	height: 400px;
	background-image: url("images/notice.png");
	background-size: 100% 400px;
}

.products {
	font-family: 'Montserrat', sans-serif;
	width: 100%;
	height: 600px;
}

td {
	padding: 10px;
	text-align: center;
}

table {
	margin: auto;
}

.footer {
	width: 100%;
	height: 150px;
	background-color: #000;
	clear: both;
	text-align: center;
	line-height: 50px;
}

#footer_text {
	color: #fff;
}
</style>
</head>
<body>
	<div class="web">
		<div class="body">
			<div class="left_bar">
				<div class="logo">
					<span id="logo_text">2nd shop<span>
				</div>
				<div class="category">
					<div class="dropdown">
						<span id="menu_text"></span>
						<div class="dropdown-content">
						
						</div>
					</div>
					<div class="dropdown">
						<span id="menu_text"></span>
						<div class="dropdown-content">
							
						</div>
					</div>
					<div class="dropdown">
						<span id="menu_text"></span>
						<div class="dropdown-content">
							
						</div>
					</div>
					<div class="dropdown">
						<span id="menu_text"></span>
						<div class="dropdown-content">
						
						</div>
					</div>
				</div>
			</div>
			<div class="right_bar">
				<div class="header">
					<div class="search">
						<div class="search_area">
							<form>
								<input type="search" placeholder="search"> <span>검색</span>
							</form>
						</div>
					</div>
					<div class="headmenu">
						<div class="top_menu">
							<c:if test="${empty authinfo }">
							<ul class="nav">
									<li><a href="loginPage">LOGIN</a></li>
									<li><a href="registPage">REGIST</a></li>
									<li><a href="noticePage">NOTICE</a></li>
							</ul>
							</c:if>
							<c:if test="${!empty authinfo }">
							<ul class="nav">
									<li><a href="loginPage">LOGOUT</a></li>
									<li><a href="registPage">MYPAGE</a></li>
									<li><a href="noticePage">NOTICE</a></li>
							</ul>
							</c:if>
						</div>
					</div>
				</div>
				<div class="banner"></div>
				<div class="products">
					<table>
						<tr>
							<th>글번호</th><th>종류</th><th>제목</th><th>조회수</th><th>글쓴이</th><th>게시일</th></tr>
						
						<tr>
							<td>1</td><td>이벤트공지</td><td>[이벤트] 전 상품 최대 할인 (test용~~~) 어쩌구 저쩌구 궁시렁 어쩌구 저쩌궁 </td><td>650</td><td>관리자</td><td>2021-08-06</td>
						</tr>

					</table>
				</div>
			</div>
		</div>
		<div class="footer">
			<h2 id="footer_text">푸터입니당.</h2>
		</div>
	</div>
</body>
</html>
