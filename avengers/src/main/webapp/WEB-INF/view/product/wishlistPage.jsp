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
	max-height: 600px;
	padding: 20px 20px 0px 20px;
	overflow: auto;
}

.wish_table {
	border-bottom: solid 1px;
	width: 950px;
	height: 200px;
}

#td_image {
	width: 215px;
	padding: 10px;
}

#td_text {
	width: 735px;
}

.ellipsis_multi {
	font-family: 'Montserrat', sans-serif;
	font-size: 15px;
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 1; /* 라인수 */
	-webkit-box-orient: vertical;
	word-wrap: break-word;
	line-height: 18px;
	height: 18px; /* height = line-height * 줄수 : 비wekkit 계열 */
}

#delete_text {
	text-decoration: underline;
	color: red;
}

#prodName_text {
	text-decoration: underline;
	font-weight: bolder;
}

.btn {
	display: block;
	width: 500px;
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
				<div class="kategorie_top">찜한 상품</div>
				<div class="products">
					<table class="wish_table">
						<c:if test="${empty list }">
							<tr>
								<td colspan="2">"위시리스트가 비어있습니다."</td>
							</tr>
						</c:if>
						<c:if test="${!empty list }">
							<c:forEach items="${list }" var="dto">
								<tr>
									<td rowspan="4" id="td_image"><c:if
											test="${dto.prodImage != null }">
											<img width="200" height="200" src="upload/${dto.prodImage }" />
										</c:if> <c:if test="${dto.prodImage == null }">
											<img width="200" height="200" src="images/noimage.png" />
										</c:if></td>
									<td id="td_text"><p class="ellipsis_multi">
											<a id="prodName_text"
												href="prodDetailPage?prodNum=${dto.prodNum }">제목 :
												${dto.prodName }</a> <a id="delete_text"
												href="wishDelete?prodNum=${dto.prodNum }">삭제</a>
										</p></td>
								</tr>
								<tr>
									<td>가격 : ${dto.prodPrice }원</td>
								</tr>
								<tr>
									<td>판매자 : ${dto.memId }</td>
								</tr>
								<tr>
									<td>등록일 : ${dto.heartDate }</td>
								</tr>
							</c:forEach>
						</c:if>
					</table>
				</div>
				<button class="btn" onclick="script:location.href='main'">쇼핑
					계속하기</button>
			</div>
		</div>
		<div class="footer">
			<%@include file="../include/includeFooter.jsp"%>
		</div>
	</div>
	<%@include file="../include/includePopup.jsp"%>
</body>
</html>