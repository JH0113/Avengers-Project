<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style type="text/css">
.popup_bg {
	display: none;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.7);
}

.popup {
	position: absolute;
	left: calc(50% - 150px);
	top: calc(50% - 170px);
	width: 300px;
	height: 300px;
	background-color: #fff;
	text-align: center;
}

#popup_intro {
	text-align: center;
}

.pupup_btn {
	width: 50px;
	height: 50px;
	background-color: #000;
	color: #fff;
	text-align: center;
	font-size: 200%;
	cursor: pointer;
}

.image_form {
	width: 241px;
	height: 86px;
	padding: 30px;
}
</style>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".pupup_btn").click(function() {
			$(".popup_bg").css({
				"display" : "none"
			});
		});
	});
	function intro() {
		$(".popup_bg").css({
			"display" : "block"
		});
	}
</script>
<div class="popup_bg">
	<div class="popup">
		<div class="pupup_btn">x</div>
		<h1 id="popup_intro">사진 등록</h1>
		<form action="memImageRegist" name="frm" method="post"
			enctype="multipart/form-data">
			<div class="image_form">
				<input type="file" name="memImage" />
			</div>
			<div>
				<input type="submit" value="등록">
			</div>
		</form>
	</div>
</div>