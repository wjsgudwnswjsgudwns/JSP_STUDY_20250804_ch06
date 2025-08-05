<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>

		<meta charset="UTF-8">
		<title> 상품 추가 </title>

	</head>

<!-- -------------------------------BODY-------------------------------------- -->	

	<body>
		
		<%
		
			request.setCharacterEncoding("UTF-8");
		
			String product = request.getParameter("product"); // 장바구니에 넣을 물건

//			session.setAttribute("cart1", product); 
//		1.	스마트폰을 담으면 cart1이라는 곳에 스마트폰이 넣어지고, 후에 노트북을 또 담으면 cart1에 스마트폰이 지워지고 노트북이 담김.
//		1.	그래서 Object에 배열을 써준다.

			ArrayList<String> cart = (ArrayList<String>) session.getAttribute("cart"); 
// 		3. 	기존에 세션에 cart(ArrayList 타입)이 존재하면 가져오기
//		4.	첫번째 장바구니에 삽입시 cart -> null -> ArrayList<String> cart = null;

			if (cart == null) {					// cart가 null 일때 
				cart = new ArrayList<String>(); // ArrayList 새로 생성
			}

//			List<String> cart = new ArrayList<String>(); 
// 		2. 	새 장바구니 생성

			cart.add(product); // 상품 추가
			
			session.setAttribute("cart", cart); 
// 		2.	세션에 상품 목록 저장
//		2.	문제는 두번째 상품을 넣을 때부터 새로운 배열을 또 만들기 때문에
			
		%>
		
		<h2>장바구니에 <%= product %>이(가) 추가 되었습니다.</h2>
		
		<a href="productList.jsp">상품 더 보기</a><br>
		<a href="viewCart.jsp">장바구니 보기</a>
		
	</body>
	
</html>