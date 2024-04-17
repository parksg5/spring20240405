<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        table, tr, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }

        table {
            width: 100%;
        }
    </style>
</head>
<body>
<h3>직원 조회</h3>
<form>
    <input value="${prevSearch}" type="text" name="search" placeholder="조회할 직원명 입력">
    <%--    form 내의 button 요소는 submit 버튼 역할함 --%>
    <button>조회</button>
</form>
<hr>

<c:if test="${empty employeesList}" var="emptyEmployees">
    <p>조회된 직원이 없습니다.</p>
</c:if>

<c:if test="${not emptyEmployees}">

    <table>
        <thead>
        <tr>
            <th>id</th>
            <th>lastname</th>
            <th>firstname</th>
            <th>birthdate</th>
            <th>photo</th>
            <th>notes</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${employeesList}" var="employees">
            <tr>
                <td>${employees.id}</td>
                <td>${employees.lastName}</td>
                <td>${employees.firstName}</td>
                <td>${employees.birthDate}</td>
                <td>${employees.photo}</td>
                <td>${employees.notes}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</c:if>

</body>
</html>
