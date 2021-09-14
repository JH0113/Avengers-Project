x<%@ page language="java" contentType="text/html; charset=UTF-8"
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
	height: 2500px;
}

header {
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	height: 75px;
	padding: 1rem;
	color: white;
	background: #f5f6f7;
	font-weight: bold;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

#logo {
	font-family: 'Montserrat', sans-serif;
	font-size: 300%;
	font-weight: 400;
}

nav span {
	font-weight: lighter;
	font-size: 150%;
	padding-left: 35px;
}

nav span a:hover {
	font-weight: bolder;
}

.body {
	width: 1280px;
	height: 2500px;
	/* 	background-color: skyblue; */
	margin: auto;
	padding-top: 150px;
	height: 2300px;
}

.prod_regist_box {
	width: 1000px;
	margin: auto;
}

.subject {
	text-align: center;
	border-bottom: solid 2px;
	padding: 20px;
	font-size: 200%;
	font-weight: 400;
}

.td_left {
	text-align: center;
	width: 300px;
	padding: 20px;
	font-size: 130%;
	border-bottom: solid 1px threedface;
	font-family: 'Montserrat', sans-serif;
}

.td_right {
	width: 700px;
	padding: 30px;
	border-bottom: solid 1px threedface;
}

#image_container {
	width: 200px;
	height: 200px;
	background-image: url("images/noimage.png");
	background-size: 200px 200px;
	display: flex;
	margin-bottom: 10px;
}

#image {
	margin-bottom: 8px;
}

h5 {
	color: #4B89DC;
}

img {
	width: 200px;
	height: 200px;
	margin-right: 10px;
}

.input_box {
	width: 571px;
	height: 29px;
	margin-bottom: 8px;
	padding: 7px 20px 10px 11px;
	border: solid 1px #dadada;
	background: #fff;
	margin-bottom: 8px;
	height: 29px;
	display: flex;
	line-height: 32px;
}

.input_box a {
	text-decoration: underline;
	font-size: 80%;
	color: threedface;
}

.input_box a:hover {
	color: #000;
}

.input {
	font-size: 14px;
	line-height: 16px;
	width: 80%;
	height: 16px;
	padding: 8px 0 6px;
	color: #000;
	border: none;
	background: #fff;
}

select {
	font-size: 110%;
	font-family: 'Montserrat', sans-serif;
}

#select_text {
	margin-left: 30px;
	font-weight: 500;
}

#location_text {
	color: #4B89DC;
	font-size: 70%;
}

.localbtn {
	display: inline-block;
	float: right;
	border-radius: 3px;
	width: 60px;
	background-color: #404040;
	border: none;
	color: #fff;
	text-align: center;
	text-decoration: none;
	font-size: 12px;
	padding: 2px;
	margin: 4px;
	cursor: pointer;
}

.radio {
	margin-left: 30px;
}

#radio_text {
	font-weight: 500;
	display: inline-block;
	width: 100px;
	text-align: center;
}

.input_price_box {
	width: 260px;
	height: 29px;
	margin-bottom: 8px;
	padding: 7px 20px 10px 11px;
	border: solid 1px #dadada;
	background: #fff;
	margin-bottom: 8px;
	height: 29px;
	display: flex;
	line-height: 32px;
}

textarea {
	resize: none;
	font-size: 125%;
	padding: 15px;
	border: solid 2px #dadada;
	border-radius: 10px;
	box-sizing: border-box;
	width: 700px;
	height: 200px;
}

.btn {
	display: block;
	width: 600px;
	margin: auto;
	padding: 15px 0 15px;
	font-size: 18px;
	font-weight: 700;
	text-align: center;
	cursor: pointer;
	box-sizing: border-box;
	margin-top: 30px;
	background-color: #404040;
	color: #fff;
	padding: 15px 0 15px;
}

.btn:hover {
	background-color: #000;
}

.map_wrap, .map_wrap * {
	margin: 0;
	padding: 0;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	font-size: 12px;
}

.map_wrap a, .map_wrap a:hover, .map_wrap a:active {
	color: #000;
	text-decoration: none;
}

.map_wrap {
	position: relative;
	width: 100%;
	height: 500px;
}

#menu_wrap {
	position: absolute;
	top: 0;
	left: 0;
	bottom: 0;
	width: 250px;
	margin: 10px 0 30px 10px;
	padding: 5px;
	overflow-y: auto;
	background: rgba(255, 255, 255, 0.7);
	z-index: 1;
	font-size: 12px;
	border-radius: 10px;
}

.bg_white {
	background: #fff;
}

#menu_wrap hr {
	display: block;
	height: 1px;
	border: 0;
	border-top: 2px solid #5F5F5F;
	margin: 3px 0;
}

#menu_wrap .option {
	text-align: center;
}

#menu_wrap .option p {
	margin: 10px 0;
}

#menu_wrap .option button {
	margin-left: 5px;
}

#placesList li {
	list-style: none;
}

#placesList .item {
	position: relative;
	border-bottom: 1px solid #888;
	overflow: hidden;
	cursor: pointer;
	min-height: 65px;
}

#placesList .item span {
	display: block;
	margin-top: 4px;
}

#placesList .item h5, #placesList .item .info, #result {
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

#placesList .item .info {
	padding: 10px 0 10px 55px;
}

#placesList .info .gray {
	color: #8a8a8a;
}

#placesList .info .jibun {
	padding-left: 26px;
	background:
		url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png)
		no-repeat;
}

#placesList .info .tel {
	color: #009900;
}

#placesList .item .markerbg {
	float: left;
	position: absolute;
	width: 36px;
	height: 37px;
	margin: 10px 0 0 10px;
	background:
		url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png)
		no-repeat;
}

#placesList .item .marker_1 {
	background-position: 0 -10px;
}

#placesList .item .marker_2 {
	background-position: 0 -56px;
}

#placesList .item .marker_3 {
	background-position: 0 -102px
}

#placesList .item .marker_4 {
	background-position: 0 -148px;
}

#placesList .item .marker_5 {
	background-position: 0 -194px;
}

#placesList .item .marker_6 {
	background-position: 0 -240px;
}

#placesList .item .marker_7 {
	background-position: 0 -286px;
}

#placesList .item .marker_8 {
	background-position: 0 -332px;
}

#placesList .item .marker_9 {
	background-position: 0 -378px;
}

#placesList .item .marker_10 {
	background-position: 0 -423px;
}

#placesList .item .marker_11 {
	background-position: 0 -470px;
}

#placesList .item .marker_12 {
	background-position: 0 -516px;
}

#placesList .item .marker_13 {
	background-position: 0 -562px;
}

#placesList .item .marker_14 {
	background-position: 0 -608px;
}

#placesList .item .marker_15 {
	background-position: 0 -654px;
}

#pagination {
	margin: 10px auto;
	text-align: center;
}

#pagination a {
	display: inline-block;
	margin-right: 10px;
}

#pagination .on {
	font-weight: bold;
	cursor: default;
	color: #777;
}

#result, #locationName {
	font-weight: bold;
	font-size: 14px;
	color: #4B89DC;
	display: inline-block;
	width: 100%;
	text-align: left;
}

#explain {
	padding: 5px;
	font-weight: bold;
	font-size: 14px;
	display: inline-block;
	width: 100%;
	text-align: left;
}

.error_box {
	font-size: 60%;
	margin-bottom: 8px;
	margin-left: 5px;
	margin-top: 20px;
}

#error_text {
	color: red;
}
</style>

</head>
<body>
	<div class="web">
		<header>
			<h1 id="logo">
				<a href="main">2nd Shop</a>
			</h1>
			<nav>
				<span><a href="#">Menu1</a></span> <span><a href="#">My
						Shop</a></span><span><a href="#">2nd Talk</a></span>
			</nav>
		</header>
		<div class="body">
			<form name="frm" action="productRegist" method="post"
				enctype="multipart/form-data">
				<table class="prod_regist_box">
					<tr>
						<td colspan="2" class="subject">상품판매</td>
					</tr>
					<tr class="contents">
						<td class="td_left">상품이미지</td>
						<td class="td_right">
							<div id="image_container"></div> 이미지 1 : <input type="file"
							id="image" accept="image/*" onchange="setThumbnail(event);"
							name="prodImage" multiple="multiple" /><br /> 이미지 2 : <input
							type="file" id="image" accept="image/*"
							onchange="setThumbnail(event);" name="prodImage2"
							multiple="multiple" /><br /> 이미지 3 : <input type="file"
							id="image" accept="image/*" onchange="setThumbnail(event);"
							name="prodImage3" multiple="multiple" />
							<div class="error_box">
								<form:errors id="error_text" path="prodImage" />
							</div> <br /> <br /> <br />
							<h5>
								* 상품 이미지는 최대 3장까지 등록가능합니다.<br /> - 이미지는 상품등록 시 정사각형으로 짤려서
								등록됩니다.<br /> - 상품 이미지는 640x640에 최적화 되어 있습니다. <br /> - 큰 이미지일경우
								이미지가 깨지는 경우가 발생할 수있습니다. <br />- 최대 지원 사이즈인 640 X 640 으로 리사이즈 해서
								올려주세요.(개당 이미지 최대 10M)
							</h5>
						</td>
					</tr>
					<tr class="contents">
						<td class="td_left">제목</td>
						<td class="td_right">
							<div class="input_box">
								<input class="input" type="text" name="prodName"
									placeholder="상품 제목을 입력해주세요."><a href="#">거래금지품목</a>
							</div>
							<div class="error_box">
								<form:errors id="error_text" path="prodName" />
							</div>
						</td>
					</tr>
					<tr class="contents">
						<td class="td_left">카테고리</td>
						<td class="td_right"><span id="select_text">BRAND :</span> <select
							name="prodBrand">
								<option value="a">SAINT LAURENT</option>
								<option value="b">PRADA</option>
								<option value="c">BURBERRY</option>
								<option value="d">GUCCI</option>
								<option value="e">MAISON MARGIELA</option>
								<option value="f">BOTTEGA VENETA</option>
								<option value="g">VALENTINO</option>
								<option value="h">BALENCIAGA</option>
								<option value="i">LOUIS VUITTON</option>
								<option value="j">others</option>
						</select> <span id="select_text">KINDS :</span> <select name="prodKind">
								<optgroup label="Bags">
									<option value="11">cross/shoulder bag</option>
									<option value="12">clutch/pouch bag</option>
									<option value="13">tote bag</option>
									<option value="14">belt bag</option>
									<option value="15">bucket bag</option>
									<option value="16">backpack</option>
									<option value="17">suitcase</option>
									<option value="18">etc</option>
									<option value="10">others</option>
								</optgroup>
								<optgroup label="Shoes">
									<option value="21">heels</option>
									<option value="22">flat</option>
									<option value="23">sandal/slippers</option>
									<option value="24">boots</option>
									<option value="25">loafer</option>
									<option value="26">dress shoes</option>
									<option value="27">sneaker</option>
									<option value="20">others</option>
								</optgroup>
								<optgroup label="Jewelry">
									<option value="31">bracelet</option>
									<option value="32">brooch/pin</option>
									<option value="33">earring</option>
									<option value="34">necklace</option>
									<option value="35">ring</option>
									<option value="30">others</option>
								</optgroup>
						</select></td>
					</tr>
					<tr class="contents">
						<td class="td_left">거래방법</td>
						<td class="td_right"><input class="radio" type="radio"
							name="prodMethod" value="J" checked="checked"><span
							id="radio_text">직거래 희망</span> <input class="radio" type="radio"
							name="prodMethod" value="T"><span id="radio_text">택배
								희망</span></td>
					</tr>

					<tr class="contents">
						<td class="td_left">상태</td>
						<td class="td_right"><input class="radio" type="radio"
							name="prodState" value="O" checked="checked"><span
							id="radio_text">중고상품</span> <input class="radio" type="radio"
							name="prodState" value="N"><span id="radio_text">새상품</span>
						</td>
					</tr>
					<tr class="contents">
						<td class="td_left">보증서</td>
						<td class="td_right"><input class="radio" type="radio"
							name="prodGuarantee" value="Y" checked="checked"><span
							id="radio_text">유</span> <input class="radio" type="radio"
							name="prodGuarantee" value="N"><span id="radio_text">무</span>
						</td>
					</tr>
					<tr class="contents">
						<td class="td_left">가격</td>
						<td class="td_right">
							<div class="input_price_box">
								<input class="input" type="number" name="prodPrice"
									placeholder="숫자만 입력해주세요."><span>원</span>
							</div>
							<div class="error_box">
								<form:errors id="error_text" path="prodPrice" />
							</div>
						</td>
					</tr>
					<tr class="contents">
						<td class="td_left">설명</td>
						<td class="td_right"><textarea rows="8" cols="65"
								name="prodDetail" placeholder="상품 설명을 입력해주세요."></textarea></td>
						<div class="error_box">
							<form:errors id="error_text" path="prodDetail" />
						</div>
					</tr>
					<tr class="contents">
						<td class="td_left">수량</td>
						<td class="td_right">
							<div class="input_price_box">
								<input class="input" type="number" name="prodQuantity" value="1"><span>개</span>
							</div>
						</td>
					</tr>
					<tr class="contents">
						<td class="td_left">거래지역</td>
						<td class="td_right">
							<form onsubmit="searchPlaces(); return false;">
								<div class="map_wrap">
									<div id="map"
										style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>

									<div id="menu_wrap" class="bg_white">
										<div class="option">
											<div>
												키워드 : 
												<input type="text" value="이젠아이티" id="keyword" size="15"> 
												<input type="hidden" id="prodLocation"name="prodLocation" value=""> 
												<input type="hidden" id="locationName" name="locationName" value=""> 
												<input type="hidden" id="LocationLat"name="LocationLat" value=""> 
												<input type="hidden" id="LocationLng"name="LocationLng" value=""> 
												<input type="button" id="searchBtn" onclick="searchPlaces()" value="검색">
											</div>
										</div>
										<hr>
										<ul id="placesList"></ul>
										<div id="pagination"></div>
									</div>
								</div>
								<div id="explain">*거래 장소 선택은 마커를 클릭해주세요.</div>
								<div id="result"></div>
								<div id="latlng"></div>
							</form>
						</td>
					</tr>
					<tr>
						<td colspan="2" class="subject"><input type="submit"
							class="btn" value="상품등록"></td>
					</tr>
				</table>
			</form>
		</div>
		<div class="footer">
			<%@include file="../include/includeFooter.jsp"%>
		</div>
	</div>
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5921de72df8da90539ae4441abbd63ca&libraries=services"></script>
	<script>
		function setThumbnail(event) {
			var reader = new FileReader();
			reader.onload = function(event) {
				var img = document.createElement("img");
				img.setAttribute("src", event.target.result);
				document.querySelector("div#image_container").appendChild(img);
			};
			reader.readAsDataURL(event.target.files[0]);
		}
		// 마커를 담을 배열입니다
		var markers = [];

		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(37.502319, 127.024290), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption);

		// 장소 검색 객체를 생성합니다
		var ps = new kakao.maps.services.Places();

		// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({
			zIndex : 1
		});

		// 키워드로 장소를 검색합니다
		searchPlaces();

		// 키워드 검색을 요청하는 함수입니다
		function searchPlaces() {

			var keyword = document.getElementById('keyword').value;

			if (!keyword.replace(/^\s+|\s+$/g, '')) {
				alert('키워드를 입력해주세요!');
				return false;
			}

			// 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
			ps.keywordSearch(keyword, placesSearchCB);
		}

		// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
		function placesSearchCB(data, status, pagination) {
			if (status === kakao.maps.services.Status.OK) {

				// 정상적으로 검색이 완료됐으면
				// 검색 목록과 마커를 표출합니다
				displayPlaces(data);

				// 페이지 번호를 표출합니다
				displayPagination(pagination);

			} else if (status === kakao.maps.services.Status.ZERO_RESULT) {

				alert('검색 결과가 존재하지 않습니다.');
				return;

			} else if (status === kakao.maps.services.Status.ERROR) {

				alert('검색 결과 중 오류가 발생했습니다.');
				return;

			}
		}

		function displayGeocoder(marker) {
			var geocoder = new kakao.maps.services.Geocoder();
			var callback = function(result, status) {
				if (status === kakao.maps.services.Status.OK) {
					console.log('그런 너를 마주칠까 ' + result[0].address.address_name
							+ '을 못가');
					$("#prodLocation").val(result[0].address.address_name);
					
					var message = '선택하신 거래 장소는 ' + '"'
							+ result[0].address.address_name + '"' + ' 입니다';
					var resultDiv = document.getElementById('result');
					resultDiv.innerHTML = message;
					
					$("#LocationLat").val(marker.getPosition().getLat());
					$("#LocationLng").val(marker.getPosition().getLng());
					
/* 					var message = '경도 : ' + marker.getPosition().getLng() + '위도 : ' + marker.getPosition().getLat();
					var resultD = document.getElementById('latlng');
					resultD.innerHTML = message; */
				}
			};
			geocoder.coord2Address(marker.getPosition().getLng(), marker
					.getPosition().getLat(), callback);
		}

		// 검색 결과 목록과 마커를 표출하는 함수입니다
		function displayPlaces(places) {

			var listEl = document.getElementById('placesList'), menuEl = document
					.getElementById('menu_wrap'), fragment = document
					.createDocumentFragment(), bounds = new kakao.maps.LatLngBounds(), listStr = '';

			// 검색 결과 목록에 추가된 항목들을 제거합니다
			removeAllChildNods(listEl);

			// 지도에 표시되고 있는 마커를 제거합니다
			removeMarker();

			for (var i = 0; i < places.length; i++) {

				// 마커를 생성하고 지도에 표시합니다
				var placePosition = new kakao.maps.LatLng(places[i].y,
						places[i].x), marker = addMarker(placePosition, i), itemEl = getListItem(
						i, places[i]); // 검색 결과 항목 Element를 생성합니다

				// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
				// LatLngBounds 객체에 좌표를 추가합니다
				bounds.extend(placePosition);

				// 마커와 검색결과 항목에 click 했을때
				// 해당 장소에 인포윈도우에 장소명을 표시합니다
				(function(marker, title) {

					// 마커에 클릭이벤트를 등록합니다
					kakao.maps.event.addListener(marker, 'click', function() {
						displayInfowindow(marker, title);
						
						displayGeocoder(marker);
						
						
						/* 			            	var message = '위치는 ' + marker.getPosition() + ' 입니다';
						 var resultDiv = document.getElementById('result'); 
						 resultDiv.innerHTML = message; */

					});

					itemEl.onclick = function() {
						displayInfowindow(marker, title);
					};

				})(marker, places[i].place_name);

				fragment.appendChild(itemEl);
			} // for문 끝

			// 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
			listEl.appendChild(fragment);
			menuEl.scrollTop = 0;

			// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
			map.setBounds(bounds);
		} // 함수 끝

		
		// 검색결과 항목을 Element로 반환하는 함수입니다
		function getListItem(index, places) {

			var el = document.createElement('li'), itemStr = '<span class="markerbg marker_'
					+ (index + 1)
					+ '"></span>'
					+ '<div class="info">'
					+ '   <h5>' + places.place_name + '</h5>';

			if (places.road_address_name) {
				itemStr += '    <span>' + places.road_address_name + '</span>'
						+ '   <span class="jibun gray">' + places.address_name
						+ '</span>';
			} else {
				itemStr += '    <span>' + places.address_name + '</span>';
			}

			itemStr += '  <span class="tel">' + places.phone + '</span>'
					+ '</div>';

			el.innerHTML = itemStr;
			el.className = 'item';

			return el;
		}

		// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
		function addMarker(position, idx, title) {
			var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
			imageSize = new kakao.maps.Size(36, 37), // 마커 이미지의 크기
			imgOptions = {
				spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
				spriteOrigin : new kakao.maps.Point(0, (idx * 46) + 10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
				offset : new kakao.maps.Point(13, 37)
			// 마커 좌표에 일치시킬 이미지 내에서의 좌표
			}, markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize,
					imgOptions), marker = new kakao.maps.Marker({
				position : position, // 마커의 위치
				image : markerImage
			});

			marker.setMap(map); // 지도 위에 마커를 표출합니다
			markers.push(marker); // 배열에 생성된 마커를 추가합니다

			return marker;
		}

		// 지도 위에 표시되고 있는 마커를 모두 제거합니다
		function removeMarker() {
			for (var i = 0; i < markers.length; i++) {
				markers[i].setMap(null);
			}
			markers = [];
		}

		// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
		function displayPagination(pagination) {
			var paginationEl = document.getElementById('pagination'), fragment = document
					.createDocumentFragment(), i;

			// 기존에 추가된 페이지번호를 삭제합니다
			while (paginationEl.hasChildNodes()) {
				paginationEl.removeChild(paginationEl.lastChild);
			}

			for (i = 1; i <= pagination.last; i++) {
				var el = document.createElement('a');
				el.href = "#";
				el.innerHTML = i;

				if (i === pagination.current) {
					el.className = 'on';
				} else {
					el.onclick = (function(i) {
						return function() {
							pagination.gotoPage(i);
						}
					})(i);
				}

				fragment.appendChild(el);
			}
			paginationEl.appendChild(fragment);
		}

		// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
		// 인포윈도우에 장소명을 표시합니다
		function displayInfowindow(marker, title) {
			var content = '<div style="padding:5px;z-index:1;">' + title
					+ '</div>';

			infowindow.setContent(content);
			infowindow.open(map, marker);
			
			$("#locationName").val(title);

		}

		// 검색결과 목록의 자식 Element를 제거하는 함수입니다
		function removeAllChildNods(el) {
			while (el.hasChildNodes()) {
				el.removeChild(el.lastChild);
			}
		}
	</script>
</body>
</html>