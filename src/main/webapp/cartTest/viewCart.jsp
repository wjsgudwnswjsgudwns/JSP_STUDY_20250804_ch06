<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>

		<meta charset="UTF-8">
		<title> 장바구니 </title>

	</head>

<!-- -------------------------------BODY-------------------------------------- -->	

	<body>
		
		<h2>내 장바구니</h2>
		<hr>
		
		<%
		
			ArrayList<String> cart = (ArrayList<String>) session.getAttribute("cart");
			// 세션에 들어있는 상품 목록 cart 가져오기 (ArrayList<String>)
			
			for (String product : cart) {
				out.println("* " + product + "<br>");
			}
		
		%>
		
	</body>
	
</html>