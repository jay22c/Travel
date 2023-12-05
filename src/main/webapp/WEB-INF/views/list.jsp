<%--
  Created by IntelliJ IDEA.
  User: ijunjae
  Date: 2023/12/02
  Time: 11:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>


<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>자유게시판</h1>
<table id="list" width="90%">
  <tr>
    <th>Id</th>
    <th>Category</th>
    <th>Title</th>
    <th>Writer</th>
    <th>Content</th>
    <th>Regdate</th>
    <th>Edit</th>
    <th>Delete</th>
  </tr>

  <c:forEach items="${list}" var="u">
  <tr>
    <td>${u.seq()}</td>
    <td>${u.category()}</td>
    <td>${u.title()}</td>
    <td>${u.writer()}</td>
    <td>${u.content()}</td>
    <td>${u.regdate()}</td>
    <td><a href="editform/${u.Seq()}">글수정</a></td>
    <td><a href="javascript:delete_ok('${u.seq()}')">글삭제</a></td>
  </tr>
  </c:forEach>
</table>

<button type="button" onclick="location.href='addpostform'">새글쓰기</button>
</body>
</html>
