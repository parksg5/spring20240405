<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<div>
    <div>
        navbar4의 attr1 : ${attr1}
    </div>
    <div>
        navbar4의 attr2 : ${attr2}
    </div>
    <div>
        navbar4의 attr3 : ${attr3} <%-- 좁은영역부터 attribute 찾음 --%>
    </div>

    <%-- el 내장 객체 param, pageScope, requestScope --%>
    <div>
        sub7의 page 영역 attr3 : ${pageScope.attr3}
    </div>
    <div>
        sub7의 page 영역 attr3 : ${pageScope["attr3"]}
    </div>
    <div>
        sub7의 request 영역 attr3 : ${requestScope.attr3}
    </div>
    <div>
        sub7의 request 영역 attr3 : ${requestScope.["attr3"]}
    </div>
    navbar4
</div>
