<%--
  Created by IntelliJ IDEA.
  User: krishna KC
  Date: 1/30/2017
  Time: 10:42 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>addToCart</title>
    <meta name="description" content="">
    <meta name="layout" content="mylayout">
</head>

<body>
<g:render template="/templates/header"></g:render>

%{--<div class="row">--}%
    %{--<p>${cart.product.name}</p>--}%
   %{--<p>${cart.quantity}</p>--}%
    %{--<p>${cart.uniqueId}</p>--}%
%{--</div>--}%
<div class="row">
    <g:render template="/templates/categories"></g:render>
    %{--<g:render template="/templates/showCart" model="[cartList:cartList]"></g:render>--}%
    <div class="col-lg-8">
        <tr>
        <td>
            <g:link controller="index" action="register">
                <button type="button" class="btn btn-success">
                    Checkout <span class="glyphicon glyphicon-play"></span>
                </button></td>
            </g:link>
        </tr>

        <table class="table">
            <thead>
            <td>SN</td>
            <th>Product</th>
            <th>Image</th>
            <th>Quantity</th>
            <th>Discount</th>
            <th>Price</th>
            <th>Total</th>
            </thead>
            <tbody>
<%
    def totalPrice = 0;
%>
            <g:each in="${cartList}" status="i" var="${cart}">
                <% def discount = Integer.parseInt(cart.product.discount);
                 def price = cart.quantity*(cart.product.price-(discount*0.01*cart.product.price))
                totalPrice= totalPrice+price;
                %>
                <tr><td>${i+1}</td>
                    <td>${cart.product.name}</td>
                    <td>
                    <g:img dir="images/profile_picture" file="${cart.product.image}" width="100" height="100"></g:img>
                    </td>
                    %{--<td>${cart.uniqueId}</td>--}%
                    <td>${cart.quantity}</td>
                    <td>${discount} %</td>
                    <td>$${cart.product.price}</td>

                    <td id="price">$${price}</td>
                </tr>
            </g:each>
            <tr>
                <td>   </td>
                <td>   </td>
                <td>   </td>
                <td>   </td>
                <td> </td>
                <td><h3>Total</h3></td>
            <td><h3><strong>$
            ${totalPrice}
            </strong></h3></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td><strong>
                <g:link controller="cart" action="buy">
                    <button class="btn btn-success">Buy Now</button> </strong></td>
                </g:link>
            </tr>
            </tbody>
        </table>
    </div>

</div>
<g:render template="/templates/footer"></g:render>
</body>
</html>