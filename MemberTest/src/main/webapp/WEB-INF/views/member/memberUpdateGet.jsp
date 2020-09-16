<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../include/header.jsp" />
<title>회원정보 수정</title>
</head>
<body>
<h1>회원정보 수정</h1>
<form action="update" method="post">
회원번호:<input type="text" name="mno" value="${member.mno}" readonly><br>
이름:<input type="text" value="${member.mname}" name="mname"><br>
E-MAIL:<input type="text" value="${member.email}" name="email"><br>
비밀번호:<input type="password" value="${member.pwd}" name="pwd"><br>
<input type="submit" value="수정">
<input type="reset" value="취소">
<input type="button" onclick="location.href='list'" value="목록">
</form>
<jsp:include page="../include/footer.jsp" />
</html>