<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<script type="text/javascript">
var idv = "${adminid}";

if (idv == "") {
	alert("관리자만 접근 가능합니다.");
	location.href = "first_login.jsp"
}
</script>

<title>데이터 입력</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
<style type="text/css">
table {
	background-color: rgba(255,255,255,0.5);
	margin: 0 auto;
	margin-top: 50px;
}
tr {
	height: 30px;
}
</style>
</head>
<body>
<div>
	<ul>
		<li><a href="./index">처음으로</a></li>
		<li><a href="./inputFrm">진료 작성</a></li>
		<li><a href="./outList">전체 진료 출력</a></li>
		<li><a href="./searchFrm">코드별 진료 검색</a></li>
		<li><a href="./updateFrm" class="act">진료 기록 수정</a></li>
		<li><a href="./deleteFrm" >환자 정보 삭제</a></li>
		<li><a href="./logout">로그아웃</a></li>
	</ul>
</div>
<div class="section">
	<div id="box">
		<form action="./dUpdate">
			<p>번호입력 : <input type="text" name="c_no"></p>
			<p><input type="submit" value="검색"></p>
		</form>
		<c:if test="${!empty upData}">
		<form action="upproc.jsp" method="post">
			<table>
				<tr>
					<th width="100">번호</th>
					<td width="200">
						<input type="number" name="c_no"
							value="${upData.c_no}" readonly>
					</td>
				</tr>
				<tr>
					<th>진료기록</th>
					<td>
						<input type="text" name="c_imp" 
							value="${upData.c_imp}" required>
					</td>
				</tr>
				<tr>
					<th>진료 날짜</th>
					<td>
						<input type="date" name="c_date" 
							value="${upData.c_date}" required>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="전송">
					</td>
				</tr>
			</table>
		</form>
		</c:if>
	</div>
</div>
</body>
</html>





