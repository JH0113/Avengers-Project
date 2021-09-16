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
	height: 920px;
	margin: auto;
}

.banner {
	width: 100%;
	height: 400px;
	background-image: url("images/oneononeBanner2.jpg");
	background-size: 100% 400px;
}

.bannerText {
	color: white;
	font-family: 'Montserrat', sans-serif;
	font-size: 50px;
	padding: 5px 10px;
	text-align: center;
	position: absolute;
	top: 62%;
	left: 77%;
	transform: translate(-50%, -50%);
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
	font-size: 14px;
}

tr.border_bottom_th {
	border-bottom: 3px solid #1a1a1a;
}

.btn {
	display: block;
	width: 200px;
	margin: auto;
	padding: 5px 0 5px;
	font-size: 14px;
	font-family: 'Montserrat', sans-serif;
	text-align: center;
	cursor: pointer;
	box-sizing: border-box;
	background-color: #404040;
	color: #ffffff;
	margin-top: 20px;
}

#clickText:hover {
	font-weight: bolder;
	border-bottom: 1px solid;
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
			<div class="banner"></div>
			<div class="bannerText">1:1문의</div>
			<div class="noticeContents">
				<table>
					<tr class="border_bottom_th">
						<th width="88px">글번호</th>
						<th width="300px">제목</th>
						<th width="100px">글쓴이</th>
						<th width="80px">아이디</th>
						<th width="200px">게시 시간</th>
					</tr>
					
<%-- 				<!-- 직원 로그인시 모든 게시물 보이게 하기 -->						
				<c:if test="${!empty authinfo }">
					<c:if test="${authinfo.grade != 1 }">
						<c:forEach items="${oneononelist }" var="oneononedto">
							<tr class="border_bottom">
								<td><a id="clickText"
									href="oneononeDetailPage?oneononeNum=${oneononedto.oneononeNum }"><span
										id="detail">${oneononedto.oneononeNum }</span></a></td>
								<td><a id="clickText"
									href="oneononeDetailPage?oneononeNum=${oneononedto.oneononeNum }"><span
										id="detail">${oneononedto.oneononeSub }</span></a></td>
								<td>${oneononedto.memName }</td>
								<td><fmt:formatDate value="${oneononedto.oneononeDate }"
										type="date" pattern="yyyy-MM-dd  HH:mm:ss" /></td>
							</tr>
						</c:forEach>					
					</c:if>
				</c:if>--%>
									
					<c:if test="${authinfo.userId == oneononelist[0].memId }">
						<c:forEach items="${oneononelist }" var="oneononedto">
							<tr class="border_bottom">
								<td><a id="clickText"
									href="oneononeDetailPage?oneononeNum=${oneononedto.oneononeNum }"><span
										id="detail">${oneononedto.oneononeNum }</span></a></td>
								<td><a id="clickText"
									href="oneononeDetailPage?oneononeNum=${oneononedto.oneononeNum }"><span
										id="detail">${oneononedto.oneononeSub }</span></a></td>
								<td>${oneononedto.memName }</td>
								<td>${oneononedto.memId }</td>								
								<td><fmt:formatDate value="${oneononedto.oneononeDate }"
										type="date" pattern="yyyy-MM-dd  HH:mm:ss" /></td>
							</tr>
						</c:forEach>
					</c:if> 
<%-- 					<tr>
						<td colspan="7" align="center">
						<%@include file="../include/includePage.jsp"%></td>
					</tr> --%>					
					<%-- <c:choose> 
						<c:when test="${authinfo.userId == oneononelist[0].memId }">
							<c:forEach items="${oneononelist }" var="oneononedto">
								<tr class="border_bottom">
									<td><a id="clickText"
										href="oneononeDetailPage?oneononeNum=${oneononedto.oneononeNum }"><span
											id="detail">${oneononedto.oneononeNum }</span></a></td>
									<td><a id="clickText"
										href="oneononeDetailPage?oneononeNum=${oneononedto.oneononeNum }"><span
											id="detail">${oneononedto.oneononeSub }</span></a></td>
									<td>${oneononedto.memName }</td>
									<td><fmt:formatDate value="${oneononedto.oneononeDate }"
											type="date" pattern="yyyy-MM-dd  HH:mm:ss" /></td>
								</tr>
							</c:forEach>					
						</c:when>
						
 						<c:when test="${!empty authinfo }">
							<c:when test="${authinfo.grade != 1 }">
								<c:forEach items="${oneononelist }" var="oneononedto">
									<tr class="border_bottom">
										<td><a id="clickText"
											href="oneononeDetailPage?oneononeNum=${oneononedto.oneononeNum }"><span
												id="detail">${oneononedto.oneononeNum }</span></a></td>
										<td><a id="clickText"
											href="oneononeDetailPage?oneononeNum=${oneononedto.oneononeNum }"><span
												id="detail">${oneononedto.oneononeSub }</span></a></td>
										<td>${oneononedto.memName }</td>
										<td><fmt:formatDate value="${oneononedto.oneononeDate }"
												type="date" pattern="yyyy-MM-dd  HH:mm:ss" /></td>
									</tr>
								</c:forEach>						
							</c:when>
 						</c:when>
					</c:choose> --%>
				</table>
				
				<!-- 1:1문의는 회원 로그인 시에만 보이게 하기 -->
				<c:if test="${!empty authinfo }">
					<c:if test="${authinfo.grade == 1 }">
						<input type="button" value="1:1문의하기"
							onclick="javascript:location.href='oneononeRegistPage'"
							class="btn" />
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