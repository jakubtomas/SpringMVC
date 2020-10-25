<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>



<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<html>
<body>

<h1>Student-form.jsp</h1>

<form:form action="processForm" modelAttribute="student">

    First name : <form:input path="firstName"/>
    <br> <br>
    Second name : <form:input path="lastName"/>
    <br><br>

    Country :
    <form:select path="country">
        <%--            with getCountryOptions get values--%>
        <form:options items="${student.countryOptions}"/>

    </form:select>
    <br><br>
    favorite language:
    PHP <form:radiobutton path="favoriteLanguage" value="PHP"/>
    Javascript <form:radiobutton path="favoriteLanguage" value="Javascript"/>
    Java <form:radiobutton path="favoriteLanguage" value="Java"/>


    <br><br>
    Favorite Language:
    windows <form:checkbox path="operatingSystems" value="windows"/>
    Linux <form:checkbox path="operatingSystems" value="LInux"/>
    OS <form:checkbox path="operatingSystems" value="OS"/>
    windows xp <form:checkbox path="operatingSystems" value="windows xp "/>
    <br><br>


    <input type="submit" value="Submit"/>
</form:form>


</body>
<head>
    <title>Student registration form </title></head>
</html>
