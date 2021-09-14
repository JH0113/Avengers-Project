<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css" type="text/css">
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
function autoRefresh_sample_div()
{
var currentLocation = window.location;
$("#sample").load(currentLocation + ' #sample');
}
setInterval('autoRefresh_sample_div()', 1000); //1초 후 새로고침
</script>
</head>
<body>
	<div class="subject">${productdto.prodName }의채팅방.</div>
	<c:if test="${productdto.memId != authinfo.userId }">
		<c:if test="${roomNum != 0 }">
		${roomNum }
			<div id="sample">
				<c:forEach items="${msgText }" var="list">
				${list.buyerId } : ${list.msgText }(${list.msgTime })<br/>
			</c:forEach>
			</div>
			<div class="send_box">
				<form action="sendMsg" method="post" name="frm">
					<input type="number" name="roomNum" value="${roomNum }" hidden="hidden" /> 
					<input type="text" name="buyerId" value="${authinfo.userId }" hidden="hidden" />
					<input type="text" name="msgText" /><input type="submit" value="전송" />
				</form>
			</div>
		</c:if>
		<c:if test="${roomNum == 0 }">
			<a
				href="createMessageRoom?prodNum=${productdto.prodNum }&prodName=${productdto.prodName }&memId=${productdto.memId}">채팅시작하기</a>
		</c:if>
	</c:if>
	<c:if test="${productdto.memId == authinfo.userId }">
		<c:forEach items="${chatList }" var="list">
			<a href="sellerChat?roomNum=${list }">채팅방 : ${list }</a>
		</c:forEach>
	</c:if>
</body>
</html>