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
	height: 910px;
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
	width: 80px;
	margin: auto;
	padding: 4px 0 4px;
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
#clickText:hover{
	font-weight: bolder;
	border-bottom: 1px solid;
}
 

</style> 
<script type="text/javascript">  
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
			
			
			
			<form action="reportSearch" method="get" id=frm onsubmit='return checkSubmitValue(this)'>
				 <div class=list_search_area>				 
					    <input type="text" placeholder="신고번호로 검색" id="reportSearch" name="keyword">			    
					    <button id="searchBtn" class="btn">검색</button>					
				 </div>
			 </form>
			 
			 <form:form action="reportFinish" name="frm" method="post" onsubmit="return confirm('신고를 접수하시겠습니까?')">
 			<input type="hidden" name="reportedNum" value="${dto.reportedNum }">
			
			<div class="contents">
			 
				<table>
					<tr class="border_bottom_th">
						<th width="120px">신고번호</th>
						<th width="110px">신고자ID</th>
						<th width="110px">피신고자ID</th>
						<th width="250px">신고사유</th>
						<th width="140px">상품번호</th> 	
						<th width="200px">신고일</th> 			
						<th width="260px">신고상태</th> 
					</tr>
					<c:forEach items="${reportPage }" var="dto">
					<input type="hidden" name="reportedNum" value="${dto.reportedNum }">
			
						<tr class="border_bottom">
							<td>${dto.reportedNum }</td>
							<td><a id="clickText" href="memberInfoPage?memId=${dto.reporter }"><span id="detail">${dto.reporter }</span></a></td>
							<td><a id="clickText" href="memberInfoPage?memId=${dto.memId }"><span id="detail">${dto.memId }</span></a></td>
							<td>
								[${dto.reportedReason }]
						 	</td>
						 
							<td>
							<c:if test="${dto.prodNum == 0}">
								해당없음
							</c:if>
							<c:if test="${dto.prodNum != 0}">
								${dto.prodNum }
							</c:if>
							</td>  
							<td>
							<fmt:formatDate value="${dto.reportDate }" type="date" pattern="yyyy-MM-dd  HH:mm:ss" />
							</td> 		
							<td> 
								<c:if test="${dto.reportState == 0}">
								<a id="clickText" href="reportDetailPage?reportedNum=${dto.reportedNum }"><span style="color: red">처리 전</span></a>
								</c:if>
								<c:if test="${dto.reportState != 0}">
								<a id="clickText" href="reportedNumDetail?reportedNum=${dto.reportedNum }">처리 완료 </a>
								</c:if>
								
								</td> 
							<td></td>
						</tr>
					</c:forEach>
					<tr>
						<td colspan="7" align="center">
						<%@include file="../include/includePage.jsp"%></td>
					</tr>
				</table>
				
			</div>
			</form:form>
		</div>

		<div class="footer">
			<%@include file="../include/includeFooter.jsp"%>
		</div>
	</div>
     
	 


 
</body>
 
</html>