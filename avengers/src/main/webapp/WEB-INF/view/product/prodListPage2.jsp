<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/includeTags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>main page</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link
	href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap"
	rel="stylesheet">
<title>Insert title here</title>

<style type="text/css">
* {
	list-style: none;
	text-decoration: none;
	color: #000;
	margin: 0;
	padding: 0;
}

td {
	padding: 10px;
	text-align: center;
}

table {
	margin: auto;
	border: 1px solid;
}

td {
	margin: auto;
	border: 1px solid;
}

.web {
	width: 100%;
	height: 100%;
}

.body {
	background-color: white;
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	max-width: 1200px;
	display: flex;
	height: 240px;
	margin: auto;
}

.null {
	height: 240px;
}

.products {
	width: 100%;
	height: auto;
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

.headmenu {
	width: 950px;
	height: 120px;
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
</style>
</head>

<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
	$(document)
			.ready(
					function(event) {

						$(window)
								.scroll(
										function() {

											var scrollHeight = $(window)
													.scrollTop()
													+ $(window).height();

											var documentHeight = $(document)
													.height();

											//스크롤이 맨아래로 갔는지 아닌지 확인하는 if문

											if (scrollHeight == documentHeight) {

												for (var i = 0; i < 10; i++) {

													$('#mytable > tbody:last')
															.append(
																	'<tr><td>HELLO world</td><td>안녕</td><td>안녕</td><td>안녕</td></tr>');

												}

											}

										});

					});
</script>

<body>
	<div class="web">
		<div class="body">
			<div class="left_bar">
				<div class="logo">
					<span id="logo_text"><a href="main">2nd shop</a></span>
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
						<%@include file="../include/includeTopMenu.jsp"%>
					</div>
				</div>

			</div>

		</div>
		<div class="null"></div>
		<div class="products">
			<table id="mytable">
				<tr>
					<td><img width="200" height="200" alt="product image"
						src="images/1.png">
					<td><img width="200" height="200" alt="product image"
						src="images/2.png">
					<td><img width="200" height="200" alt="product image"
						src="images/3.png">
					<td><img width="200" height="200" alt="product image"
						src="images/4.png">
				</tr>
				<tr>
					<td><img width="200" height="200" alt="product image"
						src="images/1.png">
					<td><img width="200" height="200" alt="product image"
						src="images/2.png">
					<td><img width="200" height="200" alt="product image"
						src="images/3.png">
					<td><img width="200" height="200" alt="product image"
						src="images/4.png">
				</tr>
				<tr>
					<td><img width="200" height="200" alt="product image"
						src="images/1.png">
					<td><img width="200" height="200" alt="product image"
						src="images/2.png">
					<td><img width="200" height="200" alt="product image"
						src="images/3.png">
					<td><img width="200" height="200" alt="product image"
						src="images/4.png">
				</tr>
				<tr>
					<td><img width="200" height="200" alt="product image"
						src="images/1.png">
					<td><img width="200" height="200" alt="product image"
						src="images/2.png">
					<td><img width="200" height="200" alt="product image"
						src="images/3.png">
					<td><img width="200" height="200" alt="product image"
						src="images/4.png">
				</tr>
				<tr>
					<td><img width="200" height="200" alt="product image"
						src="images/1.png">
					<td><img width="200" height="200" alt="product image"
						src="images/2.png">
					<td><img width="200" height="200" alt="product image"
						src="images/3.png">
					<td><img width="200" height="200" alt="product image"
						src="images/4.png">
				</tr>
				<tbody></tbody>
			</table>

		</div>
	</div>

</body>
</html>