<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>	
<%@ include file="../include/includeTags.jsp"%>

<style type="text/css">
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

</style>

	<div class="top_menu">
		<c:if test="${empty authinfo }">
			<ul class="nav">
				<li><a href="loginPage">LOGIN</a></li>
				<li><a href="memberRegistPage">REGIST</a></li>
				<li><a href="noticePage">NOTICE</a></li>
			</ul>
		</c:if>
		<c:if test="${!empty authinfo }">
			<c:if test="${authinfo.grade == 1 }">
				<ul class="nav">
					<li><a href="myPage">MYPAGE</a></li>
					<li><a href="productRegisterPage">SELL ITEMS</a></li>
					<li><a href="noticePage">NOTICE</a></li>
					<li><a href="login/logout">LOGOUT</a></li>
				</ul>
			</c:if>
			<c:if test="${authinfo.grade != 1 }">
				<ul class="nav">
					<li><a href="memberListPage">MEMBER LIST</a></li>
					<li><a href="reportPage">REPORT</a></li>
					<li><a href="noticePage">NOTICE</a></li>
					<li><a href="login/logout">LOGOUT</a></li>
				</ul>
			</c:if>
		</c:if>
	</div>
