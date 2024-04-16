<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty message}">
    <div style="padding: 20px; background-color: yellow">${message}</div>
</c:if>
<%--h1>lorem3^p>lorem--%>
<h1>Lorem ipsum dolor.</h1>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab aliquam atque deserunt facere ipsam necessitatibus
    numquam soluta sunt vitae. Ad at culpa dignissimos distinctio dolorum ducimus exercitationem explicabo, laudantium
    similique!
</p>
</body>
</html>
