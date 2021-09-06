<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>my page</title>
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
	height: 350px;
	margin: auto;
}

.left_bar {
	height: 240px;
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
	height: 240px;
	width: 950px;
}

.header {
	height: 240px;
	width: 100%;
}
.top_menu {
   display: flex;
   width: 100%;
   margin: auto;
   height: 86px;
}
.nav {
   width: 950px;
   height : 96px;
   display: flex;
   justify-content: flex-end;
   line-height: 86px;
   background-color: #fff;
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

.leg {
	background-color: rgb(231, 231, 231);
	width: 1200px;
	height: 250px;
	margin: auto;
	padding-top: 40px;
	border-radius: 10px;
}

.navigation {
	display: flex;
	justify-content: center;
}

.my_menu {
	width: 200px;
	height: 200px;
	margin-left: 30px;
	margin-right: 30px;
	background-color: white;
	border-radius: 10px;
}

.my_menu a {
	display: block;
	padding: 20px;
	font-family: 'Montserrat', sans-serif;
	font-size: 90%;
	text-align: center;
	margin-top: 45px;
}
.banner {
   margin: auto;
   width: 1200px;
   height: 400px;
   background-image: url("images/mypagebanner.png");
   background-size: 1200px 400px;
   margin-top: 50px;
   margin-bottom: 100px;
}
</style>
</head>
<body>
	<div class="web">
		<div class="body">
			<div class="left_bar">
				<div class="logo">
					<span id="logo_text"><a href="main">2nd shop</a></span>
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
						<%@include file="../include/includeTopMenu.jsp"%>
					</div>
				</div>

			</div>
		</div>

		<div class="leg">
			<div class="navigation">
				<div class="my_menu">
					<a href="memPwCheckPage"> <img src="images/profile.png" width="40"
						height="40">
						<p>회원정보</p>
					</a>
				</div>
				<div class="my_menu">
					<a href="mybuyPage"> <img src="images/shopping-bag.png" width="40"
						height="40">
						<p>구매내역</p>
					</a>
				</div>
				<div class="my_menu">
					<a href="mysellPage"> <img src="images/list.png" width="40" height="40">
						<p>판매내역</p>
					</a>
				</div>
				<div class="my_menu">
					<a href="wishlistPage"> <img src="images/wishlist.png" width="40"
						height="40">
						<p>관심목록</p>
					</a>
				</div>
			</div>
		</div>
		<div class="banner"></div>
		<div class="footer">
			<%@include file="../include/includeFooter.jsp" %>
		</div>
	</div>
</body>
</html>