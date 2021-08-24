<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/includeTags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>main page</title>
<link rel="stylesheet" href="style.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap"
	rel="stylesheet">
<style type="text/css">
* {
	list-style: none;
	text-decoration: none;
	color: #000;
	margin: 0;
	padding: 0;
}

.web {
	width: 100%;
	height: 100%;
}

.body {
	max-width: 1200px;
	display: flex;
	height: 240px;
	margin: auto;
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

.leg {
	width: 1200px;
	height: 900px;
	margin: auto;
}
/*
.banner {
	width: 100%;
	height: 400px;
	background-image: url("images/noticeBanner.png");
	background-size: 100% 400px;
}
*/

.contents {
	font-family: 'Montserrat', sans-serif;
	width: 100%;
	height: 600px;
}

td, th {
	padding-top: 20px;
	padding-bottom: 20px;
	padding-left: 15px;
	padding-right: 15px;
	text-align: center;
}

table {
	width: 1200px;
	margin: auto;
	border-top: none;
	border-bottom: none;
	border-left: none;
	border-right: none;
	border-collapse: collapse;
	vertical-align: center;

}

tr.border_bottom td {
	font-size: 13px;
	border-bottom: 1px solid #e6e6e6;
}

tr.border_bottom_th {
	border-bottom: 3px solid #1a1a1a;
}


.btn {
	display: block;
	width: 200px;
	margin: auto;
	padding: 5px 0 5px;
	font-size: 14px;
	font-family: 'Montserrat', sans-serif;
	text-align: center;
	cursor: pointer;
	box-sizing: border-box;
	background-color: #404040;
	color: #ffffff;
}

.list_search_area{
	
	display: flex;
	width: 400px;
	height: 30px;
	margin: 10px;	
	padding: 10px;
	border: 2px;
}
.list_search_area input {
	padding: 5px;
	width: 250px;
}

</style>

<script type="text/javascript" >  
		function deleteConfirm(){
		    if (confirm("정말로 '${memberCommand.memId }' 회원을 강퇴하시겠습니까?")){
		     location.href="memberDelete?memId=${memberCommand.memId}";
		    }
		 }			
</script>

</head>
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
		<div class="leg">
			<div class="banner"></div>		
			<div class="contents">
				<table border=1>
					<tr class="border_bottom_th">					
						<td colspan="4"><h2>'${memberCommand.memNick }'님의 정보</h2></td>
					</tr> 
					<tr>
					   <td rowspan="5"><img width="200" height="200" src="images/noimage.png" /></td>
                       <th>이름</th>
                        	<td colspan="2">${memberCommand.memName }</td>
                       <tr><th>닉네임</th>
                        	<td colspan="2">${memberCommand.memNick }</td></tr>
                        	
                       <tr><th>아이디</th>
                      		<td colspan="2">${memberCommand.memId }</td> </tr>    
                              
                       <tr><th>전화번호</th>
                        	<td colspan="2">${memberCommand.memPhone }</td> </tr>
                       <tr><th>주소</th>
                        	<td colspan="2">${memberCommand.memAddr }, ${memberCommand.memDetailAdd }</td> </tr> 
                     
					<tr><th>구매내역</th>
					<td colspan="3"> ex) 2021-08-01 / 판매자 '○○'과의 거래 / 거래상품 '프라다 가방' (클릭 시 이동)</td></tr>
					
					<tr><th>판매내역</th>
					<td colspan="3"> ex) 2020-05-13 / 구매자 '☆☆☆'과의 거래 / 거래상품 '발렌티노 목걸이' (클릭 시 이동)</td></tr>
					
					<tr><th>신고누적횟수 (누르면 신고데이터 볼수있음)</th>
						<td colspan="3"> '${memberCommand.memId }' 님의 신고된 데이터 보기 </td></tr>
					
					<tr><td colspan="4">
						<input type="button" class="btn" value="${memberCommand.memId } 회원 강제 탈퇴" onclick="deleteConfirm();">			
					</td></tr>	
				</table>
  
			</div>
		</div>

		<div class="footer">
			<%@include file="../include/includeFooter.jsp"%>
		</div>
	</div>
</body>
</html>