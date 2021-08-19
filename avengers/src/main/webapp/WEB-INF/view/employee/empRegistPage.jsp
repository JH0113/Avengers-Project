<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>employee Regist Page</title>
</head>
<style>
* {
	font-family: 'Montserrat', sans-serif;
	text-decoration: none;
	list-style: none;
	padding: 0px;
	margin: 0px;
	color: #000;
}

.wrap {
	width: 100%;
	height: 100%;
	background-color: #f5f6f7;
	display: none;
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
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    var id = prompt("Please enter a password.", "passoword");
    if (id === "master") {
      $(".wrap").css({
        "display" : "block"
      });
    }else {
      $(".wrap").css({
        "display" : "none"
      });
      alert(id + "는 잘못된 패스워드입니다.");
    }
  });
</script>
<body>
	<div class="wrap">
		<form action="empRegist" name="frm" method="post">
			<div class="container">
				<div class="logo">
					<a href="main">Employee Regist</a>
				</div>
				<div class="regist_box">

					<div class="box1">
						<div class="text_box">아이디</div>
					</div>

					<span class="input_box">
						<input type="text" name="empId" class="input">
					</span>

					<div class="box1">
						<div class="text_box">비밀번호</div>
					</div>
					<span class="input_box"> <input type="password" name="empPw"
						class="input">
					</span>
					<div class="box1">
						<div class="text_box">이름</div>
					</div>
					<span class="input_box"> <input type="text" name="empName"
						class="input">
					</span>
					<div class="box1">
						<div class="text_box">닉네임</div>
					</div>
					<span class="input_box"> <input type="text" name="empNick"
						class="input">
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
		</form>
	</div>
</body>
</html>