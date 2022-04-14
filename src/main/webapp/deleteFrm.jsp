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

<title>환자 정보 삭제</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
</head>
<body>
<div>
	<ul>
		<li><a href="./index">처음으로</a></li>
		<li><a href="./inputFrm">진료 작성</a></li>
		<li><a href="./outList">전체 진료 출력</a></li>
		<li><a href="./searchFrm">코드별 진료 검색</a></li>
		<li><a href="./updateFrm">진료 기록 수정</a></li>
		<li><a href="./deleteFrm" class="act">환자 정보 삭제</a></li>
		<li><a href="./logout">로그아웃</a></li>
	</ul>
</div>
<div class="section">
	<div id="box">
		<form action="./dDelete" onsubmit="return check()">
			<p>코드입력 : <input type="text" name="c_no"></p>
			<p><input type="submit" value="삭제"></p>
		</form>
	</div>
</div>
</body>
  <script type="text/javascript">
function check(){
	var isOk = confirm("삭제할까요?");
	
	if(isOk == true){
		alert("삭제합니다.");
		return true;
		location.href = "deleteFrm.jsp"
	}
	else {
		alert("취소했습니다.");
		return false;
	}	
}
</script>
</html>





