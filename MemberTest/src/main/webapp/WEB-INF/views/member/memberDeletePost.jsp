<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 삭제 결과</title>
<script>
	window.onload=function(){
		setTimeout(function(){
			window.location.href='list;'
		},5000);
	};
</script>
</head>
<body>
<h1>회원 삭제 결과</h1>
회원탈퇴가 완료되었습니다.<br>
3초 후 회원목록 페이지로 돌아갑니다. 바로 돌아가길 원하실 경우 아래 버튼을 눌러주십시오<br>
<input type="button" onclick="location.href='list'" value="회원 목록">
</body>
</html>