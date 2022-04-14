<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<fmt:requestEncoding value="UTF-8"/>
<jsp:useBean id="mdata" class="com.dto.mDto" scope="request" />
<jsp:setProperty property="*" name="mdata"/> 
<jsp:forward page="./register"/>