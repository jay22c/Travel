<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.example.Board.BoardDAO, com.example.Board.BoardVO"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

<%
	BoardDAO boardDAO = new BoardDAO();
	String id=request.getParameter("id");
	BoardVO u=boardDAO.getBoard(Integer.parseInt(id));
%>

<h1>Edit Form</h1>
<%--@elvariable id="BoardVO" type=""--%>
<form:form commandName="BoardVO" method="POST" action="../editok">
<form:hidden path="seq"/>
<table id="edit">
<tr><td>카테고리</td><td><input type="text" path="category" value="<%= u.getCategory()%>"/></td></tr>
<tr><td>제목</td><td><input type="text" path="title" value="<%= u.getTitle()%>"/></td></tr>
<tr><td>글쓴이</td><td><input type="text" path="writer" value="<%= u.getWriter()%>" /></td></tr>
<tr><td>내용</td><td><textarea cols="50" path="5" name="content"><%= u.getContent()%></textarea></td></tr>
</table>
	<input type="submit" value="수정하기"/>
	<input type="button" value="취소하기" onclick="history">
</form:form>

</body>
</html>