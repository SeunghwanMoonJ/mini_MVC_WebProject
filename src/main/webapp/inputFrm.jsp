<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 입력</title>
<link type="text/css" rel="stylesheet" href="css/style.css">

<script type="text/javascript">
var idv = "${adminid}";

if (idv == "") {
	alert("관리자만 접근 가능합니다.");
	location.href = "first_login.jsp"
}
</script>
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
		<li><a href="./inputFrm" class="act">진료 작성</a></li>
		<li><a href="./outList">전체 진료 출력</a></li>
		<li><a href="./searchFrm">코드별 진료 검색</a></li>
		<li><a href="./updateFrm">진료 기록 수정</a></li>
		<li><a href="./deleteFrm">환자 정보 삭제</a></li>
		<li><a href="./logout">로그아웃</a></li>
	</ul>
</div>
<div class="section">
<form action="inproc.jsp" method="post">
	<table>
		<tr>
			<th width="100">번호</th>
			<td width="200">
				<input type="number" name="c_no" required>
			</td>
		</tr>
		<tr>
			<th>이름</th>
			<td>
				<input type="text" name="c_name" required>
			</td>
		</tr>
		<tr>
			<th>나이</th>
			<td>
				<input type="number" name="c_age" required>
			</td>
		</tr>
		<tr>
			<th>성별</th>
			<td>
				<input type="text" name="c_gender" required>
			</td>
		</tr>
		<tr>
			<th>주민등록번호</th>
			<td>
				<input type="text" name="c_ssn" required>
			</td>
		</tr>
		<tr>
			<th>과거병력</th>
			<td>
				<input type="text" name="c_dis" required>
			</td>
		</tr>
		<tr>
			<th>진료기록</th>
			<td>
				<input type="text" name="c_imp" required>
			</td>
		</tr>
		<tr>
			<th>진료날짜</th>
			<td>
				<input type="date" name="c_date" required>
			</td>
		</tr>
		<tr>
			<td colspan="2" style="text-align: center;">
				<input type="submit" value="전송">
			</td>
		</tr>
	</table>
</form>
</div>
</body>
</html>





