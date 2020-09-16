<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
</head>
<body>
<h1>회원 목록</h1>
<input type="button" onclick="location.href='register'" value="회원가입"><br>
<c:forEach var="member" items="${members}">
${member.mno}, ${member.mname}, ${member.email}, ${member.pwd}, 
<fmt:formatDate value="${cre_date}" pattern="yyyy-mm-dd"/>
<fmt:formatDate value="${mod_date}" pattern="yyyy-mm-dd"/>
<input type="button" onclick="location.href='update?mno=${member.mno}'" value="수정">
<input type="button" onclick="location.href='delete?mno=${member.mno}'" value="탈퇴">
<br>
</c:forEach>

</body>
</html>