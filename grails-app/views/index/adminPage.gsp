<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Index</title>
    <meta name="description" content="">
    <meta name="layout" content="mylayout">

</head>
<body>
<g:render template="/templates/adminHeader"></g:render>
<div class="row">
    <g:render template="/templates/categories"></g:render>
    <g:render template="/templates/slider"></g:render>
</div>
<g:render template="/templates/categories_images"></g:render>
<g:render template="/templates/footer"></g:render>
</body>
</html>