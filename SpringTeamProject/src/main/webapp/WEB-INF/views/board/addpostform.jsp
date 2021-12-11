<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Form</title>
</head>
<body>

<h1>새 항목 추가하기</h1>
<form action="addok" method="post">
	<table id="edit">
		<tr><td>카테고리</td><td><input type="text" name="category"/></td></tr>
		<tr><td>음식 이름</td><td><input type="text" name="name"/></td></tr>
		<tr><td>유통기한</td><td><input type="date" name="expiredDate"/></td></tr>
		<tr><td>설명</td><td><textarea cols="50" rows="5" name="detail"></textarea></td></tr>
		
	</table>
	<button type="button" onclick="location.href='list'">목록보기</button>
	<button type="submit">등록하기</button>
</form>

</body>
</html>