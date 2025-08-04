<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>

		<meta charset="UTF-8">
		<title> 로그인한 유저 페이지 </title>

	</head>

<!-- -------------------------------BODY-------------------------------------- -->	

	<body>
		
		<%
		
			String sid = (String) session.getAttribute("memberId");
			//세션에서 로그인한 유저만 가지고 있는 memberId 값 가져오기
			
			
			if(sid != null){ // 참->로그인한 상태, 거짓->로그인 안된 상태
				out.println("이 글은 로그인한 사람만 보입니다. <br>");
				out.println(sid + "님이 로그인 하셨습니다.");
			} else {
				out.println("이 글은 로그인하지 않은 사람에게만 보입니다.");
			}
		
		%>
		<br><br>
		<a href="sessionKeep.jsp">세션 유지 시간 정보 보기</a>
		<br><br>
		<a href="sessionInfo.jsp">세션 정보 바로가기</a>
		<br><br>
		<a href="logout2.jsp">로그아웃</a>
		
	</body>
	
</html>