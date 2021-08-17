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
	height: 240px;
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
	line-height: 70px;
}

.nav li {
	margin-left: 30px;
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
	width: 1200px;
	height: auto;
	margin: auto;
}

.banner {
	width: 100%;
	height: 400px;
	background-image: url("images/notice.png");
	background-size: 100% 400px;
}

.noticeContents {
	font-family: 'Montserrat', sans-serif;
	width: 100%;
	height: 600px;
}

td, th {
	padding-top: 20px;
	padding-bottom: 20px;
	padding-left: 15px;
	padding-right: 15px;
	text-align: center;
}

table {
	width: 1200px;
	margin: auto;
	border-top: none;
	border-bottom: none;
	border-left: none;
	border-right: none;
	border-collapse: collapse;
}

tr.border_bottom td {
	border-bottom: 1px solid #e6e6e6;
}

tr.border_bottom_th {
	border-bottom: 3px solid #1a1a1a;
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
					<span id="logo_text"><a href="main">2nd shop</a><span>
				</div>
				<div class="category">
					<div class="dropdown">
						<span id="menu_text"></span>
						<div class="dropdown-content"></div>
					</div>
					<div class="dropdown">
						<span id="menu_text"></span>
						<div class="dropdown-content"></div>
					</div>
					<div class="dropdown">
						<span id="menu_text"></span>
						<div class="dropdown-content"></div>
					</div>
					<div class="dropdown">
						<span id="menu_text"></span>
						<div class="dropdown-content"></div>
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
									<li><a href="productRegisterPage">SELL ITEMS</a></li>

								</ul>
							</c:if>
							<c:if test="${!empty authinfo }">
								<ul class="nav">
									<li><a href="loginPage">LOGOUT</a></li>
									<li><a href="registPage">MYPAGE</a></li>
									<li><a href="noticePage">NOTICE</a></li>
									<li><a href="productRegisterPage">SELL ITEMS</a></li>
								</ul>
							</c:if>
						</div>
					</div>
				</div>

			</div>
		</div>

		<!-- 상품등록 시작 -->
		<div class="product_body">
			<div class="product_ctgr">
				<th>상품 등록</th>
				<br />
				<br /> 카테고리 선택: <select class="ctgr_select">
					<option>가방</option>
					<option>신발</option>
					<option>쥬얼리</option>
				</select><br /> 글 제목:<input type="text" name="product_title"><br />
				판매가:<input type="text" name="product_price"><br />
				<form>
					<div>
						보증서 유무: <input type="radio" id="tag1" name="product_tag" value="유"
							checked> <label for="contactChoice1">유</label> <input
							type="radio" id="tag2" name="product_tag" value="무"> <label
							for="contactChoice2">무</label>
					</div>
				</form>
				거래가능 지역: <input type="text" name="product_location"><br />
				<div class="product_img">
					상품 이미지:<input type="file" name="prod_Image" multiple="multiple"/>
				</div>
			</div>
			<div class="product_footer">
				<div class="product_detail">
					상품정보:
					<textarea rows="20" cols="50"
						placeholder="1.상품명	
														2.구입시기
										 	 			3.구입장소
									 		 			4.구입가격
										 	 			5.부속품
									 		 			6.인증서 여부
									 		 			7.상세설명">
				</textarea>
				</div>
				<input type="submit" value="상품 등록"
					onclick="javascript:location.href='main'" /> <input type="button"
					value="취소" onclick="javascript:location.href='main'" />
			</div>
		</div>
	</div>
	<div class="footer">
		<h2 id="footer_text">푸터입니당.</h2>
	</div>
	</div>
</body>
</html>