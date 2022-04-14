<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
var idv = "${ids}";

if (idv == "") {
	alert("로그인 하세요!");
	location.href = "first_login.jsp"
}
</script>
<title>데이터 출력 화면</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
</head>
<body>
<div>
	<ul>
		<li><a href="./mini_outList">전체 진료 출력</a></li>
		<li><a href="./mini_searchFrm" class="act">코드별 진료 검색</a></li>
		<li><a href="./logout">로그아웃</a></li>
		
	</ul>
</div>
<div class="section">
	<div id="box">
		<form action="./mini_dSear">
			<p>코드입력 : <input type="text" name="c_no"></p>
			<p><input type="submit" value="검색"></p>
		</form>
	</div>
</div>
</body>
</html>




