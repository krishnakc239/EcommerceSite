<%--
  Created by IntelliJ IDEA.
  User: krishna KC
  Date: 1/3/2017
  Time: 9:03 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Category List</title>
    <meta name="layout" content="mylayout">
</head>

<body>
<g:render template="/templates/header"/>
<div class="header-search ">
    <br>
    <g:form action="search" controller="user" >
        <g:textField name="query"  placeholder="search"/>
        <g:submitButton name="submit" class="btn-primary"  value="Search"></g:submitButton>
    </g:form>
</div>
<br>
<g:link controller="category" action="create"><g:submitButton name="submit" value="Add New Category" ></g:submitButton></g:link>
<br>
<div><h2>
    <g:if test="${flash.message}">
        ${flash.message}
    </g:if>
</h2>
</div>
<button class="btn-block"><h4>Category List</h4></button>
    <table class="table table-bordered table-responsive">
        <thead>
        <th>SN</th>
        <th>Category Name</th>
        <th>Image</th>
        <th>Description</th>
        <th>Edit</th>
        <th>Delete</th>
        </thead>
        <tbody>
        <g:each in="${categorylist}" var="category" status="i">
            <tr>
                <td>${i+1}</td>
                <td>${category.name}</td>
                <td>
                    <g:img dir="images/profile_picture" file="${category.image}" height="100px" width="150px"></g:img>
                <td>${category.description}</td>
                <td><g:link controller="category" action="edit" id="${category.id}">edit</g:link> </td>
                <td><g:link controller="category" action="delete" id="${category.id}">delete</g:link> </td>
            </tr>
        </g:each>
        </tbody>
    </table>
<g:render template="/templates/footer"></g:render>
</body>
</html>