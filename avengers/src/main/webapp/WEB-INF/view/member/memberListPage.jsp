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

}

tr.border_bottom td {
	font-size: 14px;
	border-bottom: 1px solid #e6e6e6;
}

tr.border_bottom_th {
	border-bottom: 3px solid #1a1a1a;
}

.btn {
	display: block;
	width: 70px;
	margin: auto;
	padding: 7px;
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
	width: 600px;
	height: 40px;
	margin: 20px;	
	padding: 10px;
	border: 2px;
}
#keyword{
	display: block;
	position: relative;
	width: 800px;
	height: 40px;
	padding-left: 20px;
	margin-right: 5px;
	font-size: 13px;
	box-sizing: border-box;
	z-index: 10;
	border: solid 1px #dadada;	
	}
select {
	width: 200px;
	height: 40px;
	padding: .8em .5em;
	border: solid 1px #dadada;
	font-size: 13px;
	font-family: 'Montserrat', sans-serif;
}
.list_search_area input {
	padding: 5px;
	width: 250px;
}
select::-ms-expand {
	display: none;
}
#mem:hover{
	font-weight: bolder;
	border-bottom: 1px solid;
}

</style>

<script type="text/javascript" >  
function checkSubmitValue(frm) {
	var e = frm.elements;
	  for ( var i = 0; i < e.length; i++ ) {
		    if ( e[i].tagName == 'INPUT'  && e[i].value == '' ) {
		      alert('검색할 값을 입력해주세요.');
		      return false;
		    }
		  }
		  return true;
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
			 
			<form name="frm" id=frm method="post" action="memberListPage" onsubmit='return checkSubmitValue(this)'>  
			 <div class=list_search_area align="center">		
			   <div class="select">
			   		<select name="search_option">
			        <option value="mem_Id"
						<c:if test="${search_option == 'memId'}">selected</c:if>>아이디</option>
			        <option value="mem_Nick" 
						<c:if test="${search_option == 'memNick'}">selected</c:if>>닉네임</option>
			        <option value="mem_Name" 
						<c:if test="${search_option == 'memName'}">selected</c:if>>이름</option>					
					<option value="" 
						<c:if test="${search_option == ''}">selected</c:if>>아이디+닉네임+이름</option>
			    	</select>
			    </div>
			     
			    <input name="keyword" value="${keyword}" placeholder="검색할 정보를 입력해주세요." id="keyword">
			    <input type="submit" value="조회" class="btn" id="searchBtn">
			    </div>
			</form>

			 
			<div class="contents">
				<table>
					<tr class="border_bottom_th">
						<th width="130px">회원아이디</th>
						<th width="160px">닉네임</th>
						<th width="140px">이름</th>
						<th width="510px">주소</th>
						<th width="150px">전화번호</th>					
						<th width="110px">신고누적</th>
					</tr>
					<c:forEach items="${memberListPage }" var="dto">
						<tr class="border_bottom">
							<td>
								<a id="mem" href="memberInfoPage?memId=${dto.memId }">${dto.memId }</a>
							</td>
							
							<td>${dto.memNick }</td>
							<td>${dto.memName }</td>
							<td>${dto.memAddr }, ${dto.memDetailAdd }</td>
							<td>${dto.memPhone }</td>
							<td>${dto.memReportedCount }</td>
							<td></td>
						</tr>
					</c:forEach>
					<tr>
						<td colspan="7" align="center">
						<%@include file="../include/includePage.jsp"%></td>
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