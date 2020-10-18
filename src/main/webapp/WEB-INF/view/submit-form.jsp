<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Submit </title>
</head>
<body>
Text from processFormThree

<br> <br>
Student name: ${param.studentName}

<br> <br>
The message: ${message}


<a href="${pageContext.request.contextPath}/hello/showForm">Go back</a>

</body>
</html>