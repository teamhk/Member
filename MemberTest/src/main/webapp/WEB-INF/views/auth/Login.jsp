<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
</head>
<body>
	<h1>방문을 환영합니다용</h1>

	<form action="login" method="post">
		<input type="text" name="email" placeholder="이메일 주소를 입력하세요"><br>

		<input type="password" name="pwd" placeholder="비밀번호를 입력하세요"><br>


		<input type="submit" value="로그인">

	</form>

</body>
</html>