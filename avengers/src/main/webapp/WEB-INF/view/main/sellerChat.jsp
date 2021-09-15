<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.subject {
	border-bottom: solid 2px red;
	border-top: solid 2px red;
}
#sample {
	left: 0;
	height: 500px;
	width: 480px;
	border-radius: 15px;
	background-color: #404040;
	color: #fff;
}
.send_box {
	height: 50px;
	width: 480px;
	border-bottom: solid 2px red;
	border-top: solid 2px red;
	padding-top: 20px;
}
#input_text {
	width: 300px;
}
</style>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
	function autoRefresh_sample_div() {
		var currentLocation = window.location;
		$("#sample").load(currentLocation + ' #sample');
	}
	setInterval('autoRefresh_sample_div()', 1000); //1초 후 새로고침
</script>
</head>
<body>
	${roomNum }의 채팅방.
	<div id="sample">
		<c:forEach items="${msgText }" var="list">
				${list.buyerId } : ${list.msgText }&nbsp;&nbsp;(<fmt:formatDate
				value="${list.msgTime }" type="date" pattern="yyyy-MM-dd  HH:mm:ss" />)<br />
		</c:forEach>
	</div>
	<div class="send_box">
		<form action="sendMsg" method="post" name="frm">
			<input type="number" name="roomNum" value="${roomNum }"
				hidden="hidden" /> <input type="text" name="buyerId"
				value="${authinfo.userId }" hidden="hidden" /> <input type="text"
				name="msgText" id="input_text" /><input type="submit" value="전송" />
		</form>
	</div>
</body>
</html>