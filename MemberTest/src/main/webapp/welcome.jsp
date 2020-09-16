<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>환영합니다</title>
</head>
<body>
	멤버 페이지에 온것을 환영합니다. 3초뒤 리스트로 이동됩니다.<br>
	<a href="member/list">지금 리스트로 이동사려면 눌러주세요</a>
<script>
	setTimeout(function() {window.location='member/list';}, 3000);
</script>
	
</body>
</html>