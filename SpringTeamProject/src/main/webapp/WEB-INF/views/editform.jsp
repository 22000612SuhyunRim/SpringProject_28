<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.my.myapp.board.BoardDAO, com.my.myapp.board.BoardVO"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

<h1>항목 수정</h1>
<form:form commandName="boardVO" method="POST" action="../editok">
	<form:hidden path="id" />
	<table id="edit">
		<tr><td>카테고리</td><td><form:input path="category"/></td></tr>
		<tr><td>음식이름</td><td><form:input path="name"/></td></tr>
		<tr><td>유통기한</td><td><form:input path="expiredDate"/></td></tr>
		<tr><td>설명</td><td><form:textarea cols="50" rows="5" path="detail"/></td></tr>
	
	</table>
	<input type="submit" value="수정하기"/>
	<input type="button" value="취소하기" onclick="history.back()"/>
</form:form>
</body>
</html>