<div class="row">
    <g:each in="${productlist}"  var="product">

            <div class="col-sm-2 col-lg-2 col-md-2" style="padding: 2px">
                <div class="thumbnail table-bordered" id="products">
                   <g:link controller="index" action="product_detail" id="${product.id}">
                    <g:img class="grow" dir="images/profile_picture" file="${product.image}" style="height: 200px; width: 200px"></g:img>
                    </g:link>
        <div class="row" style="margin-left: 2px">
                    <div class="ratings">
                        <p class="pull-right"><button class="btn btn-success btn-sm ">${product.discount}% OFF</button></p>
                        <p><h4><a href="#">${product.name}</a> </h4></p>
                    </div>
            </div>
                    %{--<div class="row">--}%
                    <div class="caption" id="products_caption">
                        <p class="text-justify">${product.description} </p>
                    </div>
                    %{--</div>--}%
                    <div class="ratings" id="rating_addToCart">
                        <p class="pull-right">15 reviews</p>
                        <p>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                        </p>
        <g:link controller="index" action="product_detail" id="${product.id}">
                        <p class="pull-right"><button class="btn btn-primary">View Detail</button></p>
        </g:link>
                        <p ><button class="btn btn-danger ">$${product.price}</button></p>
                    </div>
                </div>
            </div>

    </g:each>
</div>
    %{--<div class="col-sm-4 col-lg-4 col-md-4">--}%
        %{--<div class="thumbnail">--}%
            %{--<asset:image src="2.jpg"/>--}%
            %{--<div class="caption">--}%
                %{--<h4 class="pull-right">$94.99</h4>--}%
                %{--<h4><a href="#">Fifth Product</a>--}%
                %{--</h4>--}%
                %{--<p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>--}%
            %{--</div>--}%
            %{--<div class="ratings">--}%
                %{--<p class="pull-right">18 reviews</p>--}%
                %{--<p>--}%
                    %{--<span class="glyphicon glyphicon-star"></span>--}%
                    %{--<span class="glyphicon glyphicon-star"></span>--}%
                    %{--<span class="glyphicon glyphicon-star"></span>--}%
                    %{--<span class="glyphicon glyphicon-star"></span>--}%
                    %{--<span class="glyphicon glyphicon-star-empty"></span>--}%
                %{--</p>--}%
            %{--</div>--}%
        %{--</div>--}%
    %{--</div>--}%


