<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>regist Page</title>
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap"
	rel="stylesheet">
<style type="text/css">
* {
	font-family: 'Montserrat', sans-serif;
	text-decoration: none;
	list-style: none;
	padding: 0px;
	margin: 0px;
	color: #000;
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
.web {
	width: 100%;
	height: 100%;
	background-color: #f5f6f7;
}
.container {
	width: 500px;
	height: 1300px;
	margin: auto;
	top: 0px;
}
.logo {
	width: 100%;
	height: 200px;
	font-family: 'Montserrat', sans-serif;
	font-weight: bold;
	font-size: 250%;
	text-align: center;
	line-height: 240px;
}
.regist_box {
	width: 100%;
	height: 950px;
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
.box_local {
	text-align: center;
	position: relative;
	width: 100%;
	height: 51px;
	border: solid 1px #dadada;
	padding: 10px 40px 10px 14px;
	background: #fff;
	box-sizing: border-box;
	vertical-align: top;
	justify-content: flex-end;
}
.input {
	display: block;
	position: relative;
	float: left;
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
	width: 100%;
}
.input_Post {
	display: block;
	position: relative;
	width: 90%;
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
.btn {
	display: block;
	width: 50%;
	padding: 15px 0 15px;
	font-size: 18px;
	font-weight: 700;
	text-align: center;
	cursor: pointer;
	box-sizing: border-box;
	margin-top: 20px;
	background-color: #404040;
	color: #fff;
}
.btn_box {
	width: 100%;
	height: 80px;
	line-height: 29px;
	border: none;
	text-align: center;
	display: flex;
	position: relative;
	justify-content: flex-end;
	float: left;
}
.localbtn {
   display: inline-block;
   float: right;
   position: absolute;
   top: 13px;
   right: 20px;
   border-radius: 3px;
   width:60px;
    background-color: #404040;
    border: none;
    color:#fff; 
    text-align: center;
    text-decoration: none;
    font-size: 12px;
    padding: 2px;
    margin: 4px;
    cursor: pointer;
}
.footer {
	padding-top: 95px;
	padding-bottom: 15px;
	display: flex;
	flex-direction: column;
	align-items: center;
	width: 100%;
}
#copyright {
	font-family: none;
}
.box1 {
	display: flex;
}
</style>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
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
		<form:form action="memjoin" name="frm" method="post"
			modelAttribute="memberCommand">
			<div class="container">
				<div class="logo">
					<a href="main">2nd shop</a>
				</div>
				<div class="regist_box">

					<div class="box1">
						<div class="text_box">아이디</div>
						<div class="error_box">
							<form:errors id="error_text" path="memId" />
						</div>
					</div>

					<span class="input_box">
						<input type="text" name="memId" class="input" value="${registInfo.memId }" placeholder="시작은 영문으로만,영문, 숫자로만 이루어진 5 ~ 12자">
					</span>

					<div class="box1">
						<div class="text_box">비밀번호</div>
						<div class="error_box">
							<form:errors id="error_text" path="memPw" />
						</div>
					</div>
					<span class="input_box"> <input type="password" name="memPw"
						class="input" value="${registInfo.memPw }" placeholder="숫자, 문자, 특수문자 포함 8~15자리 이내">
					</span>

					<div class="box1">
						<div class="text_box">비밀번호 확인</div>
						<div class="error_box">
							<form:errors id="error_text" path="memPwCon" />
						</div>
					</div>
					<span class="input_box"> <input type="password"
						name="memPwCon" class="input" value="${registInfo.memPwCon }" >
					</span>
					<div class="box1">
						<div class="text_box">이름</div>
						<div class="error_box">
							<form:errors id="error_text" path="memName" />
						</div>
					</div>
					<span class="input_box"> <input type="text" name="memName"
						class="input" value="${registInfo.memName }">
					</span>
					<div class="box1">
						<div class="text_box">닉네임</div>
						<div class="error_box">
							<form:errors id="error_text" path="memNick"/>
						</div>
					</div>
					<span class="input_box"> <input type="text" name="memNick"
						class="input" value="${registInfo.memNick }" placeholder="2 ~ 10자">
					</span>
					<div class="box1">
						<div class="text_box">우편번호</div>
						<div class="error_box">
							<form:errors id="error_text" path="memPostNumber" />
						</div>
					</div>
					<div class="box_local">
						<span class="input_box_locals"> <input type="text"
							name="memPostNumber" id="sample4_postcode" readonly="readonly"
							class="input_Post" value="${registInfo.memPostNumber }" placeholder="주소를 검색해주세요">
						</span> <input type="button" class="localbtn" value="주소검색"
							onclick="avascript:sample4_execDaumPostcode()" />
					</div>

					<div class="box1">
						<div class="text_box">주소</div>
						<div class="error_box">
							<form:errors id="error_text" path="memAddr" />
						</div>
					</div>
					<span class="input_box"> <input type="text" name="memAddr"
						class="input" id="sample4_roadAddress" value="${registInfo.memAddr }" placeholder="주소를 검색해주세요">

					</span>

					<div class="text_box">상세주소</div>
					<span class="input_box"> <input type="text"
						name="memDetailAdd" class="input" value="${registInfo.memDetailAdd }" placeholder="상세주소 입력">
					</span>
					<div class="box1">
						<div class="text_box">핸드폰</div>
						<div class="error_box">
							<form:errors id="error_text" path="memPhone" />
						</div>
					</div>
					<span class="input_box"> <input type="text" name="memPhone"
						class="input" value="${registInfo.memPhone }"> 
					</span>


					<div class="btn_box">
						<input type="button" class="btn" value="가입 취소"
							onclick="javascript:location.href='main'" />
						<button type="submit" class="btn" onclick="valid(this.form)">가입 완료</button>
					</div>
					<div class="footer">
						<span id="copyright">Copyright © 2nd shop All Rights
							Reserved.</span>
					</div>
				</div>
			</div>
		</form:form>
	</div>
</body>
</html>