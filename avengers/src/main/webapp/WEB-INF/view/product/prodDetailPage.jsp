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
	height: 1000px;
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
				//임시버튼태그//
				<input type="button" value="게시글 신고" class="btn" style="display: inline-block" onclick="javascript:location.href='prodReport'">
				<input type="button" value="채팅" class="btn" style="display: inline-block" onclick="javascript:location.href='chat'">
				<input type="button" value="etc" class="btn" style="display: inline-block" onclick="javascript:location.href='etc'">
				
				<table>
					<tr>
						<td colspan="4" class="subject">상품 상세 정보</td>
					</tr>

					<tr class="border_bottom">
						<th width="150" rowspan=7>상품이미지</th>
						<td width="700" rowspan=7>
						<img src="upload/${productdto.prodImage }"></td>
					<th width="150">브랜드</th>
						<td width="300">

						<c:set var="productdto.prodBrand" value="a" />
							<c:choose>
							    <c:when test="${productdto.prodBrand eq 'a'}">
							        SAINT LAURENT
							    </c:when>
							    <c:when test="${productdto.prodBrand eq 'b'}">
							        PRADA
							    </c:when>
							    <c:when test="${productdto.prodBrand eq 'c'}">
							        BURBERRY
							    </c:when>
							    <c:when test="${productdto.prodBrand eq 'd'}">
							        GUCCI
							    </c:when>
							    <c:when test="${productdto.prodBrand eq 'e'}">
							         MAISON MARGIELA
							    </c:when>
							    <c:when test="${productdto.prodBrand eq 'f'}">
							        BOTTEGA VENETA
							    </c:when>
							    <c:when test="${productdto.prodBrand eq 'g'}">
							        VALENTINO
							    </c:when>
							    <c:when test="${productdto.prodBrand eq 'h'}">
							        BALENCIAGA
							    </c:when>
							    <c:when test="${productdto.prodBrand eq 'i'}">
							        LOUIS VUITTON
							    </c:when>
							    <c:when test="${productdto.prodBrand eq 'j'}">
							        others..
							    </c:when>
							</c:choose>						

						</td>
					</tr>
					<tr class="border_bottom">
						<th>카테고리</th>
						<td width="300">
						<c:set var="productdto.prodKind" value="10" />
							<c:choose>
							    <c:when test="${productdto.prodKind eq '10'}">
							        가방
							    </c:when>
							    <c:when test="${productdto.prodKind eq '11'}">
							        크로스/숄더 백
							    </c:when>
							    <c:when test="${productdto.prodKind eq '12'}">
							        클러치/파우치
							    </c:when>
							    <c:when test="${productdto.prodKind eq '13'}">
							        토트백 
							    </c:when>
							    <c:when test="${productdto.prodKind eq '14'}">
							        벨트백
							    </c:when>
							    <c:when test="${productdto.prodKind eq '15'}">
							        버킷백
							    </c:when>
							    <c:when test="${productdto.prodKind eq '16'}">
							        백팩
							    </c:when>
							    <c:when test="${productdto.prodKind eq '17'}">
							        여행 가방
							    </c:when>
							    <c:when test="${productdto.prodKind eq '18'}">
							        카테고리 외 가방
							    </c:when>
							    <c:when test="${productdto.prodKind eq '20'}">
							        카테고리 외 신발
							    </c:when>
							    <c:when test="${productdto.prodKind eq '21'}">
							        구두
							    </c:when>
							    <c:when test="${productdto.prodKind eq '22'}">
							        플랫슈즈
							    </c:when>
							    <c:when test="${productdto.prodKind eq '23'}">
							        샌들/슬리퍼
							    </c:when>
							    <c:when test="${productdto.prodKind eq '24'}">
							        부츠
							    </c:when>
							    <c:when test="${productdto.prodKind eq '25'}">
							        로퍼
							    </c:when>
							    <c:when test="${productdto.prodKind eq '26'}">
							        드레스 구두
							    </c:when>
							    <c:when test="${productdto.prodKind eq '30'}">
							        카테고리 외 쥬얼리
							    </c:when>
							    <c:when test="${productdto.prodKind eq '31'}">
							        팔찌
							    </c:when>
							    <c:when test="${productdto.prodKind eq '32'}">
							        브로치/핀
							    </c:when>
							    <c:when test="${productdto.prodKind eq '33'}">
							        귀걸이
							    </c:when>
							    <c:when test="${productdto.prodKind eq '34'}">
							        목걸이
							    </c:when>
							    <c:when test="${productdto.prodKind eq '35'}">
							        반지
							    </c:when>
							</c:choose>
						</td>					

					</tr>
					<tr class="border_bottom">
						<th>상품 상태</th>
						<td colspan="1">
						<c:set var="productdto.prodState" value="O" />
							<c:choose>
							    <c:when test="${productdto.prodState eq 'O'}">
							        	중고상품
							    </c:when>
							    <c:when test="${productdto.prodState eq 'N'}">
							        	새상품 
							    </c:when>
							</c:choose>
							</td>
					</tr>
					<tr class="border_bottom">
						<th>게시날짜</th>
						<td>
							<fmt:parseDate var="parseRegDate" value="${productdto.prodDate }" pattern="yyyy-MM-dd HH:mm"/>
							<fmt:formatDate var="resultRegDt" value="${parseRegDate}" pattern="yyyy-MM-dd HH:mm"/>
							${resultRegDt}
						</td>						

					</tr>
					<tr class="border_bottom">
						<th>거래 방법</th>
						<td colspan="1">
						<c:set var="productdto.prodMethod" value="J" />
							<c:choose>
							    <c:when test="${productdto.prodMethod eq 'J'}">
							        	직거래
							    </c:when>
							    <c:when test="${productdto.prodMethod eq 'T'}">
							        	택배거래
							    </c:when>
							</c:choose>
						</td>					
					</tr>
					<tr class="border_bottom">
						<th>보증서 유무</th>
						<td colspan="1">
						<c:set var="productdto.prodGuarantee" value="Y" />
							<c:choose>
							    <c:when test="${productdto.prodGuarantee eq 'Y'}">
							        	유
							    </c:when>
							    <c:when test="${productdto.prodGuarantee eq 'N'}">
							        	무
							    </c:when>
							</c:choose>						
						</td>				
					</tr>
					<tr class="border_bottom">
						<th>상품 갯수</th>
						<td colspan="1">${productdto.prodQuantity }</td>
					</tr>
					<tr class="border_bottom">
						<th >상품명</th>
						<td colspan="3">${productdto.prodName }</td>						
					</tr>
					<tr class="border_bottom">
						<th>가격</th>
						<td colspan="3">${productdto.prodPrice }원</td>						
					</tr>
					<tr class="border_bottom">
						<th>판매자 거래 장소</th>
						<td colspan="3">${productdto.prodLocation }</td>					
					

					</tr>

					<tr class="border_bottom" height=200>
						<th>내용</th>
						<td colspan="3"><p>${productdto.prodDetail }</p></td>
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