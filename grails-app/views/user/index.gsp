<%--
  Created by IntelliJ IDEA.
  User: krishna KC
  Date: 1/3/2017
  Time: 9:03 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>User List</title>
    <meta name="layout" content="mylayout">
</head>

<body>
<g:render template="/templates/header"></g:render>
%{--<g:render template="/templates/body"></g:render>--}%

<div class="header-search ">
    <br>
    <g:form action="index" controller="user" >
        <g:textField name="keywords"  placeholder="Enter Keywords" value="${params.keywords}"/>
        <g:submitButton name="submit" class="btn-primary"  value="Search"></g:submitButton>
    </g:form>
</div>
<br>
<g:link controller="user" action="create"><g:submitButton name="submit" value="Add New User" ></g:submitButton></g:link>
<br>
<div><h2>
    <g:if test="${flash.message}">
        ${flash.message}
    </g:if>
</h2>
</div>
<br/>
<button class="btn-block"><h4>User List</h4></button>
<table class="table table-bordered table-responsive">
    <thead>
    <th>SN</th>
    <th>Username</th>
    <th>Full Name</th>
    <th>Email</th>
    <th>Edit</th>
    <th>Delete</th>
    </thead>
    <tbody>
    <g:each in="${users}" var="user" status="i">
        <tr>
            <td>${i+1}</td>
            <td>${user.username}</td>
            <td>${user.fullname}</td>
            <td>${user.email}</td>
            <td><g:link controller="user" action="edit" id="${user.id}">edit</g:link> </td>
            <td><g:link controller="user" action="delete" id="${user.id}">delete</g:link> </td>
        </tr>
    </g:each>
    </tbody>
</table>
<div class="pagination pagination-control">
    <g:paginate total="${totalCount}" params="${params}"></g:paginate>
</div>
<g:render template="/templates/footer"></g:render>
</body>
</html>