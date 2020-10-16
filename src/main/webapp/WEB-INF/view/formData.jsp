<%--
  Created by IntelliJ IDEA.
  User: install
  Date: 15. 10. 2020
  Time: 12:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    Name: ${param.name}
    <br><br>
    Message: ${message}

    <h2>LInk back</h2>

    <a href="${pageContext.request.contextPath}/showForm">Show form</a>
</body>
</html>
