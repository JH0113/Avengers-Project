<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/includeTags.jsp"%>
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

.profile_box {
	width: 250px;
	height: 300px;
	border-radius: 10%;
	padding-top: 30px;
	background-color: #bbbfc3;
	border-radius: 10%;
}

.profile {
	width: 150px;
	height: 150px;
	margin: auto;
	border-radius: 70%;
	background-color: #fff;
	background-image: url("images/profile01.png");
	background-size: 150px 150px;
}

.profile_btn {
	text-align: center;
}

.nick_box {
	width: 250px;
	height: 100px;
	color: #fff;
	text-align: center;
	font-size: 130%;
	font-weight: bolder;
	padding-top: 30px;
}

.category {
	width: 100%;
	height: 500px;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: relative;
	background-color: #F9F9F9;
	min-width: 160px;
	padding: 8px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
}

.dropdown:hover .dropdown-content {
	display: block;
}

#menu_text {
	font-family: 'Montserrat', sans-serif;
	font-size: 150%;
	cursor: pointer;
	display: block;
	width: 250px;
	height: 50px;
	padding-top: 12px;
	padding-left: 32px;
}

li {
	padding: 5px;
	font-family: 'Montserrat', sans-serif;
	font-size: 130%;
}

li a {
	display: block;
}

.dropdown-content a:hover {
	font-weight: bolder;
}

.right_bar {
	width: 950px;
	height: 1200px;
}

.header {
	height: 240px;
	width: 100%;
}

.headmenu {
	width: 950px;
	height: 120px;
}

.top_menu {
	display: flex;
	width: 100%;
	margin: auto;
	height: 86px;
	padding-top: 10px;
}

.nav {
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

.kategorie_top {
	width: 100%;
	height: 100px;
	border-bottom: solid 1px;
	border-top: solid 1px;
	text-align: center;
	line-height: 100px;
	font-weight: bolder;
	font-size: 180%;
}

.products {
	width: 100%;
	height: 600px;
	padding: 20px 20px 0px 20px;
}

.buy_table {
	border-bottom: solid 1px;
	width: 950px;
	max-height: 900px;
	display: inline-block;
	overflow: auto;
}

#td_image {
	width: 215px;
	padding: 10px;
}

#td_text {
	width: 735px;
}
</style>
</head>
<body>
	<div class="">
		<div class="body">
			<div class="left_bar">
				<div class="logo">
					<span id="logo_text"><a href="main">2nd shop</a></span>
				</div>
				<div class="profile_box">
					<div class="profile"></div>
					<div class="profile_btn">
						<a id="intro" onclick="intro()" href="#">사진등록</a>
					</div>
					<div class="nick_box">닉네임 : ${authinfo.userNick }</div>
				</div>
				
				<div class="category">
					<div class="dropdown">
						<span id="menu_text">관심상품</span>
						<div class="dropdown-content">
							<ul>
								<li><a href="#">찜한 상품</a></li>
								<li><a href="#">최근 본 상품</a></li>
							</ul>
						</div>
					</div>
					<div class="dropdown">
						<span id="menu_text">스토어</span>
						<div class="dropdown-content">
							<ul>
								<li><a href="#">찜한 스토어</a></li>
								<li><a href="#">최근 본 스토어</a></li>
							</ul>
						</div>
					</div>
					<div class="dropdown">
						<span id="menu_text">상품 리뷰</span>
						<div class="dropdown-content">
							<ul>
								<li><a href="#">작성 가능한 리뷰</a></li>
								<li><a href="#">내가 작성한 리뷰</a></li>
							</ul>
						</div>
					</div>
					<div class="dropdown">
						<span id="menu_text"><a href="#">상품 Q&A</a></span>
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
					
                 		<%@include file="../include/includeTopMenu.jsp"%>
					</div>
				</div>
				<div class="kategorie_top">판매 상품</div>
				<div class="buys">
					<table class="buy_table">
						<%--                <c:forEach> --%>
						<c:forEach items="${mySell }" var="dto">
							<tr>

								<td rowspan="4" id="td_image"><c:if
										test="${dto.prodImage != null }">
										<a href="prodDetailPage?prodNum=${dto.prodNum }"> <img
											width="200" height="200" src="upload/${dto.prodImage }" />
										</a>
									</c:if> <c:if test="${dto.prodImage == null }">

										<img width="200" height="200" src="images/noimage.png" />

									</c:if></td>
								<td id="td_text">작성 날짜:${dto.prodDate}</td>
							</tr>
							<tr>
								<td>제 목:${dto.prodName}</td>
							</tr>
							<tr>
								<td>가 격:${dto.prodPrice}</td>
							</tr>
							<tr>
								<td>현 황:${dto.prodState }</td>
							</tr>

						</c:forEach>
					</table>
				</div>
			</div>
		</div>
		<div class="footer">
			<%@include file="../include/includeFooter.jsp"%>
		</div>
	</div>
	<%@include file="../include/includePopup.jsp"%>
</body>
</html>