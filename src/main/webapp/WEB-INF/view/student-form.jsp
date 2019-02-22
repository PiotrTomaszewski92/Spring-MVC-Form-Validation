
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Student Registration Form</title>
</head>
<body>
<%--when form is submitted Spring MVC will call settets firstName and lastName--%>
<form:form action="processForm" modelAttribute="student">
    First name: <form:input path="firstName" /><br>
    Last name: <form:input path="lastName" /> <br>
    Country:<form:select path="country">
                <form:options items="${student.countryOptions}" />
            </form:select>
    Favourite Language:
            Java <form:radiobutton path="favouriteLanguage" value="Java" />
            C# <form:radiobutton path="favouriteLanguage" value="C#" />
            PHP <form:radiobutton path="favouriteLanguage" value="PHP" />
            Ruby <form:radiobutton path="favouriteLanguage" value="Ruby" />

    Operating systems:
            Linux <form:checkbox path="operatingSystems" value="Linux" />
            Mac OS<form:checkbox path="operatingSystems" value="Mac OS" />
            MS Windows<form:checkbox path="operatingSystems" value="Windows" />

    <input type="submit" value="Submit" />
</form:form>
</body>
</html>
