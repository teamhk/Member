<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../include/header.jsp" />
<title>회원 등록</title>
<script>
	$().ready(function()){
		$("#checkEmail").change(function()) {
			var checkEmail=$("#checkEmail").val();

			$.ajax({
				url:'/member/rest/checkEmailJson',
				data:{
					email:checkEmail},
				dataType : 'text', /*html, text, json, xml, script*/
				method : 'get',
				success : function(data) {
					if ( data==0 ) {
						//alert("중복되지 않은 이메일");
						$("#checkResult").val("사용가능한 이메일입니다.");
					} else if ( data==1 ){
						//alert("중복된 이메일");
						$("#checkResult").val("이미 사용중인 이메일입니다.");
					} else {
						alert("에러");
						$("#checkResult").val("관리자에게 문의하세요.");
					}
				},
				error : function() {
					alert("ajax 에러");
				}
			})
		}
	}
</script>
</head>
<body>
	<h1>회원 가입</h1>
	<form action="register" method="post">
		 이름:<input type="text" name="mname"><br> 
		E-MAIL:<input type="text" id="checkEmail" name="email"><br>
		<input type="text" id="checkResult" size="50"> <br>
		비밀번호:<input type="password" name="pwd"><br> 
		<input type="submit" value="추가"> 
		<input type="button" onclick="location.href='list'" value="취소">
	</form>
	<jsp:include page="../include/footer.jsp" />
</html>