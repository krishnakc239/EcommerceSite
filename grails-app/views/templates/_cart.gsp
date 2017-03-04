%{--<div class="row">--}%
    %{--<div id="test"></div>--}%
%{--<div class="col-lg-3">--}%
    %{--<div class="container">--}%
        %{--<div class="row">--}%
            %{--<div class="col-sm-4 col-md-10 col-md-offset-1">--}%
                %{--<td>--}%
                    %{--<button type="button" class="btn btn-success">--}%
                        %{--Checkout <span class="glyphicon glyphicon-play"></span>--}%
                    %{--</button></td>--}%
                %{--<table class="table ">--}%
                    %{--<thead>--}%
                    %{--<tr>--}%
                        %{--<th>Product</th>--}%
                        %{--<th>Quantity</th>--}%
                        %{--<th class="text-center">Price</th>--}%
                        %{--<th class="text-center">Total</th>--}%
                        %{--<th> </th>--}%
                    %{--</tr>--}%
                    %{--</thead>--}%
                    %{--<tbody>--}%
                    %{--<g:each in="${cart}" status="i" var="cart">--}%
                    %{--<tr>--}%
                        %{--<td class="col-sm-8 col-md-6">--}%
                            %{--<div class="media">--}%
                                %{--<a class="thumbnail pull-left" href="#"> <img class="media-object" src="http://icons.iconarchive.com/icons/custom-icon-design/flatastic-2/72/product-icon.png" style="width: 72px; height: 72px;"> </a>--}%
                                %{--<div class="media-body">--}%
                                    %{--<h4 class="media-heading"><a href="#">${cart.product.name}</a></h4>--}%
                                    %{--<h5 class="media-heading"> by <a href="#">Brand name</a></h5>--}%
                                    %{--<span>Status: </span><span class="text-success"><strong>In Stock</strong></span>--}%
                                %{--</div>--}%
                            %{--</div></td>--}%
                        %{--<td class="col-sm-1 col-md-1" style="text-align: center">--}%
                            %{--<input type="email" class="form-control" id="exampleInputEmail1" value="3">--}%
                        %{--</td>--}%
                        %{--<td class="col-sm-1 col-md-1 text-center"><strong>${cart.product.price}</strong></td>--}%
                        %{--<td class="col-sm-1 col-md-1 text-center"><strong>$14.61</strong></td>--}%
                        %{--<td class="col-sm-1 col-md-1">--}%
                            %{--<button type="button" class="btn btn-danger">--}%
                                %{--<span class="glyphicon glyphicon-remove"></span> Remove--}%
                            %{--</button></td>--}%
                    %{--</tr>--}%
                    %{--</g:each>--}%
                    %{--<tr>--}%
                        %{--<td>   </td>--}%

                        %{--<td>   </td>--}%
                        %{--<td><h5>Subtotal</h5></td>--}%
                        %{--<td class="text-right"><h5><strong>$24.59</strong></h5></td>--}%

                    %{--</tr>--}%
                    %{--<tr>--}%

                        %{--<td>   </td>--}%
                        %{--<td>   </td>--}%
                        %{--<td><h5>Estimated shipping</h5></td>--}%
                        %{--<td class="text-right"><h5><strong>$6.94</strong></h5></td>--}%
                    %{--</tr>--}%
                    %{--<tr>--}%

                        %{--<td>   </td>--}%
                        %{--<td>   </td>--}%
                        %{--<td><h3>Total</h3></td>--}%
                        %{--<td class="text-right"><h3><strong>$31.53</strong></h3></td>--}%
                    %{--</tr>--}%
                    %{--<tr>--}%
                        %{--<td>   </td>--}%
                        %{--<td>   </td>--}%
                        %{--<td>   </td>--}%
                        %{--<td>--}%
                            %{--<button type="button" class="btn btn-default">--}%
                                %{--<span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping--}%
                            %{--</button></td>--}%

                    %{--</tr>--}%
                    %{--</tbody>--}%
                %{--</table>--}%
            %{--</div>--}%
        %{--</div>--}%
    %{--</div>--}%
%{--</div>--}%
%{--</div>--}%
<div class="row">
    <table class="table col-lg-6">
        <thead>
        <th>Product</th>
        <th>Unique id</th>
        <th>Quantity</th>
        <th>Price</th>
        <th>Total</th>
        </thead>
        <tbody>
        <tr>
            <td>${cart.product.name}</td>
            <td>${cart.uniqueId}</td>
            <td>${cart.quantity}</td>
            <td>${cart.product.price}</td>
            <td>$100</td>
        </tr>
        </tbody>
    </table>
</div>