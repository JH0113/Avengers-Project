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
	height: 1500px;
	margin: auto;
}

.left_bar {
	height: 1500px;
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
	height: 1500px;
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
	width: 950px;
	height: 600px;
}

td {
	padding: 10px;
	text-align: center;
}

.ellipsis_multi {
	font-family: 'Montserrat', sans-serif;
	font-size: 15px;
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 2; /* 라인수 */
	-webkit-box-orient: vertical;
	word-wrap: break-word;
	line-height: 18px;
	height: 36px; /* height = line-height * 줄수 : 비wekkit 계열 */
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
				<div class="category">
					<div class="dropdown">
						<span id="menu_text">Bags</span>
						<div class="dropdown-content">
							<ul>
								<li><a href="productListPage?prodKind=10">all</a></li>
								<li><a href="productListPage?prodKind=11">cross/shoulder
										bag</a></li>
								<li><a href="productListPage2">clutch/pouch bag</a></li>
								<li><a href="productListPage?prodKind=13">tote bag</a></li>
								<li><a href="productListPage?prodKind=14">belt bag</a></li>
								<li><a href="productListPage?prodKind=15">bucket bag</a></li>
								<li><a href="productListPage?prodKind=16">backpack</a></li>
								<li><a href="productListPage?prodKind=17">suitcase</a></li>
								<li><a href="productListPage?prodKind=18">etc</a></li>
							</ul>
						</div>
					</div>
					<div class="dropdown">
						<span id="menu_text">Shoes</span>
						<div class="dropdown-content">
							<ul>
								<li><a href="productListPage?prodKind=20">all</a></li>
								<li><a href="productListPage?prodKind=21">heels</a></li>
								<li><a href="productListPage?prodKind=22">flat</a></li>
								<li><a href="productListPage?prodKind=23">sandal/slippers</a></li>
								<li><a href="productListPage?prodKind=24">boots</a></li>
								<li><a href="productListPage?prodKind=25">loafer</a></li>
								<li><a href="productListPage?prodKind=26">dress shoes</a></li>
							</ul>
						</div>
					</div>
					<div class="dropdown">
						<span id="menu_text">Jewelry</span>
						<div class="dropdown-content">
							<ul>
								<li><a href="productListPage?prodKind=30">all</a></li>
								<li><a href="productListPage?prodKind=31">bracelet</a></li>
								<li><a href="productListPage?prodKind=32">brooch/pin</a></li>
								<li><a href="productListPage?prodKind=33">earring</a></li>
								<li><a href="productListPage?prodKind=34">necklace</a></li>
								<li><a href="productListPage?prodKind=35">ring</a></li>
							</ul>
						</div>
					</div>
					<div class="dropdown">
						<span id="menu_text">BRAND</span>
						<div class="dropdown-content">
							<ul>
								<li><a href="productListPage?prodKind=a">SAINT LAURENT</a></li>
								<li><a href="productListPage?prodKind=b">PRADA</a></li>
								<li><a href="productListPage?prodKind=c">BURBERRY</a></li>
								<li><a href="productListPage?prodKind=d">GUCCI</a></li>
								<li><a href="productListPage?prodKind=e">MAISON
										MARGIELA</a></li>
								<li><a href="productListPage?prodKind=f">BOTTEGA VENETA</a></li>
								<li><a href="productListPage?prodKind=g">VALENTINO</a></li>
								<li><a href="productListPage?prodKind=h">BALENCIAGA</a></li>
								<li><a href="productListPage?prodKind=i">LOUIS VUITTON</a></li>
								<li><a href="productListPage?prodKind=j">athers..</a></li>
							</ul>
						</div>
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
						<c:if test="${empty authinfo }">
							<ul class="nav">
								<li><a href="loginPage">LOGIN</a></li>
								<li><a href="registPage">REGIST</a></li>
								<li><a href="noticePage">NOTICE</a></li>
							</ul>
						</c:if>
						<c:if test="${!empty authinfo }">
							<ul class="nav">
								<li><a href="registPage">MYPAGE</a></li>
								<li><a href="productRegisterPage">SELL ITEMS</a></li>
								<li><a href="noticePage">NOTICE</a></li>
								<li><a href="login/logout">LOGOUT</a></li>
							</ul>
						</c:if>
					</div>
				</div>
				<div class="kategorie_top">
					<c:choose>
						<c:when test="${ctgr eq '11' }">cross/shoulder bag</c:when>
						<c:when test="${ctgr eq '12' }">clutch/pouch bag</c:when>
						<c:when test="${ctgr eq '13' }">tote bag</c:when>
						<c:when test="${ctgr eq '14' }">belt bag</c:when>
						<c:when test="${ctgr eq '15' }">bucket bag</c:when>
						<c:when test="${ctgr eq '16' }">backpack</c:when>
						<c:when test="${ctgr eq '17' }">suitcase</c:when>
						<c:when test="${ctgr eq '18' }">etc</c:when>
						<c:when test="${ctgr eq '21' }">heels</c:when>
						<c:when test="${ctgr eq '22' }">flat</c:when>
						<c:when test="${ctgr eq '23' }">sandal/slippers</c:when>
						<c:when test="${ctgr eq '24' }">boots</c:when>
						<c:when test="${ctgr eq '25' }">loafer</c:when>
						<c:when test="${ctgr eq '26' }">dress shoes</c:when>
						<c:when test="${ctgr eq '31' }">bracelet</c:when>
						<c:when test="${ctgr eq '32' }">brooch/pin</c:when>
						<c:when test="${ctgr eq '33' }">earring</c:when>
						<c:when test="${ctgr eq '34' }">necklace</c:when>
						<c:when test="${ctgr eq '35' }">ring</c:when>
						<c:when test="${ctgr eq 'a' }">SAINT LAURENT</c:when>
						<c:when test="${ctgr eq 'b' }">PRADA</c:when>
						<c:when test="${ctgr eq 'c' }">BURBERRY</c:when>
						<c:when test="${ctgr eq 'd' }">GUCCI</c:when>
						<c:when test="${ctgr eq 'e' }">MAISON MARGIELA</c:when>
						<c:when test="${ctgr eq 'f' }">BOTTEGA VENETA</c:when>
						<c:when test="${ctgr eq 'g' }">VALENTINO</c:when>
						<c:when test="${ctgr eq 'h' }">BALENCIAGA</c:when>
						<c:when test="${ctgr eq 'i' }">LOUIS VUITTON</c:when>
						<c:when test="${ctgr eq 'j' }">athers..</c:when>
					</c:choose>
					<c:forEach items="${list }" var="dto">
					</c:forEach>
				</div>
				<div class="products">
					<table width="950">
						<tr>
							<c:forEach items="${list }" var="dto" varStatus="cnt">

								<td width="200px"><a
									href="prodDetailPage?prodNum=${dto.prodNum }"> <c:if
											test="${dto.prodImage == null }">
											<img width="200" height="200" alt="product image"
												src="images/noimage.png">
										</c:if> <c:if test="${dto.prodImage != null }">
											<img width="200" height="200" alt="product image"
												src="upload/${dto.prodImage }">
										</c:if>

										<p class="ellipsis_multi">${dto.prodName }</p> <br />
										<p class="ellipsis_multi">${dto.prodPrice }원</p></a></td>
								<c:if test="${cnt.count % 4 == 0 }">
						</tr>
						<tr>
							</c:if>
							</c:forEach>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<div class="footer">
			<%@include file="../include/includeFooter.jsp"%>
		</div>
	</div>
</body>
</html>