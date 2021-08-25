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

.banner {
	width: 100%;
	height: 50px;
	background-size: 100% 50px;
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
	width: 800px;
	margin: auto;
	border-top: none;
	border-bottom: none;
	border-left: none;
	border-right: none;
	border-collapse: collapse;
	font-size: 14px;

}

tr.border_bottom td { 
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
#detail{
	text-decoration: underline;
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
	 
		<input type="hidden" name="reportedNum" value="${reportCommand.reportedNum }"> 
		 
		<form:form modelAttribute="reportFinish">	
		<div class="leg">
			<div class="banner"></div>		 
			<div class="contents">
			  	<table border=1>
					<tr class="border_bottom_th">					
						<td colspan="4"><h2>신고번호 [${reportCommand.reportedNum }]</h2></td>
					</tr> 
					   <tr><th>신고자ID</th>
                        	<td colspan="2">${reportCommand.reporter }</td></tr>
                       <tr><th>피신고자ID</th>
                        	<td colspan="2">${reportCommand.memId }</td></tr>
                       <tr><th>상품번호</th>
                     	  <td colspan="2"><c:if test="${reportCommand.prodNum == 0}">
								해당없음
							</c:if>
							<c:if test="${reportCommand.prodNum != 0}">
								${reportCommand.prodNum }
							</c:if> 
                        	 </td></tr>	                        	
                       <tr><th>신고사유</th>
                      		<td colspan="2">${reportCommand.reportedReason }</td></tr>    
                       <tr><th>신고 상세 사유</th>
                        	<td colspan="2">${reportCommand.reportedReasonDetail }</td></tr>	
                       <tr><th>신고일</th>
                        	<td colspan="2">
                        	<fmt:formatDate value="${reportCommand.reportDate }" type="date" pattern="yyyy-MM-dd  HH:mm:ss" /></td></tr>	
                       <tr><th>신고 처리일</th>
                        	<td colspan="2">
                        	<fmt:formatDate value="${reportCommand.reportFinishDate }" type="date" pattern="yyyy-MM-dd  HH:mm:ss" /></td></tr>	
                       <tr><th>신고 처리자</th>
                        	<td colspan="2">${reportCommand.empId }</td></tr>	
                       <tr><th>신고 결과</th>
                       <td colspan="2" style="font-weight: bold;">
                       	<c:if test="${reportCommand.reportState == 1}">
								신고접수 완료
						</c:if>
                        <c:if test="${reportCommand.reportState != 1}">
								신고 반려
						</c:if>	 
						</td></tr>	  
					<tr> <td colspan="4">
						<input type="button" value="신고리스트로 돌아가기" class="btn" style="display: inline-block" onclick="javascript:location.href='reportPage'"> 
						
					</td></tr>	
				</table>
  
			</div> 
		</div> 
		</form:form>
		<div class="footer">
			<%@include file="../include/includeFooter.jsp"%>
		</div>
	</div>
     
 
</body>
</html>