<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>내 정보 수정</title>
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
	height: 350px;
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
	height: 96px;
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
	width: 1200px;
	height: 1000px;
	margin: auto;
	padding-top: 40px;
	border-radius: 10px;
}

.navigation {
	display: flex;
	justify-content: center;
}

.my_menu {
	width: 200px;
	height: 200px;
	margin-left: 30px;
	margin-right: 30px;
	background-color: white;
	border-radius: 10px;
}

.my_menu a {
	display: block;
	padding: 20px;
	font-family: 'Montserrat', sans-serif;
	font-size: 90%;
	text-align: center;
	margin-top: 45px;
}

.banner {
	margin: auto;
	width: 1200px;
	height: 400px;
	background-image: url("images/mypagebanner.png");
	background-size: 1200px 400px;
	margin-top: 50px;
	margin-bottom: 100px;
}

.memModify-table {
	border-collapse: collapse;
	border-spacing: 0;
	width: 100%;
	border-top: 2px solid #969696;
	font-family: 돋움, Dotum, sans-serif;
	font-size: 100%;
	display: table;
	box-sizing: border-box;
	text-indent: initial;
	border-color: grey;
}

.memModify-table th {
	display: table-cell;
	vertical-align: inherit;
	font-weight: bold;
	width: 100px;
	background-color: #eef1f8;
	text-align: left;
	white-space: nowrap;
}

.memModify-table th, .memModify-table td {
	padding: 14px 30px;
	border-bottom: 1px solid #ddd;
	margin: 0;
}

.memModify-foot {
	margin-top: 30px;
	text-align: center;
	margin: 0;
	padding: 0;
}

.memModify-addr, .memModify-submit, .memModify-cancel {
	min-width: 40px;
	padding: 7px 12px;
	border-radius: 2px;
	font-size: 14px;
	line-height: 14px;
	display: inline-block;
	box-sizing: border-box;
	border: 1px solid #0085da;
	text-decoration: none;
	vertical-align: middle;
	text-align: center;
	margin: 3px 4px;
}

.memModify-addr {
	position: absolute;
	right: 10px;
	top: 6px;
}

.input_box {
	position: relative;
	width: 354px;
	height: 29px;
	margin-bottom: 8px;
	padding: 7px 35px 10px 11px;
	border: solid 1px #dadada;
	background: #fff;
	margin-bottom: 8px;
	height: 29px;
	display: flex;
}

.input {
	font-size: 14px;
	line-height: 16px;
	position: relative;
	z-index: 9;
	width: 80%;
	height: 16px;
	padding: 8px 0 6px;
	color: #000;
	border: none;
	background: #fff;
	-webkit-appearance: none;
}

#error_text {
	color: red;
}

.error_box {
	font-size: 60%;
	margin-bottom: 8px;
	margin-left: 10px;
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

.profile {
	width: 150px;
	height: 150px;
	margin: auto;
	border-radius: 70%;
	background-color: #fff;
}



</style>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function intro() {
		$(".popup_bg").css({
			"display" : "block"
		});
	}
	$(document).ready(function() {
		$(".pupup_btn").click(function() {
			$(".popup_bg").css({
				"display" : "none"
			});
		});
	});
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
			<form:form action="memModify" method="post" name="frm"
				modelAttribute="memberCommand">
				<form:hidden path="memId" />
				<form:hidden path="memName" />
				<h1 class="memModify-title">회원정보 수정</h1>
				<table class="memModify-table">
					<tbody>
						<tr>
							<th scope="row">프로필 사진</th>
							<td class="td_right">
								<div class="profile">
									<c:if test="${authinfo.memImage != null }">
										<img width="150px" height="150px"
											src="upload/${authinfo.memImage }" />
										<br />
									</c:if>
									<c:if test="${authinfo.memImage == null }">
										<img width="150px" height="150px" src="images/profile01.png" />
									</c:if>
								</div>

							</td>
						</tr>
						<tr>
							<th scope="row">아이디</th>
							<td>${memberCommand.memId }</td>
						</tr>
						<tr>
							<th scope="row">이름</th>
							<td>${memberCommand.memName }</td>
						</tr>
						<tr>
							<th scope="row">닉네임</th>
							<td>
								<div class="input_box">
									<form:input class="input" path="memNick" />
								</div>
								<div class="error_box">
									<form:errors id="error_text" path="memNick" />
								</div>
							</td>
						</tr>
						<tr>
							<th scope="row">우편번호</th>
							<td>
								<div class="input_box">
									<form:input class="input" path="memPostNumber"
										id="sample4_postcode" readonly="readonly" />
								</div>
								<div class="error_box">
									<form:errors id="error_text" path="memPostNumber" />
								</div>
							</td>
						</tr>
						<tr>
							<th scope="row">주소</th>
							<td>
								<div class="input_box">
									<form:input class="input" path="memAddr"
										id="sample4_roadAddress" size="30" readonly="readonly" />
									<button type="button" class="memModify-addr"
										onclick="javascript:sample4_execDaumPostcode();">주소
										검색</button>
								</div>
								<div class="error_box">
									<form:errors id="error_text" path="memAddr" />
								</div>
							</td>
						</tr>
						<tr>
							<th scope="row">상세주소</th>
							<td>
								<div class="input_box">
									<form:input class="input" path="memDetailAdd" />
								</div>
								<div class="error_box">
									<form:errors id="error_text" path="memDetailAdd" />
								</div>
							</td>
						</tr>
						<tr>
							<th scope="row">연락처</th>
							<td>
								<div class="input_box">
									<form:input class="input" path="memPhone" />
								</div>
								<div class="error_box">
									<form:errors id="error_text" path="memPhone" />
								</div>
							</td>
						</tr>
					</tbody>
				</table>
				<div class="memModify-foot">
					<button type="submit" class="memModify-submit">수정 완료</button>
					<button type="button" class="memModify-cancel"
						onclick="javascript:history.back();">취소</button>
				</div>
			</form:form>
		</div>
	</div>
	<div class="banner"></div>
	<div class="footer">
		<%@include file="../include/includeFooter.jsp"%>
	</div>
	</div>
	
</body>
</html>