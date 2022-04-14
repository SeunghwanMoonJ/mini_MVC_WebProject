<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
<style type="text/css">
table {
	margin: 0 auto;
	margin-top: 30px;
}
tr {
	height: 30px;
}
</style>
</head>
<body>
<div>
	<ul>
		<li><a href="./first_login">로그인</a></li>
		<li><a href="./loginFrm" class="act">회원 가입</a></li>
	</ul>
</div>
<div class="section">
	<div id="box">
		<h1>회원가입</h1>
		<form action="login2.jsp" method="post" onsubmit="return check()" name="userInfo">
		  <table>
                <tr>
                    <td id="title">아이디</td>
                    <td>
                        <input type="text" name="id" maxlength="25">
                    </td>
                </tr>
                        
                <tr>
                    <td id="title">비밀번호</td>
                    <td>
                        <input type="password" name="pass" maxlength="50">
                    </td>
                </tr>
                
                <tr>
                    <td id="title">비밀번호 확인</td>
                    <td>
                        <input type="password" name="passcheck" maxlength="50">
                    </td>
                </tr>
                    
                <tr>
                    <td id="title">이름</td>
                    <td>
                        <input type="text" name="name" maxlength="25">
                    </td>
                </tr>
                
                <tr>
                    <td id="title">나이</td>
                    <td>
                        <input type="number" name="age">
                    </td>
                </tr>
                    
                <tr>
                    <td id="title">성별</td>
                    <td>
                        <input type="radio" name="gender" value="남" checked>남
                        <input type="radio" name="gender" value="여" >여
                    </td>
                </tr>
            </table>
			 
           <input type="submit" value="가입"/>  <input type="button" value="취소"> 

		</form>
	</div>
</div>
</body>

<script type="text/javascript">
//필수 입력 정보인 아이디, 비밀번호가 입력되었는지 확인하는 함수
function check(){
	if(!document.userInfo.id.value) {
		alert("아이디를 입력하세요.");
		return false;
	}
	if(!document.userInfo.pass.value) {
		alert("비밀번호를 입력하세요.");
		return false;
	}
	// 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
	if(document.userInfo.pass.value != document.userInfo.passcheck.value ){
		alert("비밀번호를 동일하게 입력하세요");
		return false;
	}
}
</script>
</html>