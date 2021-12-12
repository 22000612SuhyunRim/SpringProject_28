<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.my.myapp.board.BoardDAO, com.my.myapp.board.BoardVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List</title>
<style>
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #006bb3;
  color: white;
}
</style>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='deleteok/' + id;
	}
</script>
</head>
<body>
<h1>게시판</h1>
<p>관리자 님 안녕하세요~! <a href="login/logout">로그아웃</a></p>
<table id="list">
<tr>
	<th>Id</th>
	<th>카테고리</th>
	<th>음식 이름</th>
	<th>유통기한</th>
	<th>추가설명</th>
	<th>타입</th>
	<th>등록일</th>
	<th>보기</th>
	<th>수정</th>
	<th>삭제</th>
</tr>
<c:forEach items="${list}" var="u">

	<tr>
	
		<td>${u.id}</td>
		<td>${u.category}</td>
		<td>${u.name}</td>
		
		
		<fmt:formatDate value="${u.expiredDate}" pattern="yyyy/MM/dd" var="exDate"/>
		<fmt:formatDate value="<%=new java.util.Date() %>" pattern="yyyy/MM/dd" var="now"/>
			
		<c:choose>
			<c:when test = "${exDate <= now}">
				<td style="color:red;"><fmt:formatDate value="${u.expiredDate}" pattern="yyyy/MM/dd"/></td>
			</c:when>
			<c:otherwise>
				<td><fmt:formatDate value="${u.expiredDate}" pattern="yyyy/MM/dd"/></td>
			</c:otherwise>
		</c:choose>
		
		<td>${u.detail}</td>
		<td>${u.type}</td>
		
		<td><fmt:formatDate value="${u.regdate}" pattern="yyyy/MM/dd"/></td>
		<td><a href="view/${u.id}">보기</a></td>
		<td><a href="editform/${u.id}">수정</a></td>
		<td><a href="javascript:delete_ok('${u.id}')">삭제</a></td>
	</tr>
</c:forEach>
</table>
<br/><button type="button" onclick="location.href='add'">새글쓰기</button>

</body>
</html>