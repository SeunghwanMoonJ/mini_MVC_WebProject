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
<title>진료 출력 화면</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
<style type="text/css">
table {
	background-color: white;
	margin: 0 auto;
	margin-top: 50px;
}
</style>
</head>
<body>
<div>
	<ul>
		<li><a href="./mini_outList" class="act">전체 진료 출력</a></li>
		<li><a href="./mini_searchFrm">코드별 진료 검색</a></li>
		<li><a href="./logout">로그아웃</a></li>
	</ul>
</div>
<div class="section">
	<table border="1">
		<tr>
			<th width="50">번호</th>
			<th width="100">이름</th>
			<th width="50">나이</th>
			<th width="40">성별</th>
			<th width="200">주민등록번호</th>
			<th width="300">과거병력</th>
			<th width="300">진료기록</th>
			<th width="150">날짜</th>
		</tr>
		<c:forEach var="data" items="${dList}">
			<tr>
				<th><a href="./mini_outputData?c_no=${data.c_no}">${data.c_no}</a></th>
				<td>${data.c_name}</td>
				<td>${data.c_age}</td>
				<td>${data.c_gender}</td>
				<td>${data.c_ssn}</td>
				<td>${data.c_dis}</td>
				<td>${data.c_imp}</td>
				<td>${data.c_date}</td>
			</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>