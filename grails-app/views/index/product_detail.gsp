<%--
  Created by IntelliJ IDEA.
  User: krishna KC
  Date: 1/3/2017
  Time: 9:02 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>product detail</title>
    <meta name="description" content="">
    <meta name="layout" content="mylayout">
</head>
<body>
<g:render template="/templates/header"></g:render>

<div class="row">
    <g:render template="/templates/categories"></g:render>
    <g:render template="/templates/product_detail"></g:render>
    %{--<g:render template="/templates/showCart"></g:render>--}%

</div>
<div class="row">
<div id="test"><p></p></div>
</div>
<br>
<br>
<br>
<br>
%{--<g:render template="/templates/cart"></g:render>--}%
<g:render template="/templates/footer"></g:render>
<script>
    function callAjax(test1) {
        $.ajax( {
            url:"${createLink(controller:"cart",action: "showCart")}",
            method:"POST",
            data:"test1= "+${product.id},
            success:function (msg) {
                $("#test").html(msg);
                test1.stopImmediatePropagation();
                return false
            }
        })
    }

//        $('#productId').click(function () {
//            alert("djhfkj");
//            e.preventDefault();
//        })

</script>
</body>
</html>