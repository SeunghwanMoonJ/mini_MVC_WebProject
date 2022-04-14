<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 출력 화면</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
<script type="text/javascript">
var idv = "${ids}";

if (idv == "") {
	alert("로그인 하세요!");
	location.href = "first_login.jsp"
}
</script>
<style type="text/css">

</style>
</head>
<body>
<div class="section">
</div>
<div>
	<ul>
		<li><a href="./mini_outList" class="act">전체 진료 출력</a></li>
		<li><a href="./mini_searchFrm">코드별 진료 검색</a></li>
		<li><a href="./logout">로그아웃</a></li>
	</ul>
</div>


</body>
</html>




