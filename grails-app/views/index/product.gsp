<%--
  Created by IntelliJ IDEA.
  User: krishna KC
  Date: 1/3/2017
  Time: 9:02 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>product</title>
    <meta name="description" content="">
    <meta name="layout" content="mylayout">
</head>
<body>
<g:render template="/templates/header"></g:render>
<div class="row">
<g:render template="/templates/categories"></g:render>
<g:render template="/templates/slider"></g:render>
<g:render template="/templates/ads"></g:render>
</div>

<g:render template="/templates/products"></g:render>
<g:render template="/templates/footer"></g:render>
</body>
</html>