<%--
  Created by IntelliJ IDEA.
  User: krishna KC
  Date: 1/3/2017
  Time: 9:03 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Product List</title>
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
<g:link controller="product" action="create"><g:submitButton name="submit" value="Add New Product" ></g:submitButton></g:link>
<br>
<div><h2>
    <g:if test="${flash.message}">
        ${flash.message}
    </g:if>
</h2>
</div>
<button class="btn-block"><h4>Product List</h4></button>
<table class="table table-bordered table-responsive">
    <thead>
    <th>SN</th>
    <th>Product Name</th>
    <th>Image</th>
    <th>Description</th>
    <th>Category Type</th>
    <th>Price</th>
    <th>Discount</th>
    <th>Edit</th>
    <th>Delete</th>
    </thead>
    <tbody>
    <g:each in="${productlist}" var="product" status="i">
        <tr>
            <td>${i+1}</td>
            <td>${product.name}</td>
            <td>
                <g:img dir="images/profile_picture" file="${product.image}" height="100px" width="100px"></g:img>
            <td>${product.description}</td>
            <td>${product.category.name}</td>
            <td>${product.price}</td>
            <td>${product.discount}</td>
            <td><g:link controller="product" action="edit" id="${product.id}">edit </g:link> </td>
            <td><g:link controller="product" action="delete" id="${product.id}">delete</g:link> </td>
        </tr>
    </g:each>
    </tbody>
</table>
<g:render template="/templates/footer"></g:render>
</body>
</html>