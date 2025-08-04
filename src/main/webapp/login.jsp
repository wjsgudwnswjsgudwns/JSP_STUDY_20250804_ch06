<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>

		<meta charset="UTF-8">
		<title> 로그인 </title>

	</head>

<!-- -------------------------------BODY-------------------------------------- -->	

	<body>
		
		<form action="loginOk.jsp">
			아이디 : <input type="text" name="id"><br>
			패스워드 : <input type="password" name="password"><br>
			<input type="submit" value="로그인">
		</form>
		<hr>
		<a href="loginUser.jsp">로그인한 유저 페이지</a>
	</body>
	
</html>