<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>직원 조회</h3>
<div>
    <form action="/main25/sub1">
        이름 :
        <input type="text" name="name" placeholder="조회할 이름을 입력하세요">
        <input type="submit" value="조회">
    </form>
</div>
<hr>
<c:forEach items="${employees}" var="employees">
    <div>
        <h4>${employees.id}번 직원</h4>
    </div>
    <div>
        <p>이름 : ${employees.firstName} ${employees.lastName}</p>
    </div>
    <div>
        <p>생일 :
            <input readonly type="date" value="${employees.birthDate}">
        </p>
    </div>
    <div>
        <p>
            사진 : ${employees.photo}
        </p>
    </div>
    <div>
        노트 :
        <textarea readonly rows="10" cols="30">${employees.notes}</textarea>
    </div>
    <hr>
</c:forEach>
</body>
</html>
