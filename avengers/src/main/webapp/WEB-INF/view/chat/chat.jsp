<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<style>
#monitor {
	margin: 5px;
	width: 340px;
	height: 200px;
	overflow: auto;
	border: 1px solid black;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<h3>웹 소켓 페이지</h3>
	<form>
		대화명 : <input id="nick" type="text" /><input id="login" type="button" value="로그인" />
		<div id="monitor" contentEditable="true"></div>
		<div>
			메시지 : <input id="msg" type="text" /> <input type="button" value="전송" onClick="sendMsg()" />
				    <input type="button" value="나가기" onClick="disConn()" />
		</div>
	</form>
</body>
<script>
	var url = "ws://localhost:8080/avengers/chat/";
	var webSocket = null;
	var monitor = document.getElementById("monitor");
	//접속 URL
	$("#login").click(function() {
		url += $("#nick").val();
		console.log(url);
		webSocket = new WebSocket(url);//웹 소켓 객체 생성	

		//웹소켓 연결됐을 때(client <- server)
		webSocket.onopen = function(e) {
			console.log(e);
		}
		//웹소켓 끊겼을 때(client <- server)
		webSocket.onclose = function(e) {
			if (e.type == "close") {
				monitor.innerHTML += "접속이 종료 되었습니다.<br/>";
			}
		}
		//메시지 수신(client <- server)
		webSocket.onmessage = function(e) {
			console.log(e);
			monitor.innerHTML += e.data + "<br/>";
		}

	});
	//웹소켓 종료(client -> server)
	function disConn() {
		webSocket.close();
	}
	//메시지 전송(client -> server)
	function sendMsg() {
		webSocket.send($("#nick").val() + "> " + $("#msg").val());
		$("#msg").val("");
	}
</script>
</html>