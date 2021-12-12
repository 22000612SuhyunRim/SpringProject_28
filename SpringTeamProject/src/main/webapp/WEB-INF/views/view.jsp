<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.my.myapp.board.BoardDAO, com.my.myapp.board.BoardVO"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View</title>
</head>
<body>

	<h1>List</h1>
	<h3>View</h3>
<form:form commandName="boardVO" method="POST">
	<form:hidden path="id" />
			<table id="edit">
			<tr><td>카테고리:</td><td><form:input type="text" path="category" /></td></tr>
			<tr><td>음식 이름:</td><td><form:input type="text" path="name" /></td></tr>
			<tr><td>유통기한:</td><td><form:input type="text" path="expiredDate" /></td></tr>
			<tr><td>타입:</td><td><form:input type="text" path="type" /></td></tr>
			<tr><td>설명:</td><td><form:input type="text" path="detail" /></td></tr>
		</table>

	<input type="button" value="Okay" onclick="history.back()"/>
</form:form>
</body>
</html>