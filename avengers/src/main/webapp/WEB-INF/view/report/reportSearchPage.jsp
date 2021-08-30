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
	height: 840px;
	margin: auto;
}

.contents {
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
	font-size: 14px;
	border-bottom: 1px solid #e6e6e6;
}

tr.border_bottom_th {
	border-bottom: 3px solid #1a1a1a;
	}
h2{
	font-family: 'Montserrat', sans-serif;
	margin: 80px;
	}
#mem:hover{
	font-weight: bolder;
	border-bottom: 1px solid;
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
			<div class="contents">
			
				<c:if test="${!empty list }">		
				<h2 align="center">검색하신 '${keyword}'에 대한 검색 결과입니다.</h2> 
				<table>
					<tr class="border_bottom_th">
						<th width="120px">신고번호</th>
						<th width="130px">신고자ID</th>
						<th width="130px">피신고자ID</th> 
						<th width="130px">신고사유</th> 
						<th width="130px">상품번호</th> 
						<th width="130px">신고일</th> 
						<th width="130px">신고상태</th> 
					</tr>
					<c:forEach items="${list }" var="dto">
						<tr class="border_bottom">
							<td>${dto.reportedNum }</td>
							<td>${dto.reporter }</td>
							<td>${dto.memId }</td>
							<td>${dto.reportedReason }</td>
							<td>${dto.reportedReasonDetail }</td>
							<td>${dto.prodNum }</td>
							<td>${dto.reportDate }</td>
							<td>${dto.reportState }</td>
						</tr>					
					</c:forEach> 					
					<tr><td colspan="7" align="center"><input type="button" class="btn" value="회원 리스트로 돌아가기" onclick="javascript:location.href='memberListPage'"></td></tr>
				</table>
				</c:if>
				<c:if test="${empty list }">				
					<h2 align="center">검색하신 '${keyword}'에 대한 검색 결과가 존재하지 않습니다.</h2> 			
				<table>
					<tr class="border_bottom_th">
						<th width="120px">회원아이디</th>
						<th width="130px">닉네임</th>
						<th width="130px">이름</th>
						<th width="270px">주소</th>
						<th width="170px">상세주소</th>
						<th width="150px">전화번호</th>
						<th width="110px">신고누적</th>
					</tr>
						<tr><td></td>
						</tr>
						<tr><td></td>
						</tr>
						<tr><td></td>
						</tr>
					<tr><td colspan="7" align="center"><input type="button" class="btn" value="신고 리스트로 돌아가기" onclick="javascript:location.href='memberListPage'"></td></tr>
				</table>
				</c:if>
				</div>
			</div>
		</div>

		<div class="footer">
			<%@include file="../include/includeFooter.jsp"%>
		</div>
	
</body>

</html>