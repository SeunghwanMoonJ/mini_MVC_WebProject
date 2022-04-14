<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="UTF-8"/>
<jsp:useBean id="data" class="com.dto.DataDto" scope="request"/>
<jsp:setProperty property="*" name="data"/>
<jsp:forward page="./dInput"/>

<!-- https://m.blog.naver.com/PostView.naver?isHttpsRedirect=true&blogId=heartflow89&logNo=221006593791 -->