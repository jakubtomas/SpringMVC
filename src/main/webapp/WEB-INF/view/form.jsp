<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>




<html>
<head>
    <title>Form.jsp</title></head>
    <body>

    <h1>Form acction processFormVersionTwo 2</h1>

<%--    model dat name  action to prcessFormVersionTwo--%>
    <form:form action="processFormVersionTwo" method="GET">
        <label>
            <input type="text" name="name" placeholder="Please Input  your Name" required/>
        </label>
        <input type="submit"/>
    </form:form>

    <br>
    <h2>Form for // processFormThree request parameter</h2>

    <form:form action="processFormThree" method="GET">
        <label>
            <input type="text" name="studentName" placeholder="write you  student name " required/>
        </label>
        <input type="submit"/>
    </form:form>

    </body>
</html>
