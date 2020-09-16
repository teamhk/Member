<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../include/header.jsp" />
<title>회원 등록</title>
</head>
<body>
<h1>회원 가입</h1>
<form action="register" method="post"><br>
이름:<input type="text" name="mname"><br>
E-MAIL:<input type="text" name="email"><br>
비밀번호:<input type="password" name="pwd"><br>
<input type="submit" value="추가">
<input type="button" onclick="location.href='list'" value="취소"> 
</form>
<jsp:include page="../include/footer.jsp" />
</html>