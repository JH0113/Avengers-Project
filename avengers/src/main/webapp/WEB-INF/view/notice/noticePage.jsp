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

.headmenu {
	width: 950px;
	height: 120px;
}

.top_menu {
	display: flex;
	width: 100%;
	margin: auto;
	height: 86px;
}

.nav {
	/*float: right;*/
	width: 950px;
	height: 96px;
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

.leg {
	width: 1200px;
	height: auto;
	margin: auto;
}

.banner {
	width: 100%;
	height: 400px;
	background-image: url("images/noticeBanner.png");
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

.btn {
	display: block;
	width: 400px;
	margin: auto;
	padding: 15px 0 15px;
	font-size: 18px;
	font-family: 'Montserrat', sans-serif;
	text-align: center;
	cursor: pointer;
	box-sizing: border-box;
	margin-top: 30px;
	background-color: #404040;
	color: #ffffff;
	padding: 15px 0 15px;
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
						<div class="top_menu">
							<c:if test="${empty authinfo }">
								<ul class="nav">
									<li><a href="loginPage">LOGIN</a></li>
									<li><a href="memberRegistPage">REGIST</a></li>
									<li><a href="noticePage">NOTICE</a></li>
								</ul>
							</c:if>
							<c:if test="${!empty authinfo }">
								<c:if test="${authinfo.grade == 1 }">
									<ul class="nav">
										<li><a href="myPage">MYPAGE</a></li>
										<li><a href="productRegisterPage">SELL ITEMS</a></li>
										<li><a href="noticePage">NOTICE</a></li>
										<li><a href="login/logout">LOGOUT</a></li>
									</ul>
								</c:if>
								<c:if test="${authinfo.grade != 1 }">
									<ul class="nav">
										<li><a href="#">MEMBER LIST</a></li>
										<li><a href="#">REPORT</a></li>
										<li><a href="noticePage">NOTICE</a></li>
										<li><a href="login/logout">LOGOUT</a></li>
									</ul>
								</c:if>
							</c:if>
						</div>
					</div>
				</div>

			</div>
		</div>
		<div class="leg">
			<div class="banner"></div>
			<div class="noticeContents">
				<table>
					<tr class="border_bottom_th">
						<th width="88px">글번호</th>
						<th width="143px">종류</th>
						<th width="590px">제목</th>
						<th width="88px">조회수</th>
						<th width="88px">글쓴이</th>
						<th width="203px">게시일</th>
					</tr>
					<c:forEach items="${noticePage }" var="dto">
						<tr class="border_bottom">
							<td>${dto.noticeNum }</td>
							<td>${dto.noticeKind }</td>
							<td><a href="noticeDetailPage?noticeNum=${dto.noticeNum }">${dto.noticeSub }</a></td>
							<td>${dto.noticeHits }</td>
							<td>${dto.noticeEmpId }</td>
							<td><fmt:formatDate value="${dto.noticeDate }" type="date"
									pattern="yyyy-MM-dd  HH:mm:ss" /></td>
						</tr>
					</c:forEach>
					<tr>
						<td colspan="7" align="center">
						<%@include file="../include/includePage.jsp"%></td>
					</tr>
				</table>
				<!-- 공지등록은 관리자 로그인 시에만 보이게 하기 -->
				<c:if test="${!empty authinfo }">
					<c:if test="${authinfo.grade != 1 }">
						<input type="button" value="공지등록" onclick="javascript:location.href='noticeRegistPage'" class="btn" />
					</c:if>
				</c:if>
			</div>
		</div>

		<div class="footer">
			<%@include file="../include/includeFooter.jsp"%>
		</div>
	</div>
</body>
</html>