<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>

		<meta charset="UTF-8">
		<title> 세션 정보 </title>

	</head>

<!-- -------------------------------BODY-------------------------------------- -->	

	<body>
		
		<h2>세션 정보 확인</h2>
		<hr>
		
		<%
		
			Enumeration sessionEnum = session.getAttributeNames(); // 세션의 정보를 반환 -> 열거형으로 반환
			// arraylist랑 비슷, 하나씩 뺄때 whlie문 사용
			
			while (sessionEnum.hasMoreElements()) {
				String sName = (String) sessionEnum.nextElement().toString();
				String sValue = session.getAttribute(sName).toString();
				// 객체 안에 있는 문자열을 빼서 반환
				
//				String sValue2 = (String) session.getAttribute(sName); // 문자가 들어있는 객체를 반환 하려고 하기 때문에 에러가 난다(??)
				
				out.println(sName + " : " + sValue + "<br>");
			}
		
			String session_id = session.getId();
			// 접속한 브라우저 별로 매칭되는 고유 ID
			out.println("session의 고유 아이디 : " + session_id); 
			
		%>
		<hr>
		<a href="loginUser.jsp">로그인 유저 페이지</a>
		<br>
		<a href="logout.jsp">로그아웃</a>
		
	</body>
	
</html>