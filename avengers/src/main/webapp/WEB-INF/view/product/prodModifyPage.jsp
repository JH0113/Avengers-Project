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
	height: 2000px;
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
	height: 2300px;
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

#placesList .item h5, #placesList .item .info {
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

#result {
	font-weight: 500;
	display: inline-block;
	width: 100px;
	text-align: center;
}
.hidden{
	display: none;
}
</style>

</head>
<body>
	<div class="web">
		<header>
			<h1 id="logo">
				<a href="../main">2nd Shop</a>
			</h1>
			<nav>
				<span><a href="#">Menu1</a></span> <span><a href="#">My
						Shop</a></span><span><a href="#">2nd Talk</a></span>
			</nav>
		</header>
		<div class="body">
			
			<form:form action="productModify" method="post" name="frm" enctype="multipart/form-data" modelAttribute="productCommand">
				<input type="hidden" name="prodNum" value="${productCommand.prodNum }">
				<table class="prod_regist_box">
					
					<tr>
						<td colspan="2" class="subject">상품판매</td>
						
					</tr>
					<tr class="contents">
						<td class="td_left">상품이미지</td>
						<td class="td_right">
							이미지 1 : <input type="file" id="image" accept="image/*" onchange="setThumbnail(event);"	name="prodImage" multiple="multiple" /><br /> 
							이미지 2 : <input type="file" id="image" accept="image/*" onchange="setThumbnail(event);" name="prodImage2" multiple="multiple" /><br /> 
							이미지 3 : <input type="file" id="image" accept="image/*" onchange="setThumbnail(event);" name="prodImage3" multiple="multiple" /><br /> <br /> <br />
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
								<input class="input" type="text" name="prodName" placeholder="상품 제목을 입력해주세요." value="${productCommand.prodName }"><a href="#">거래금지품목</a>
							</div>
						</td>
					</tr>
					<tr class="contents">
						<td class="td_left">카테고리</td>
						<td class="td_right"><span id="select_text">BRAND :</span> <select
							name="prodBrand">
								<option value="a" <c:if test="${productCommand.prodBrand =='a'}">selected</c:if>> LAURENT</option>
								<option value="b" <c:if test="${productCommand.prodBrand =='b'}">selected</c:if>>PRADA</option>
								<option value="c" <c:if test="${productCommand.prodBrand =='c'}">selected</c:if>>BURBERRY</option>
								<option value="d" <c:if test="${productCommand.prodBrand =='d'}">selected</c:if>>GUCCI</option>
								<option value="e" <c:if test="${productCommand.prodBrand =='e'}">selected</c:if>>MAISON MARGIELA</option>
								<option value="f" <c:if test="${productCommand.prodBrand =='f'}">selected</c:if>>BOTTEGA VENETA</option>
								<option value="g" <c:if test="${productCommand.prodBrand =='g'}">selected</c:if>>VALENTINO</option>
								<option value="h" <c:if test="${productCommand.prodBrand =='h'}">selected</c:if>>BALENCIAGA</option>
								<option value="i" <c:if test="${productCommand.prodBrand =='i'}">selected</c:if>>LOUIS VUITTON</option>
								<option value="j" <c:if test="${productCommand.prodBrand =='j'}">selected</c:if>>others</option>
						</select> <span id="select_text">KINDS :</span> <select name="prodKind">
								<optgroup label="Bags">
									<option value="11" <c:if test="${productCommand.prodKind =='11'}">selected</c:if>>cross/shoulder bag</option>
									<option value="12" <c:if test="${productCommand.prodKind =='12'}">selected</c:if>>clutch/pouch bag</option>
									<option value="13" <c:if test="${productCommand.prodKind =='13'}">selected</c:if>>tote bag</option>
									<option value="14" <c:if test="${productCommand.prodKind =='14'}">selected</c:if>>belt bag</option>
									<option value="15" <c:if test="${productCommand.prodKind =='15'}">selected</c:if>>bucket bag</option>
									<option value="16" <c:if test="${productCommand.prodKind =='16'}">selected</c:if>>backpack</option>
									<option value="17" <c:if test="${productCommand.prodKind =='17'}">selected</c:if>>suitcase</option>
									<option value="18" <c:if test="${productCommand.prodKind =='18'}">selected</c:if>>etc</option>
									<option value="10" <c:if test="${productCommand.prodKind =='10'}">selected</c:if>>others</option>
								</optgroup>
								<optgroup label="Shoes">
									<option value="21" <c:if test="${productCommand.prodKind =='21'}">selected</c:if>>heels</option>
									<option value="22" <c:if test="${productCommand.prodKind =='22'}">selected</c:if>>flat</option>
									<option value="23" <c:if test="${productCommand.prodKind =='23'}">selected</c:if>>sandal/slippers</option>
									<option value="24" <c:if test="${productCommand.prodKind =='24'}">selected</c:if>>boots</option>
									<option value="25" <c:if test="${productCommand.prodKind =='25'}">selected</c:if>>loafer</option>
									<option value="26" <c:if test="${productCommand.prodKind =='26'}">selected</c:if>>dress shoes</option>
									<option value="27" <c:if test="${productCommand.prodKind =='27'}">selected</c:if>>sneaker</option>
									<option value="20" <c:if test="${productCommand.prodKind =='28'}">selected</c:if>>others</option>
								</optgroup>
								<optgroup label="Jewelry">
									<option value="31" <c:if test="${productCommand.prodKind =='31'}">selected</c:if>>bracelet</option>
									<option value="32" <c:if test="${productCommand.prodKind =='32'}">selected</c:if>>brooch/pin</option>
									<option value="33" <c:if test="${productCommand.prodKind =='33'}">selected</c:if>>earring</option>
									<option value="34" <c:if test="${productCommand.prodKind =='34'}">selected</c:if>>necklace</option>
									<option value="35" <c:if test="${productCommand.prodKind =='35'}">selected</c:if>>ring</option>
									<option value="30" <c:if test="${productCommand.prodKind =='30'}">selected</c:if>>others</option>
								</optgroup>
						</select></td>
					</tr>
					
					
					<tr class="contents">
						<td class="td_left">거래방법</td>
						<td class="td_right"><input class="radio" type="radio" name="prodMethod" value="J" <c:if test="${productCommand.prodMethod =='J'}">checked</c:if> >
						<span id="radio_text">직거래 희망</span> 
						<input class="radio" type="radio" name="prodMethod" value="T" <c:if test="${productCommand.prodMethod =='T'}">checked</c:if>>
						<span id="radio_text">택배 희망</span></td>
					</tr>

					<tr class="contents">
						<td class="td_left">상태</td>
						<td class="td_right"><input class="radio" type="radio"
							name="prodState" value="O" <c:if test="${productCommand.prodState =='O'}">checked</c:if>><span
							id="radio_text">중고상품</span> <input class="radio" type="radio"
							name="prodState" value="N" <c:if test="${productCommand.prodState =='N'}">checked</c:if>><span id="radio_text">새상품</span>
						</td>
					</tr>
					<tr class="contents">
						<td class="td_left">보증서</td>
						<td class="td_right"><input class="radio" type="radio"
							name="prodGuarantee" value="Y" <c:if test="${productCommand.prodGuarantee =='Y'}">checked</c:if>><span
							id="radio_text">유</span> <input class="radio" type="radio"
							name="prodGuarantee" value="N" <c:if test="${productCommand.prodGuarantee =='N'}">checked</c:if>><span id="radio_text">무</span>
						</td>
					</tr>
					<tr class="contents">
						<td class="td_left">가격</td>
						<td class="td_right">
							<div class="input_price_box">
								<input class="input" type="number" name="prodPrice"
									placeholder="숫자만 입력해주세요." value="${productCommand.prodPrice }"><span>원</span>
							</div>
						</td>
					</tr>
					<tr class="contents">
						<td class="td_left">설명</td>
						<td class="td_right"><textarea rows="8" cols="65"
								name="prodDetail" placeholder="상품 설명을 입력해주세요.">${productCommand.prodDetail }</textarea></td>
					</tr>
					<tr class="contents">
						<td class="td_left">수량</td>
						<td class="td_right">
							<div class="input_price_box">
								<input class="input" type="number" name="prodQuantity" value="${productCommand.prodQuantity }"><span>개</span>
							</div>
						</td>
					</tr>
				 
					<tr>
						<td colspan="2" class="subject"><input type="submit" class="btn" value="상품수정"></td>
					</tr>
					
			 
					
				</table>
			</form:form>
		</div>
		<div class="footer">
			<%@include file="../include/includeFooter.jsp"%>
		</div>
	</div>
	 
</body>
</html>