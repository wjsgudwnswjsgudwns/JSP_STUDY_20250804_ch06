<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>

		<meta charset="UTF-8">
		<title> 로그인 확인 </title>

	</head>

<!-- -------------------------------BODY-------------------------------------- -->	

	<body>
		
		<%
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		
		if(id.equals("tiger") && pw.equals("12345")){ // 참이면 로그인 성공
			
			session.setAttribute("memberId", id); // (세션이름(작명), 세션에 저장할 로그인한 유저의 아이디값)
			session.setAttribute("sessoinFlag", "yes"); // 로그인 상태인지 아닌지만 확인하고 싶다.
			
			long current_loginTime = System.currentTimeMillis(); // 현재 시간
			session.setAttribute("loginTime", current_loginTime);
			
			response.sendRedirect("loginSuccess.jsp"); // 로그인 성공시 강제 이동 시킬 페이지
		} else {
			System.out.println("로그인 실패");
			response.sendRedirect("login.jsp"); // 로그인 실패시 첫 화면으로 강제 이동
		}
		%>
		
	</body>
	
</html>