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
        %{--<th>UniqueId</th>--}%
        <th>Quantity</th>
        <th>Price</th>
        <th>Total</th>
        </thead>
        <tbody>

        <g:each in="${cartList}" status="i" var="${cart}">
        <tr><td>${i+1}</td>
            <td>${cart.product.name}</td>
            %{--<td>${cart.uniqueId}</td>--}%
            <td>${cart.quantity}</td>
            <td>${cart.product.price}</td>
            <td>$100</td>
        </tr>
        </g:each>
        <tr>
            <td></td>
            <td></td>
            <td><h5>Estimated shipping</h5></td>
            <td><h5><strong>$6.94</strong></h5></td>
        </tr>
        <tr>
        <td>   </td>
        <td>   </td>
        <td><h3>Total</h3></td>
        <td><h3><strong>$31.53</strong></h3></td>
        </tr>
        <tr>
        <td>   </td>
        <td>   </td>
        <td>   </td>
        <td>
            <g:link controller="cart" action="continueShop">
        <button type="button" class="btn btn-success">
        <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
        </button>
        </td>
            </g:link>

        </tr>
        </tbody>
    </table>
</div>

