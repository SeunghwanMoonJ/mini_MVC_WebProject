<%@page import="com.dao.mDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <c:set var="id" value="${param.id}" scope="session"/>
<c:set var="pass" value="${param.pass}" scope="session"/> --%>
<%
String idstr = request.getParameter("id");
String pwstr = request.getParameter("pass");
mDao md = new mDao();

if(idstr.equals("admin")){
	if(pwstr.equals("admin")){//로그인 성공
		session.setAttribute("adminid", idstr);
		response.sendRedirect("index.jsp");
	}
/* 	else {
		response.sendRedirect("login_check.jsp");
	} */
}
else if( md.checkUser(idstr, pwstr) == 1 ){
	System.out.println( idstr );
	System.out.println( pwstr );
	session.setAttribute("ids", idstr);
	response.sendRedirect("mini_index.jsp");
}
out.print( "아이디, 비밀번호 확인하세요." );
/* response.sendRedirect("first_login.jsp");
 */
%>
