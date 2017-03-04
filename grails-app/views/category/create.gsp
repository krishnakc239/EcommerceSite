<%--
  Created by IntelliJ IDEA.
  User: krishna KC
  Date: 1/3/2017
  Time: 9:02 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>create</title>
    <meta name="description" content="jflsdjfgjsk">
    <meta name="layout" content="mylayout">
</head>
<body>
<g:render template="/templates/header"/>
<g:if test="${flash.message}">
    ${flash.message}
</g:if>
<g:uploadForm action="save" controller="category" enctype='multipart/form-data'>
    <g:render template="form"></g:render>
</g:uploadForm>
</body>
</html>