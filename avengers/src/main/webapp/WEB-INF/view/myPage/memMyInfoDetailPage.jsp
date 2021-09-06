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

.myDetail-table {
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

.memModify-table {
	border-collapse: collapse;
	border-spacing: 0;
	width: 100%;
	border-top: 2px solid #969696;
	font-family: 돋움, Dotum, sans-serif;
	font-size: 100%;
	display: table;
	box-sizing: border-box;
	text-indent: initial;
	border-color: grey;
}

.memModify-table th {
	display: table-cell;
	vertical-align: inherit;
	font-weight: bold;
	width: 100px;
	background-color: #eef1f8;
	text-align: left;
	white-space: nowrap;
}

.memModify-table th, .memModify-table td {
	padding: 14px 30px;
	text-align: left;
	border-bottom: 1px solid #ddd;
	margin: 0;
}

.memModify-foot {
	margin-top: 30px;
	text-align: center;
	margin: 0;
	padding: 0;
}

.memModify-submit, .memModify-cancel {
	min-width: 40px;
	padding: 7px 17px;
	border-radius: 2px;
	font-size: 14px;
	line-height: 14px;
	display: inline-block;
	box-sizing: border-box;
	border: 1px solid #0085da;
	text-decoration: none;
	vertical-align: middle;
	text-align: center;
	margin: 2px 2px;
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
				<%@include file="../include/includeProfile.jsp"%>
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
				<div class="kategorie_top">내 정보 확인</div>
				<div class="myDetail-table">
					<table class="memModify-table">
						<tbody>
							<tr>
								<th scope="row">아이디</th>
								<td>${memberCommand.memId }</td>
							</tr>
							<tr>
								<th scope="row">이름</th>
								<td>${memberCommand.memName }</td>
							</tr>
							<tr>
								<th scope="row">닉네임</th>
								<td>${memberCommand.memNick }</td>
							</tr>
							<tr>
								<th scope="row">우편번호</th>
								<td>${memberCommand.memPostNumber }</td>
							</tr>
							<tr>
								<th scope="row">주소</th>
								<td>${memberCommand.memAddr }</td>
							</tr>
							<tr>
								<th scope="row">상세주소</th>
								<td>${memberCommand.memDetailAdd }</td>
							</tr>
							<tr>
								<th scope="row">연락처</th>
								<td>${memberCommand.memPhone }</td>
							</tr>
						</tbody>
					</table>
					<div class="memModify-foot">
						<button type="button" class="memModify-submit"
							onclick="location.href='memModifyPage'">수정</button>
					</div>
				</div>
			</div>
		</div>
		<div class="footer">
			<%@include file="../include/includeFooter.jsp"%>
		</div>
		<%@include file="../include/includePopup.jsp"%>
	</div>
</body>
</html>