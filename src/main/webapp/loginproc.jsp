<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 자바빈 클래스 import -->
<%@ page import ="com.dto.mDto" %>
<!-- DAO import -->
<%@ page import ="com.dao.mDao" %>

<fmt:requestEncoding value="UTF-8"/>
<jsp:useBean id="mdata" class="com.dto.mDto" />
<jsp:setProperty property="*" name="mdata"/> 
<jsp:forward page="./register"/>


<head>
    <title>회원가입 처리</title>
</head>
<body>

    <%-- loginFrm.jsp에서 입력한 정보를 넘겨 받아 처리한다. --%>
    <%-- 
        // 한글 깨짐을 방지하기 위한 인코딩 처리
        request.setCharacterEncoding("UTF-8"); 
    --%>
    
    <%-- 자바빈 관련 액션태그 사용 --%>
     
    
    <%--
    	mDao dao = new mDao();
        dao.insertid(mdata);
    --%>
    
    <div id="wrap">
        <br><br>
        <b><font size="5" color="gray">회원가입 정보를 확인하세요.</font></b>
        <br><br>
        <font color="blue"><%=mdata.getName() %></font>님 가입을 축하드립니다.
        <br><br>
        
        <%-- 자바빈에서 입력된 값을 추출한다. --%>
        <table>
            <tr>
                <td id="title">아이디</td>
                <td><%=mdata.getId() %></td>
            </tr>
                        
            <tr>
                <td id="title">비밀번호</td>
                <td><%=mdata.getPass() %></td>
            </tr>
                    
            <tr>
                <td id="title">이름</td>
                <td><%=mdata.getName() %></td>
            </tr>
                    
             <tr>
                <td id="title">나이</td>
                <td><%=mdata.getAge()%></td>
            </tr>
            
             <tr>
                <td id="title">성별</td>
                <td><%=mdata.getGender()%></td>
            </tr>
        </table>
        
        <br>
        <input type="button" value="확인">
    </div>
</body>
</html>








