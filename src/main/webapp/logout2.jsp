<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>

		<meta charset="UTF-8">
		<title> 모든 세션 지우기 </title>

	</head>

<!-- -------------------------------BODY-------------------------------------- -->	

	<body>
		
		<%
		
			session.invalidate(); // 모든 세션 삭제
		
		%>
		
		<a href="sessionInfo.jsp">세션 정보 보기</a>
	</body>
	
</html>