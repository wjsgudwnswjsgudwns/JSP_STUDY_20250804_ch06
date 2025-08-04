<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>

		<meta charset="UTF-8">
		<title> 세션 유효 시간 </title>

	</head>

<!-- -------------------------------BODY-------------------------------------- -->	

	<body>
		<%
		
		int s_time = session.getMaxInactiveInterval(); // 현재 세션 유효시간 가져오기(초 단위)
		out.println("세션의 유효 시간 : " + s_time + "초 <br>");
		out.println("세션의 유효 시간 : " + (s_time/60) + "분" + (s_time%60) + "초");
		out.println("<hr>");
		session.setMaxInactiveInterval(157); // 세션 유효 시간 설정(초 단위) ->2분으로 변경
		s_time = session.getMaxInactiveInterval(); // 현재 세션 유효시간 가져오기(초 단위)
		out.println("변경된 세션의 유효 시간 : " + s_time + "초 <br>");
		out.println("변경된 세션의 유효 시간 : " + (s_time/60) + "분" + (s_time%60) + "초");
		
		%>
		
		
	</body>
	
</html>