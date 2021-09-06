<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>

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

.subject {
	text-align: center;
	border-bottom: solid 2px;
	padding: 20px;
	font-size: 200%;
	font-weight: 400;
	
}

.leg {
	width: 1200px;
	height: 1200px;
	margin: auto;
}

.productContents {
	font-family: 'Montserrat', sans-serif;
	width: 100%;
	height: auto;
}
 
.btn {
	display: block;
	width: 100px;
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

#main_point {
	font-weight: bolder;
	
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
			<div class="productContents">					
			<div class="navigation">
				<div class="my_menu">
					<a href="prodList"> 
						판매중인상품리스트보기
					</a>
				</div>
				<div class="my_menu">
			 
				</div>
				
	
				</div>
			</div>
		</div>  
				 
				  

		<div class="footer">
			<%@include file="../include/includeFooter.jsp"%>
		</div>
	 </div>
</body>
</html>