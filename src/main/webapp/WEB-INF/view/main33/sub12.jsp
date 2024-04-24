<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        table, tr, th, td {
            border-collapse: collapse;
            border: 1px solid black;
        }
    </style>
</head>
<body>
<h3>my_table12 자료</h3>
<form action="" method="post">
    <div>
        제목
        <input type="text" value="제목" name="title">
    </div>
    <div>
        이름
        <input type="text" value="이름" name="name">
    </div>
    <div>
        나이
        <input type="number" value="나이" name="age">
    </div>
    <div>
        가격
        <input type="number" value="가격" name="price">
    </div>
    <div>
        출판날짜
        <input type="date" value="2020-01-01" name="published">
    </div>
    <div>
        인쇄날짜
        <input type="datetime-local" value=2020-01-01T12:10:10" name="inserted">
    </div>
    <div>
        <input type="submit" value="전송">
    </div>
</form>
<hr>

<h3>my_table10 레코드들</h3>
<table>
    <thead>
    <tr>
        <th>title</th>
        <th>name</th>
        <th>age</th>
        <th>price</th>
        <th>published</th>
        <th>inserted</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${ciu}" var="item">
        <tr>
            <td>${item.title}</td>
            <td>${item.name}</td>
            <td>${item.age}</td>
            <td>${item.price}</td>
            <td>${item.published}</td>
            <td>${item.inserted}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
