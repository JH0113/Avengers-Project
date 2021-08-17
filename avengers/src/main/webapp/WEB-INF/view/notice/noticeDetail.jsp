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
	width: 1200px;
	height: 1000px;
	margin: auto;
}
.noticeContents {
	font-family: 'Montserrat', sans-serif;
	width: 100%;
	height: auto;
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
	clear: both;
	width: 100%;
	height: 150px;
	background-color: #000;
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
								<li><a href="myPage">MYPAGE</a></li>
								<li><a href="productRegisterPage">SELL ITEMS</a></li>
								<li><a href="noticePage">NOTICE</a></li>
								<li><a href="login/logout">LOGOUT</a></li>
								</ul>
							</c:if>
						</div>
					</div>
				</div>

			</div>
		</div>

		<div class="leg">
			<div class="noticeContents">
				<table>
					<tr class="border_bottom">
						<th width="150">공지종류</th>
						<td width="700">정책변경공지</td>
						<th width="150">조회수</th>
						<td width="300">3254</td>
					</tr>
					<tr class="border_bottom">
						<th>날짜</th>
						<td>2021-08-06</td>
						<th>글쓴이</th>
						<td>관리자</td>
					</tr>
					<tr class="border_bottom">
						<th>제목</th>
						<td colspan="4">중고거래 게시판 거래 및 환불 정책이 변경될 예정입니다.</td>
					</tr>

					<tr class="border_bottom" height="600">
						<th>내용</th>
						<td colspan="4"><p>석가탄신일 휴무 안내 5월 19일(수)은 택배사 및 공장, 제휴사가
								모두 휴무하는 공휴일입니다 커먼유니크의 상품 주문 및 입금확인은 정상적으로 처리되나 고객상담, 배송 등의 업무는
								20일(목)부터 재개됩니다 , 즐거운 공휴일 보내시길 바랍니다 :-)</p></td>
					</tr>
				</table>

			</div>
		</div>
		<div class="footer">
			<%@include file="../include/includeFooter.jsp"%>
		</div>
	</div>
		
</body>
</html>