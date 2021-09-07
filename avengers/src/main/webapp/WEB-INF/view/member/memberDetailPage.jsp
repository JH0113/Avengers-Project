<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/includeTags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> 
 


멤버 아이디와 닉네임 ${memberDTO.memId } / ${memberDTO.memNick }
판매중인 상품 
좋아요(찜 개수)  
신고 횟수 ${memberDTO.memReportedCount }

<c:forEach items="${list }" var="dto">

${dto.prodNum}
${dto.prodName}


</c:forEach>


</body>
</html>