<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	width: 1280px;
	height: 1700px;
	margin: auto;
}

.productContents {
	font-family: 'Montserrat', sans-serif;
	width: 100%;
	height: auto;
}

.btn, #findBtn {
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

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	top: 40px;
	left: 23%;
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
	font-size: 100%;
	cursor: pointer;
	display: block;
	width: 250px;
	height: 50px;
	padding-top: 12px;
	padding-left: 32px;
	position: relative;
	text-decoration: underline;
}

#menu_text:hover {
	font-weight: bolder;
}

.dropdown-content a:hover {
	font-weight: bolder;
}

#memdropdown {
	padding: 5px;
	font-family: 'Montserrat', sans-serif;
	font-size: 100%;
}

.map_wrap, .map_wrap * {
	margin: 0;
	padding: 0;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	font-size: 12px;
}

.map_wrap {
	position: relative;
	width: 100%;
	height: 500px;
}
/* 여기부터 사진 css */
.slider {
	width: 500px;
	height: 500px;
	position: relative;
	margin: 0 auto;
	overflow: hidden; /* 현재 슬라이드 오른쪽에 위치한 나머지 슬라이드 들이 보이지 않도록 가림 */
}

.slider input[type=radio] {
	display: none;
}

ul.imgs {
	padding: 0;
	margin: 0;
	list-style: none;
}

ul.imgs li {
	position: absolute;
	left: 640px;
	transition-delay: 1s; /* 새 슬라이드가 이동해 오는 동안 이전 슬라이드 이미지가 배경이 보이도록 지연 */
	padding: 0;
	margin: 0;
}

.bullets {
	position: absolute;
	left: 50%;
	transform: translateX(-50%);
	bottom: 20px;
	z-index: 2;
}

.bullets label {
	display: inline-block;
	border-radius: 50%;
	background-color: rgba(0, 0, 0, 0.55);
	width: 20px;
	height: 20px;
	cursor: pointer;
}
/* 현재 선택된 불릿 배경 흰색으로 구분 표시 */
.slider input[type=radio]:nth-child(1):checked ~.bullets>label:nth-child(1)
	{
	background-color: #fff;
}

.slider input[type=radio]:nth-child(2):checked ~.bullets>label:nth-child(2)
	{
	background-color: #fff;
}

.slider input[type=radio]:nth-child(3):checked ~.bullets>label:nth-child(3)
	{
	background-color: #fff;
}

.slider input[type=radio]:nth-child(1):checked ~ul.imgs>li:nth-child(1)
	{
	left: 0;
	transition: 0.5s;
	z-index: 1;
}

.slider input[type=radio]:nth-child(2):checked ~ul.imgs>li:nth-child(2)
	{
	left: 0;
	transition: 0.5s;
	z-index: 1;
}

.slider input[type=radio]:nth-child(3):checked ~ul.imgs>li:nth-child(3)
	{
	left: 0;
	transition: 0.5s;
	z-index: 1;
}
/* 여기까지 사진 css */
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
				<input type="button" value="게시글 신고" class="btn"
					style="display: inline-block"
					onclick="javascript:location.href='prodReportForm?prodNum=${productdto.prodNum}&memId=${memberdto.memId }'">
				<input type="button" value="채팅" class="btn"
					style="display: inline-block"
					onclick="javascript:window.open('test?prodNum=${productdto.prodNum}&prodName=${productdto.prodName }&memId=${productdto.memId }','name','resizable=no width=500 height=800');">
				<input type="button" value="찜" class="btn"
					style="display: inline-block"
					onclick="javascript:location.href='heart?prodNum=${productdto.prodNum}'">
				<c:if test="${authinfo.userId == memberdto.memId }">
					<input type="button" value="수정" class="btn"
						style="display: inline-block"
						onclick="javascript:location.href='productModify/prodModifyPage?prodNum=${productdto.prodNum}'">
					<input type="button" value="삭제" class="btn"
						style="display: inline-block"
						onclick="javascript:location.href='prodDelete?prodNum=${productdto.prodNum}'">
				</c:if>
				<table>
					<tr>
						<td colspan="4" class="subject">상품 상세 정보 <c:if
								test="${wishCk==1 }">
								<img width="20px" height="20" alt="heart_img"
									src="images/heart1.png">
							</c:if> <c:if test="${wishCk==0 }">
								<img width="20px" height="20" alt="heart_img"
									src="images/heart0.png">
							</c:if>
						</td>
					</tr>

					<%--                <tr class="border_bottom">
                  <th width="150" rowspan=9>상품이미지</th>
                  <td width="500" rowspan=9>
                  <img src="upload/${productdto.prodImage }" width="500" height="500"></td>
                  <td width="500" rowspan=9>
                  <img src="upload/${productdto.prodImage2 }" width="500" height="500"></td>
                  <td width="500" rowspan=9>
                  <img src="upload/${productdto.prodImage3 }" width="500" height="500"></td>
                  
               </tr> --%>
					<tr class="border_bottom">
						<th width="150" rowspan=9>상품이미지</th>
						<td width="500" rowspan=9>
							<div class="slider">
								<input type="radio" name="slide" id="slide1" checked> <input
									type="radio" name="slide" id="slide2"> <input
									type="radio" name="slide" id="slide3">
								<ul id="imgholder" class="imgs">
									<li><img src="upload/${productdto.prodImage }" width="500"
										height="500"></li>
									<li><img src="upload/${productdto.prodImage2 }"
										width="500" height="500"></li>
									<li><img src="upload/${productdto.prodImage3 }"
										width="500" height="500"></li>
								</ul>
								<div class="bullets">
									<c:set var="productdto.prodImage3" />
									<c:choose>
										<c:when test="${!empty productdto.prodImage3}">
											<label for="slide1">&nbsp;</label>
											<label for="slide2">&nbsp;</label>
											<label for="slide3">&nbsp;</label>
										</c:when>
										<c:when test="${!empty productdto.prodImage2}">
											<label for="slide1">&nbsp;</label>
											<label for="slide2">&nbsp;</label>
										</c:when>
										<c:when test="${empty productdto.prodImage2}">
										</c:when>
									</c:choose>
									<%--     <c:set var="productdto.prodImage2"/>
                           <c:choose>
                               <c:when test="${!empty productdto.prodImage2}">
                                   <label for="slide1">&nbsp;</label>
                                   <label for="slide2">&nbsp;</label>
                               </c:when>
                               <c:when test="${empty productdto.prodImage2}">
                               </c:when>
                           </c:choose> --%>
									<!--  <label for="slide1">&nbsp;</label>
                             <label for="slide2">&nbsp;</label>
                             <label for="slide3">&nbsp;</label> -->
								</div>
							</div>
						</td>
					</tr>

					<tr class="border_bottom">
						<th width="150">브랜드</th>
						<td width="300"><c:set var="productdto.prodBrand" value="a" />
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
                                     기타 등등
                         </c:when>
							</c:choose></td>
					</tr>
					<tr class="border_bottom">
						<th>카테고리</th>
						<td width="300"><c:set var="productdto.prodKind" value="10" />
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
								<c:when test="${productdto.prodKind eq '27'}">
                             스니커즈
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
							</c:choose></td>

					</tr>
					<tr class="border_bottom">
						<th>상품 상태</th>
						<td colspan="1"><c:set var="productdto.prodState" value="O" />
							<c:choose>
								<c:when test="${productdto.prodState eq 'O'}">
                                중고상품
                         </c:when>
								<c:when test="${productdto.prodState eq 'N'}">
                                새상품 
                         </c:when>
							</c:choose></td>
					</tr>
					<tr class="border_bottom">
						<th>게시날짜</th>
						<td><fmt:parseDate var="parseRegDate"
								value="${productdto.prodDate }" pattern="yyyy-MM-dd HH:mm" /> <fmt:formatDate
								var="resultRegDt" value="${parseRegDate}"
								pattern="yyyy-MM-dd HH:mm" /> ${resultRegDt}</td>

					</tr>
					<tr class="border_bottom">
						<th>거래 방법</th>
						<td colspan="1"><c:set var="productdto.prodMethod" value="J" />
							<c:choose>
								<c:when test="${productdto.prodMethod eq 'J'}">
                                직거래
                         </c:when>
								<c:when test="${productdto.prodMethod eq 'T'}">
                                택배거래
                         </c:when>
							</c:choose></td>
					</tr>
					<tr class="border_bottom">
						<th>보증서 유무</th>
						<td colspan="1"><c:set var="productdto.prodGuarantee"
								value="Y" /> <c:choose>
								<c:when test="${productdto.prodGuarantee eq 'Y'}">
                                유
                         </c:when>
								<c:when test="${productdto.prodGuarantee eq 'N'}">
                                무
                         </c:when>
							</c:choose></td>
					</tr>
					<tr class="border_bottom">
						<th>상품 갯수</th>
						<td colspan="1">${productdto.prodQuantity }</td>
					</tr>
					<tr class="border_bottom">
						<th rowspan="4">판매자 프로필</th>
						<td colspan="1" rowspan="4"><img
							src="upload/${memberdto.memImage }" width="100"
							style="border-radius: 20px"></td>
					</tr>

					<!-- 여기 부분 지우면 안됨.-->
					<tr class="border_bottom">
					</tr>
					<!-- 여기 부분 지우면 안됨.-->

					<tr class="border_bottom">
						<th>상품명</th>
						<td colspan="1.5"><span id="main_point">${productdto.prodName }</span></td>
					</tr>
					<tr class="border_bottom">
						<th>가격</th>
						<td colspan="1.5"><span id="main_point"> <fmt:formatNumber
									value="${productdto.prodPrice }" type="number" />원
						</span></td>
					</tr>
					<tr class="border_bottom">
						<th>거래 장소</th>
						<td colspan="1.5"><span id="main_point">${productdto.prodLocation }</span></td>
						<th>판매자 닉네임</th>
						<td>
							<div class="dropdown">
								<span id="menu_text">${memberdto.memNick }</span>
								<div class="dropdown-content">
									<ul>
										<li id="memdropdown"><a
											href="memberDetailPage?memId=${memberdto.memId }">회원정보보기</a></li>
										<li id="memdropdown"><a
											href="memberReportPage?memId=${memberdto.memId }">신고하기</a></li>
									</ul>
								</div>
							</div>
						</td>
					</tr>

					<tr class="border_bottom" height=100>
						<th>내용</th>
						<td colspan="3" height="150"><p>${productdto.prodDetail }</p></td>
					</tr>
					<tr class="border_bottom" height=600>
						<th>거래장소</th>
						<td colspan="3">
							<div class="map_wrap">
								<div id="map"
									style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>
								<input type="hidden" id="prodLocation" name="prodLocation"
									value="${productdto.prodLocation }"> <input
									type="hidden" id="locationName" name="locationName"
									value="${productdto.locationName }"> <input
									type="hidden" id="locationLat" name="locationLat"
									value="${productdto.locationLat }"> <input
									type="hidden" id="locationLng" name="locationLng"
									value="${productdto.locationLng }">
							</div> <input type="button" id="findBtn" name="findBtn" value="길찾기"
							onclick="findPlace();">
						</button>
							</div>

						</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="footer">
			<%@include file="../include/includeFooter.jsp"%>
		</div>
	</div>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5921de72df8da90539ae4441abbd63ca&libraries=services"></script>
	<script type="text/javascript">
		var locationName = document.querySelector("#locationName").value;
		var locationLat = document.querySelector("#locationLat").value;
		var locationLng = document.querySelector("#locationLng").value;
		function findPlace() {
			location.href = "https://map.kakao.com/link/to/" + locationName
					+ "," + locationLat + "," + locationLng;
		}
		//데이터 변수선언 
		var prodLocation = document.querySelector("#prodLocation").value;

		//지도생성 
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		//지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption);

		//주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();

		//주소를 불러와서 지도에 표시합니다
		geocoder
				.addressSearch(
						prodLocation,
						function(result, status) {

							// 정상적으로 검색이 완료됐으면 
							if (status === kakao.maps.services.Status.OK) {

								var coords = new kakao.maps.LatLng(result[0].y,
										result[0].x);

								// 결과값으로 받은 위치를 마커로 표시합니다
								var marker = new kakao.maps.Marker({
									map : map,
									position : coords
								});

								// 인포윈도우로 장소에 대한 설명을 표시합니다
								var infowindow = new kakao.maps.InfoWindow(
										{
											content : '<div style="width:150px;text-align:center;padding:6px 0;">'
													+ prodLocation + "</div>"
										});
								infowindow.open(map, marker);

								// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
								map.setCenter(coords);
							}
						});
	</script>
</body>
</html>