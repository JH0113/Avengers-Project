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
	height: 860px;
	margin: auto;
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
.text_box {
	margin: 19px 0 8px;
	font-size: 16px;
	font-weight: 700;
}
.input {
	display: block;
	position: relative;
	width: 100%;
	height: 29px;
	padding-right: 25px;
	line-height: 29px;
	border: none;
	background: #fff;
	font-size: 15px;
	box-sizing: border-box;
	z-index: 10;
	*position: absolute;
	*top: 0;
	*left: 0;
	apperance: none;
	-webkit-apperance: none;
}
.input_box {
	display: block;
	position: relative;
	width: 50%;
	height: 50px;
	border: solid 1px #dadada;
	padding: 10px 110px 10px 14px;
	background: #fff;
	box-sizing: border-box;
	vertical-align: top;
}
.regist_box {
	height: 450px;
	width: 1000px;
	margin: auto;
}
.foot {
	width: 1000px;
	height: 150px;
	margin: auto;
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
	margin-top: 30px;
	background-color: #404040;
	color: #ffffff;
}
textarea {
	width: 100%;
	height: 500px;
	padding: 10px;
	box-sizing: border-box;
	border: solid 2px #dadada;
	border-radius: 5px;
	font-size: 15px;
	resize: none;
	font-family: 'Montserrat', sans-serif;
}
select {
	width: 200px;
	height: 50px;
	padding: .8em .5em;
	border: solid 1px #dadada;
	font-size: 15px;
	font-family: 'Montserrat', sans-serif;
}
select::-ms-expand {
	display: none;
}
.error_box {
	font-size: 60%;
	margin-bottom: 8px;
	margin-left: 10px;
}
#error_text {
	color: red;
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
		</div>

		<form:form action="noticeModify" name="frm" method="post" modelAttribute="noticeCommand" onsubmit="return confirm('수정ㅇㅋ?')">
			<input type="hidden" name="noticeNum" value="${noticeCommand.noticeNum }">

			<div class="leg">
				<div class="regist_box">
					<div class="text_box">공지종류</div>
						<div class="selectbox">
							<select name="noticeKind">
								<option>일반공지</option>
								<option>정책변경공지</option>
								<option>방침변경공지</option>
							</select>
						</div>
					<div class="text_box">* 제목</div>
					<span class="input_box"> <input type="text" name="noticeSub"
						class="input" value="${noticeCommand.noticeSub }" /></span>

					<div class="error_box">
						<form:errors id="error_text" path="noticeSub" />
					</div>

					<div class="text_box">* 내용</div>
					<textarea rows="20" cols="100" name="noticeContents">${noticeCommand.noticeContents }</textarea>

					<div class="error_box">
						<form:errors id="error_text" path="noticeContents" />
					</div>

					<div class="text_box">글쓴이</div>
					<span class="input_box"> <input type="text"
						name="noticeEmpId" value="${noticeCommand.noticeEmpId }"
						class="input" readonly="readonly" /></span>
				</div>
			</div>

			<div class="foot" align="center">
				<input type="submit" value="수정완료" class="btn" style="display: inline-block" onsubmit="return confirm('수정할래?')"> 
				<input type="button" value="수정취소" class="btn" style="display: inline-block" onclick="javascript:location.href='noticeDetailPage?noticeNum=${noticeCommand.noticeNum }'">
			</div>
		</form:form>

		<div class="footer">
			<%@include file="../include/includeFooter.jsp"%>
		</div>
	</div>

</body>


</html> 