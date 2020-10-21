<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html>
<head>
    <title>Student Confirmation</title></head>
<body>

<h1>Student-confirmation</h1>

The student is confirmed : ${student.firstName} ${student.lastName}
<br>
your country is ${student.country}
<br>
<br>
<h2>your favorite language is  ${student.favoriteLanguage}</h2>
<br><br>

<h3>you operating szstem </h3>
<ul>
    <c:forEach  var="temp" items="${student.operatingSystems}" >
<%--        <td>${object.name} </td>--%>
        <li>${temp}</li>
    </c:forEach>
</ul>


</body>
</html>
