<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/includeTags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Insert title here</title>
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
.headmenu {
	width: 100%;
	height: 120px;
}
.subject {
	text-align: center;
	font-family: 'Montserrat', sans-serif;
	padding: 20px;
	font-size: 100%;
	font-weight: bolder;
}
.leg {
	width: 1200px;
	height: 1000px;
	margin: auto;
}
.Contents {
	font-family: 'Montserrat', sans-serif;
	width: 100%;
	height: auto;
}
.btn {
	display: block;
	width: 100px;
	margin: auto;
	padding: 5px 0 5px;
	font-size: 14px;
	font-family: 'Montserrat', sans-serif;
	text-align: center;
	cursor: pointer;
	box-sizing: border-box;
	margin-top: 30px;
	background-color: #404040;
	color: #ffffff;
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
}
tr.border_bottom td {
	border-bottom: 1px solid #e6e6e6;
	font-size: 14px;
}
tr.border_bottom_th {
	border-bottom: 3px solid #1a1a1a;
}
#main_point {
	font-weight: bolder;
}
.footer {
	clear: both;
	width: 100%;
	height: 150px;
	background-color: #000;
	text-align: center;
	line-height: 50px;
}
#footer_text {
	color: #fff;
}
#scroll{
	max-height: 700px;
	display: inline-block;
	overflow: auto;
    -ms-overflow-style: none; /* IE and Edge */ 
    scrollbar-width: none; /* Firefox */ 
}
#scroll::-webkit-scrollbar{
    display: none; /* Chrome, Safari, Opera*/
}
#prodInfo{
	font-size: 12px;
	font-family: 'Montserrat', sans-serif;
} 
.ellipsis_multi {
	font-family: 'Montserrat', sans-serif;
	font-size: 15px;
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 2; /* 라인수 */
	-webkit-box-orient: vertical;
	word-wrap: break-word;
	line-height: 18px;
	height: 36px; /* height = line-height * 줄수 : 비wekkit 계열 */
}

</style>
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
			<div class="Contents"> 
				<table>
					<tr>
						<th rowspan="3" width="200"><img src="upload/${memberDTO.memImage }" width="200" height="200" style="border-radius: 20px"></th>
						<td height="10" colspan="5" class="subject" style="background-color: LightGray;">'${memberDTO.memNick }'의 shop</td>
						
					</tr>
					
 					<tr>
						 
						<td colspan="2">${memberDTO.memId } / ${memberDTO.memNick }</td> <td></td>
					</tr>
	    
					<tr>
						<td>신고 횟수 : ${memberDTO.memReportedCount }</td> 
						<td>받은 관심 : ${heartCount }</td> 
					</tr>
				  
				  	<tr>
						<td colspan="5" class="subject" style="background-color: LightGray;">items</td>
					</tr>
					</table>


					<table id="scroll">
					
				 
					<tr height=100>
					 	<c:forEach items="${list }" var="dto" varStatus="cnt">
						 
						
							<td><a href="prodDetailPage?prodNum=${dto.prodNum}">
							
							<img src="upload/${dto.prodImage}" width="200" style="border-radius: 20px">
							 
							
							 <p class="ellipsis_multi" style="font-weight: bold;">${dto.prodName}</p>
							 <p class="ellipsis_multi"><fmt:formatNumber value="${dto.prodPrice}" type="number"/>원</p></a></td>
							 
							
							<c:if test="${cnt.count % 5 == 0 }">
					</tr>
					<tr>
						</c:if>
				</c:forEach> 		
					
					</tr>
					
				</table>
			</div>
		</div>
		<div class="footer">
			<%@include file="../include/includeFooter.jsp"%>
		</div>
	</div>





</body>
</html>