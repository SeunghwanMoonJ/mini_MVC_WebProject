<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="UTF-8"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
<style type="text/css">
table {
	margin: 0 auto;
	margin-top: 30px;
}
tr {
	height: 30px;
}
div#login {
	margin: 0 auto;
	text-align: center;
}
</style>
</head>
<body>
<div>
	<ul>
		<li><a href="./first_login"  class="act">로그인</a></li>
		<li><a href="./loginFrm">회원가입</a></li>
	</ul>
</div>

<div class="section">
<div class="login">
<form action="login_check.jsp" method="post">
<div id="login"><h3>로그인</h3>
</div>
	<table>
		<tr>
			<th width="100">아이디</th>
			<td width="200">
				<input type="text" name="id" required>
			</td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td>
				<input type="password" name="pass" required>
			</td>
		</tr>
		<tr>
			<td colspan="2" style="text-align: center;">
				<input type="submit" value="로그인">
			</td>
		</tr>
	</table>
</form>
</div>
</div>
</body>

<div class="section">
<c:if test="${!empty msg}">
	<script type="text/javascript">
		alert('${msg}');
	</script>
	<c:remove var="msg" scope="session"/>
</c:if>
</div>
</html>