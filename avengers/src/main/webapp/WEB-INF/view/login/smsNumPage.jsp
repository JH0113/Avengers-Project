<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>sms check2</title>
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
	width: 1200px;
	height: 400px;
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

.memPwFind-table {
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
.memPwFind-table th {
    display: table-cell;
    vertical-align: inherit;
    font-weight: bold;
    width: 100px;
    background-color: #eef1f8;
    text-align: left;
    white-space: nowrap;
}
.memPwFind-table th, .memPwFind-table td {
    padding: 14px 30px;
    border-bottom: 1px solid #ddd;
    margin: 0;
}
.memPwFind-foot {
    margin-top: 30px;
    text-align: center;
    margin: 0;
    padding: 0;
}
.memPwFind-submit, .memPwFind-Phone-submit, .memPwFind-authentication-submit, .memPwFind-cancel{
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
</style>
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.3.0/jquery.form.js"></script>
	<script>

    function phoneCheck() {
      $.ajax({
        url: "<c:url value='/smsCheck2'/>",
        type: "post",
        data: {
          "smsNum" : $("#smsNum").val()
        },
        success: function(result) {
          if (result.trim() == "ok") {
            alert("번호 인증 성공");
            location.href="memPwModifyPage"
          } else {
            alert("번호 인증 실패");
            location.href="smsCheckPage"
          }
        },
        error:function(){
        	alert("접속오류입니다.")
        }
      });
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

		<div class="leg">
		<form:form action="smsCheck2" method="post" name="frm" modelAttribute="MemberDTO" onsubmit="return phoneCheck();">
			<h1 class="memPwFind-title">인증번호 입력</h1>
                <p class="memPwFind-msg">인증번호를 입력해주세요.</p>
                    <table class="memPwFind-table">
                        <tbody>
                            <tr>
                                <th scope="row">인증하기</th>
                                <td>
                                    <div class="input_box">
                                        <input class="input" type="text" name="smsNum" id="smsNum"/>
                                    </div>
                                    <div class="error_box">
                                        <form:errors id="error_text" path = "smsNum"/>
                                    </div>
                                    <button type="submit" class="memPwFind-authentication-submit">확인</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
		</form:form>
		</div>
		</div>
		<div class="banner"></div>
		<div class="footer">
			<%@include file="../include/includeFooter.jsp" %>
		</div>
	</div>

</body>
</html>