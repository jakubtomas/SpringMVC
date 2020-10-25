<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<html>
<head>
    <title>Customer registration Form</title>

</head>
<body>
<h1>customer confirmation.jsp</h1>
<h2>Hello</h2>
<br>
the customer is confirmed ${customer.firstName} ${customer.lastName}

<br><br>
Free passes: ${customer.freePasses}
<br><br>
Postal code: ${customer.postalCode}
</body>
</html>
