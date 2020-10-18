<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<html>
<head>
    <title>Student registration form </title></head>
<body>

<h1>Student-form.jsp</h1>

    <form:form action="processForm" modelAttribute="student">

        Fiirst name : <form:input path="firstName" />
        <br> <br>
        Second  name : <form:input path="lastName"/>
        <br><br>
        <input type="submit"/>
    </form:form>


</body>
</html>
