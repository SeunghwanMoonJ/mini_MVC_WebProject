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
body {
	margin: 0;
}
ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
	position: fixed;
	top: 0;
	width: 100%;
}
li {
	float: left;
}
li a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}
.act {
	background-color: #C8BAB3;
}
li a:hover:not(.act) {
	background-color: black;
	
}
.section {
	
	margin-top: 40px;
	padding: 10px;

}
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
			<th width="150px">번호</th>
			<td width="300px">${empty resData.c_no ? '데이터 없음' : resData.c_no}</td>
		</tr>
		<tr>
			<th>이름</th>
			<td>${empty resData.c_name ? '데이터 없음' : resData.c_name}</td>
		</tr>
		<tr>
			<th>나이</th>
			<td>${empty resData.c_age ? '데이터 없음' : resData.c_age}</td>
		</tr>
		<tr>
			<th>성별</th>
			<td>${empty resData.c_age ? '데이터 없음' : resData.c_gender}</td>
		</tr>
		<tr>
			<th>주민등록번호</th>
			<td>${empty resData.c_age ? '데이터 없음' : resData.c_ssn}</td>
		</tr>
		<tr>
			<th>과거병력</th>
			<td>${empty resData.c_age ? '데이터 없음' : resData.c_dis}</td>
		</tr>
		<tr>
			<th>진료기록</th>
			<td>${empty resData.c_age ? '데이터 없음' : resData.c_imp}</td>
		</tr>
		<tr>
			<th>진료날짜</th>
			<td>${empty resData.c_date ? '데이터 없음' : resData.c_date}</td>
		</tr>
	</table>
</div>
</body>
</html>




