<%--
  Created by IntelliJ IDEA.
  User: krishna KC
  Date: 1/3/2017
  Time: 9:02 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>edit</title>
    <meta name="description" content="">
    <meta name="layout" content="mylayout">
</head>
<body>
<g:if test="${flash.message}">
    ${flash.message}
</g:if>

<g:form action="update" controller="user">
   <g:hiddenField name="id" value="${userInstance.id}"></g:hiddenField>
    <g:render template="form"></g:render>
</g:form>

</body>
</html>