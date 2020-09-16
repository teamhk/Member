<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function loadFnc() {
	var txt;
	var question=confirm("회원정보를 삭제하시겠습니까?");
	if(question==true) {
		document.getElementById("success").submit();
		//document.forms["success"].submit();
	} else {
		txt="회원정보 삭제를 취소하였습니다."
	}
	document.getElementById("cancel").innerHTML=txt;
}
window.onload=loadFnc;
</script>
</head>
<body>
<form id="success" action="delete" method="post">
<!-- 여기에서 mno를 꼭줘야 post에서 어떤애를 지우는지 받아서 지우는거할 수 있는거야,, 그래서 mno를 컨트롤러에서 파라메터로 다시 받는거지 -->
<input type="text" name="mno" value="${member.mno}">
</form>
<p id="cancel"></p>
<input type="button" onclick="location.href='list'" value="회원목록">
</body>
</html>