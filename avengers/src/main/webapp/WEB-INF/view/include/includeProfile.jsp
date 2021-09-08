<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style type="text/css">
.profile_box {
	width: 250px;
	height: 300px;
	border-radius: 10%;
	padding-top: 30px;
	background-color: #bbbfc3;
	border-radius: 10%;
}

.profile {
	width: 150px;
	height: 150px;
	margin: auto;
	border-radius: 70%;
	background-color: #fff;
}

.profile_btn {
	text-align: center;
	margin-top: 20px;
}

.profile_btn a {
	color: #fff;
}

.profile_btn a:hover {
	font-weight: bolder;
}

.nick_box {
	width: 250px;
	height: 100px;
	color: #fff;
	text-align: center;
	font-size: 130%;
	font-weight: bolder;
	padding-top: 30px;
}
img {
	border-radius: 15%;
}
</style>
<div class="profile_box">
	<div class="profile">
		<c:if test="${authinfo.memImage != null }">
			<img width="150px" height="150px" src="upload/${authinfo.memImage }" />
			<br />
		</c:if>
		<c:if test="${authinfo.memImage == null }">
			<img width="150px" height="150px" src="images/profile01.png" />
		</c:if>
	</div>
	<div class="profile_btn">
		<a href="#" id="intro" onclick="intro()">사진 변경</a>
	</div>
	<div class="nick_box">닉네임 : ${authinfo.userNick }</div>
</div>