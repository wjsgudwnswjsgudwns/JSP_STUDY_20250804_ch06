<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>

		<meta charset="UTF-8">
		<title> 세션 유지 시간 </title>

	</head>

<!-- -------------------------------BODY-------------------------------------- -->	

	<body>
		
		<%
		
			String session_id = session.getId();
			long last_time = session.getLastAccessedTime(); // 마지막 세션 접근 시간 (밀리세컨드 단위)
			long start_time = session.getCreationTime(); // 세션이 생성된 시간 (밀리세컨드 단위)
			long keep_time = (last_time - start_time) / 1000; // 초 단위로 출력
			
			out.println("세션 아이디 : " + session_id + "<br>");
			out.println("세션 지속 시간 : " + (keep_time/60) + "분" + (keep_time%60) + "초");
			
			out.println("<hr>");
			
			long current_time = System.currentTimeMillis();
			long keep_time2 = (current_time - start_time) / 1000;
			out.println("세션 생성 후 경과 시간 : " + (keep_time2/60) + "분" + (keep_time2%60) + "초");
			
			out.println("<hr>");
			long loginTime = (long) session.getAttribute("loginTime");
			long keep_time3 = (current_time - loginTime) / 1000; //로그인 성공후 경과 시간
			out.println("로그인 성공 후 경과 시간 : " + (keep_time3/60) + "분" + (keep_time3%60) + "초");
		%>
		
	</body>
	
</html>