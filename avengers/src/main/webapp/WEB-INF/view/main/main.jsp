<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>mainPage</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Arvo:wght@700&display=swap"
	rel="stylesheet">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap"
	rel="stylesheet">
<style>
* {
	text-decoration: none;
}
#logo {
	font-family: 'Arvo', serif;
	font-size: 130%;
}

.w3-sidebar a {
	font-family: 'Montserrat', sans-serif;
}

body, h1, h2, h3, h4, h5, h6, .w3-wide {
	font-family: 'Noto Sans', sans-serif;
}
</style>
<script>
	// Accordion
	document.getElementById("myBtn").click();
	function myAccFunc() {
		var x = document.getElementById("demoAcc");
		if (x.className.indexOf("w3-show") == 1) {
			x.className += " w3-show";
		} else {
			x.className = x.className.replace(" w3-show", "");
		}
	}
	document.getElementById("myBtn1").click();
	function myAccFunc1() {
		var x = document.getElementById("demoAcc1");
		if (x.className.indexOf("w3-show") == 1) {
			x.className += " w3-show";
		} else {
			x.className = x.className.replace(" w3-show", "");
		}
	}
	document.getElementById("myBtn2").click();
	function myAccFunc2() {
		var x = document.getElementById("demoAcc2");
		if (x.className.indexOf("w3-show") == 1) {
			x.className += " w3-show";
		} else {
			x.className = x.className.replace(" w3-show", "");
		}
	}
	document.getElementById("myBtn3").click();
	function myAccFunc3() {
		var x = document.getElementById("demoAcc3");
		if (x.className.indexOf("w3-show") == 1) {
			x.className += " w3-show";
		} else {
			x.className = x.className.replace(" w3-show", "");
		}
	}
	// Open and close sidebar
	function w3_open() {
		document.getElementById("mySidebar").style.display = "block";
		document.getElementById("myOverlay").style.display = "block";
	}

	function w3_close() {
		document.getElementById("mySidebar").style.display = "none";
		document.getElementById("myOverlay").style.display = "none";
	}
</script>
<body class="w3-content" style="max-width: 1200px">

	<!-- Sidebar/menu -->
	<nav class="w3-sidebar w3-bar-block w3-white w3-collapse w3-top"
		style="z-index: 3; width: 250px" id="mySidebar">
		<div class="w3-container w3-display-container w3-padding-16">
			<i onclick="w3_close()"
				class="fa fa-remove w3-hide-large w3-button w3-display-topright"></i>
			<h3 class="w3-wide">
				<b id="logo"><a href="main">2nd shop</a></b>
			</h3>
		</div>
		<div class="w3-padding-64 w3-large w3-text-grey"
			style="font-weight: bold">
			<a onclick="myAccFunc1()" href="javascript:void(0)"
				class="w3-button w3-block w3-white w3-left-align" id="myBtn1">
				가방 <i class="fa fa-caret-down"></i>
			</a>
			<div id="demoAcc1"
				class="w3-bar-block w3-hide w3-padding-large w3-medium">
				<a href="#" class="w3-bar-item w3-button w3-light-grey"><i
					class="fa fa-caret-right w3-margin-right"></i>전체보기</a> <a href="#"
					class="w3-bar-item w3-button">크로스백/숄더백</a> <a href="#"
					class="w3-bar-item w3-button">클러치/파우치백</a> <a href="#"
					class="w3-bar-item w3-button">토트백</a> <a href="#"
					class="w3-bar-item w3-button">벨트백</a> <a href="#"
					class="w3-bar-item w3-button">버킷백</a> <a href="#"
					class="w3-bar-item w3-button">백팩</a> <a href="#"
					class="w3-bar-item w3-button">트래블</a> <a href="#"
					class="w3-bar-item w3-button">기타</a>
			</div>
			<a onclick="myAccFunc2()" href="javascript:void(0)"
				class="w3-button w3-block w3-white w3-left-align" id="myBtn2">
				신발 <i class="fa fa-caret-down"></i>
			</a>
			<div id="demoAcc2"
				class="w3-bar-block w3-hide w3-padding-large w3-medium">
				<a href="#" class="w3-bar-item w3-button w3-light-grey"><i
					class="fa fa-caret-right w3-margin-right">전체보기</i></a> <a href="#"
					class="w3-bar-item w3-button">스니커즈</a> <a href="#"
					class="w3-bar-item w3-button">힐</a> <a href="#"
					class="w3-bar-item w3-button">플랫</a> <a href="#"
					class="w3-bar-item w3-button">샌들/슬리퍼</a> <a href="#"
					class="w3-bar-item w3-button">부츠</a> <a href="#"
					class="w3-bar-item w3-button">로퍼</a> <a href="#"
					class="w3-bar-item w3-button">드레스슈즈</a> <a href="#"
					class="w3-bar-item w3-button">기타</a>
			</div>
			<a onclick="myAccFunc()" href="javascript:void(0)"
				class="w3-button w3-block w3-white w3-left-align" id="myBtn">
				쥬얼리 <i class="fa fa-caret-down"></i>
			</a>
			<div id="demoAcc"
				class="w3-bar-block w3-hide w3-padding-large w3-medium">
				<a href="#" class="w3-bar-item w3-button w3-light-grey"><i
					class="fa fa-caret-right w3-margin-right"></i>전체보기</a> <a href="#"
					class="w3-bar-item w3-button">팔찌</a> <a href="#"
					class="w3-bar-item w3-button">브로치/핀</a> <a href="#"
					class="w3-bar-item w3-button">귀걸이</a> <a href="#"
					class="w3-bar-item w3-button">목걸이</a> <a href="#"
					class="w3-bar-item w3-button">반지</a> <a href="#"
					class="w3-bar-item w3-button">기타</a>
			</div>
			<a onclick="myAccFunc3()" href="javascript:void(0)"
				class="w3-button w3-block w3-white w3-left-align" id="myBtn3">
				브랜드 <i class="fa fa-caret-down"></i>
			</a>
			<div id="demoAcc3"
				class="w3-bar-block w3-hide w3-padding-large w3-medium">
				<a href="#" class="w3-bar-item w3-button w3-light-grey"><i
					class="fa fa-caret-right w3-margin-right"></i>SAINT LAURENT</a> <a
					href="#" class="w3-bar-item w3-button">PRADA</a> <a href="#"
					class="w3-bar-item w3-button">BURBERRY</a> <a href="#"
					class="w3-bar-item w3-button">CHANEL</a> <a href="#"
					class="w3-bar-item w3-button">GUCCI</a> <a href="#"
					class="w3-bar-item w3-button">MAISON MARGIELA</a> <a href="#"
					class="w3-bar-item w3-button">BOTTEGA VENETA</a> <a href="#"
					class="w3-bar-item w3-button">BALENCIAGA</a> <a href="#"
					class="w3-bar-item w3-button">LOUIS VUITTON</a> <a href="#"
					class="w3-bar-item w3-button">VALENTINO</a>
			</div>
		</div>
		<a href="#footer" class="w3-bar-item w3-button w3-padding">Contact</a>
		<a href="javascript:void(0)" class="w3-bar-item w3-button w3-padding"
			onclick="document.getElementById('newsletter').style.display='block'">Newsletter</a>
		<a href="#footer" class="w3-bar-item w3-button w3-padding">Subscribe</a>
	</nav>

	<!-- Top menu on small screens -->
	<header class="w3-bar w3-top w3-hide-large w3-black w3-xlarge">
		<div class="w3-bar-item w3-padding-24 w3-wide">LOGO</div>
		<a href="javascript:void(0)"
			class="w3-bar-item w3-button w3-padding-24 w3-right"
			onclick="w3_open()"><i class="fa fa-bars"></i></a>
	</header>

	<!-- Overlay effect when opening sidebar on small screens -->
	<div class="w3-overlay w3-hide-large" onclick="w3_close()"
		style="cursor: pointer" title="close side menu" id="myOverlay"></div>

	<!-- !PAGE CONTENT! -->
	<div class="w3-main" style="margin-left: 250px">

		<!-- Push down content on small screens -->
		<div class="w3-hide-large" style="margin-top: 83px"></div>

		<!-- Top header -->
		<header class="w3-container w3-xlarge">
			<p class="w3-left">Jeans</p>
			<p class="w3-right">
				<i class="fa fa-shopping-cart w3-margin-right"></i> <i
					class="fa fa-search"></i>
			</p>
		</header>

		<!-- Image header -->
		<div class="w3-display-container w3-container">
			<img src="/w3images/jeans.jpg" alt="Jeans" style="width: 100%">
			<div class="w3-display-topleft w3-text-white"
				style="padding: 24px 48px">
				<h1 class="w3-jumbo w3-hide-small">New arrivals</h1>
				<h1 class="w3-hide-large w3-hide-medium">New arrivals</h1>
				<h1 class="w3-hide-small">COLLECTION 2016</h1>
			</div>
		</div>

		<div class="w3-container w3-text-grey" id="jeans">
			<p>8 items</p>
		</div>

		<!-- Product grid -->
		<div class="w3-row w3-grayscale">
			<div class="w3-col l3 s6">
				<div class="w3-container">
					<img src="/w3images/jeans1.jpg" style="width: 100%">
					<p>
						Ripped Skinny Jeans<br> <b>$24.99</b>
					</p>
				</div>
				<div class="w3-container">
					<img src="/w3images/jeans2.jpg" style="width: 100%">
					<p>
						Mega Ripped Jeans<br> <b>$19.99</b>
					</p>
				</div>
			</div>

			<div class="w3-col l3 s6">
				<div class="w3-container">
					<div class="w3-display-container">
						<img src="/w3images/jeans2.jpg" style="width: 100%"> <span
							class="w3-tag w3-display-topleft">New</span>
						<div class="w3-display-middle w3-display-hover">
							<button class="w3-button w3-black">
								Buy now <i class="fa fa-shopping-cart"></i>
							</button>
						</div>
					</div>
					<p>
						Mega Ripped Jeans<br> <b>$19.99</b>
					</p>
				</div>
				<div class="w3-container">
					<img src="/w3images/jeans3.jpg" style="width: 100%">
					<p>
						Washed Skinny Jeans<br> <b>$20.50</b>
					</p>
				</div>
			</div>

			<div class="w3-col l3 s6">
				<div class="w3-container">
					<img src="/w3images/jeans3.jpg" style="width: 100%">
					<p>
						Washed Skinny Jeans<br> <b>$20.50</b>
					</p>
				</div>
				<div class="w3-container">
					<div class="w3-display-container">
						<img src="/w3images/jeans4.jpg" style="width: 100%"> <span
							class="w3-tag w3-display-topleft">Sale</span>
						<div class="w3-display-middle w3-display-hover">
							<button class="w3-button w3-black">
								Buy now <i class="fa fa-shopping-cart"></i>
							</button>
						</div>
					</div>
					<p>
						Vintage Skinny Jeans<br> <b class="w3-text-red">$14.99</b>
					</p>
				</div>
			</div>

			<div class="w3-col l3 s6">
				<div class="w3-container">
					<img src="/w3images/jeans4.jpg" style="width: 100%">
					<p>
						Vintage Skinny Jeans<br> <b>$14.99</b>
					</p>
				</div>
				<div class="w3-container">
					<img src="/w3images/jeans1.jpg" style="width: 100%">
					<p>
						Ripped Skinny Jeans<br> <b>$24.99</b>
					</p>
				</div>
			</div>
		</div>

		<!-- Subscribe section -->
		<div class="w3-container w3-black w3-padding-32"></div>

		<!-- Footer -->
		<footer class="w3-padding-64 w3-light-grey w3-small w3-center"
			id="footer"> </footer>

		<div class="w3-black w3-center w3-padding-24">
			Powered by <a href="https://www.w3schools.com/w3css/default.asp"
				title="W3.CSS" target="_blank" class="w3-hover-opacity">w3.css</a>
		</div>

		<!-- End page content -->
	</div>

	<!-- Newsletter Modal -->
	<div id="newsletter" class="w3-modal">
		<div class="w3-modal-content w3-animate-zoom" style="padding: 32px">
			<div class="w3-container w3-white w3-center">
				<i
					onclick="document.getElementById('newsletter').style.display='none'"
					class="fa fa-remove w3-right w3-button w3-transparent w3-xxlarge"></i>
				<h2 class="w3-wide">NEWSLETTER</h2>
				<p>Join our mailing list to receive updates on new arrivals and
					special offers.</p>
				<p>
					<input class="w3-input w3-border" type="text"
						placeholder="Enter e-mail">
				</p>
				<button type="button"
					class="w3-button w3-padding-large w3-red w3-margin-bottom"
					onclick="document.getElementById('newsletter').style.display='none'">Subscribe</button>
			</div>
		</div>
	</div>
</body>
</html>
