<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%-- dostavam data od modelu --%>
<h2>${message}</h2>

<br>

<a href="${pageContext.request.contextPath}/hello/showForm">Show form</a>

<br>
<a href="${pageContext.request.contextPath}/student/showForm">student show form</a>
<br>


<a href="${pageContext.request.contextPath}/customer/showForm">Customer Show Form</a>
<br>

</body>
</html>
