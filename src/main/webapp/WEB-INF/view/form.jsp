<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: install
  Date: 15. 10. 2020
  Time: 12:30
  To change this template use File | Settings | File Templates.
--%>


<html>
<head>
</head>
<body>

<h1>Form acction processFormVersionTwo 2</h1>

<form:form action="processFormVersionTwo" method="GET">
    <input type="text" name="name" placeholder="Please Input  your Name" required/>
    <input type="submit"/>
</form:form>

</body>
</html>
