<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 등록</title>
</head>
<body>
<h1>회원 가입</h1>
<form action="register" method="post">
이름:<input type="text" name="name">
E-MAIL:<input type="text" name="email">
비밀번호:<input type="password" name="password">
<input type="submit" value="추가">
<input type="button" onclick="location.href='list'" value="취소"> 
</form>
</body>
</html>