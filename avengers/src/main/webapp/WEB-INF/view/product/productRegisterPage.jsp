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
	margin: auto;
	width: 1200px;
	height: 400px;
	display: flex;
}

.leg_left {
	width: 400px;
	height: 400px;
	background-image: url("images/noimage02.png");
	background-size: 400px 400px;
	border: solid 1px;
}

img {
	width: 400px;
	height: 400px;
}

.leg_right {
	height: 400px;
	width: 800px;
}

.regist_box {
	height: 450px;
	width: 600px;
	margin: auto;
}

td, th {
	padding-top: 20px;
	padding-bottom: 20px;
	padding-left: 15px;
	padding-right: 15px;
	text-align: center;
}

.input_box {
	display: block;
	position: relative;
	width: 100%;
	height: 51px;
	border: solid 1px #dadada;
	padding: 10px 110px 10px 14px;
	background: #fff;
	box-sizing: border-box;
	vertical-align: top;
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

.text_box {
	margin: 19px 0 8px;
	font-size: 14px;
	font-weight: 700;
}

.foot {
	width: 1200px;
	height: 500px;
	margin: auto;
}

.btn {
	display: block;
	width: 600px;
	margin: auto; padding : 15px 0 15px;
	font-size: 18px;
	font-weight: 700;
	text-align: center;
	cursor: pointer;
	box-sizing: border-box;
	margin-top: 30px;
	background-color: #000;
	color: #fff;
	padding: 15px 0 15px;
}

textarea {
	font-size: 150%;
}
</style>
<script type="text/javascript">
	function setThumbnail(event) {
		var reader = new FileReader();
		reader.onload = function(event) {
			var img = document.createElement("img");
			img.setAttribute("src", event.target.result);
			document.querySelector("div#image_container").appendChild(img);
		};
		reader.readAsDataURL(event.target.files[0]);
	}
</script>
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
									<li><a href="productRegisterPage">SELL ITEMS</a></li>

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
		<form action="productRegister" method="post">
		<div class="leg">
			<div class="leg_left" onclick="onclick=document.all.image.click()">
				<div id="image_container"></div>
			</div>
			<div class="leg_right">
				<div class="regist_box">
					<div class="text_box">상품이름</div>
					<span class="input_box"> <input type="text" name="prodName"
						class="input">
					</span>
					<div class="text_box">희망가격</div>
					<span class="input_box"> <input type="text" name="prodPrice"
						class="input">
					</span>
					<div class="text_box">거래가능지역</div>
					<span class="input_box"> <input type="text" name="prodLocation"
						class="input">
					</span>
					<div class="text_box">보증서</div>
					<span> 유<input type="radio" name="prodTag"> 무<input
						type="radio" name="prodTag">
					</span> <input type="file" id="image" accept="image/*"
						onchange="setThumbnail(event);" style="display: none" name="prodImage"/>
				</div>
			</div>
		</div>
		<div class="foot">
			<div class="text_box">
				<h1>상품상세설명</h1>
			</div>
			<textarea rows="10" cols="118" placeholder="상품에 대한 상세설명을 입력해주세요." name="prodContext"></textarea>
			추가이미지 선택 <input type="file" name="prodImageplus">
			<input type="submit" class="btn" value="상품등록" ></input>
		</div>
		</form>
				<div class="footer">
			<%@include file="../include/includeFooter.jsp"%>
		</div>
		
	</div>
</body>
</html>
