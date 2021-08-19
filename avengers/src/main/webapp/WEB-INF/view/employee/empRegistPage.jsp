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
	padding: 0px;
	margin: 0px;
	text-decoration: none;
	list-style: none;
	color: #000;
}

.wrap {
	width: 100%;
	height: 100%;
	display: none;
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
	<div class="wrap">안녕하세요.</div>
</body>
</html>