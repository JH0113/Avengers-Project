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
	width: 1200px;
	height: 1850px;
	/* 	background-color: skyblue; */
	margin: auto;
	padding-top: 150px;
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
</style>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
	//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	function sample4_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var roadAddr = data.roadAddress; // 도로명 주소 변수
						var extraRoadAddr = ''; // 참고 항목 변수

						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
							extraRoadAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraRoadAddr += (extraRoadAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if (extraRoadAddr !== '') {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample4_postcode').value = data.zonecode;
						document.getElementById("sample4_roadAddress").value = roadAddr;

						// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
						if (roadAddr !== '') {
							document.getElementById("sample4_extraAddress").value = extraRoadAddr;
						} else {
							document.getElementById("sample4_extraAddress").value = '';
						}

						var guideTextBox = document.getElementById("guide");
						// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
						if (data.autoRoadAddress) {
							var expRoadAddr = data.autoRoadAddress
									+ extraRoadAddr;
							guideTextBox.innerHTML = '(예상 도로명 주소 : '
									+ expRoadAddr + ')';
							guideTextBox.style.display = 'block';

						} else {
							guideTextBox.innerHTML = '';
							guideTextBox.style.display = 'none';
						}
					}
				}).open();
	}
</script>
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
							<div id="image_container"></div>
							이미지 1 : <input type="file"
							id="image" accept="image/*" onchange="setThumbnail(event);"
							name="prodImage" multiple="multiple" /><br />
							이미지 2 : <input type="file"
							id="image" accept="image/*" onchange="setThumbnail(event);"
							name="prodImage2" multiple="multiple" /><br />
							이미지 3 : <input type="file"
							id="image" accept="image/*" onchange="setThumbnail(event);"
							name="prodImage3" multiple="multiple" /><br />
						<br />
						<br />
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
						<td class="td_left">거래지역</td>
						<td class="td_right">
							<div class="input_box">
								<input type="text" name="prodLocation" id="sample4_roadAddress"
									readonly="readonly" class="input" value="${authinfo.memAddr }"
									placeholder="거래지역을 검색하세요."> <input type="button"
									class="localbtn" value="지역변경"
									onclick="avascript:sample4_execDaumPostcode()" /> <input
									type="hidden" name="prodPostNum" id="sample4_postcode"
									readonly="readonly" class="input_Post">
							</div> <span id="location_text">* 상세주소는 등록되지 않습니다.</span>
						</td>
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
						</td>
					</tr>
					<tr class="contents">
						<td class="td_left">설명</td>
						<td class="td_right"><textarea rows="8" cols="65"
								name="prodDetail" placeholder="상품 설명을 입력해주세요."></textarea></td>
					</tr>
					<tr class="contents">
						<td class="td_left">수량</td>
						<td class="td_right">
							<div class="input_price_box">
								<input class="input" type="number" name="prodQuantity" value="1"><span>개</span>
							</div>
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
</body>
</html>