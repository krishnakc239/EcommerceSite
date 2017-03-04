<div class="col-lg-8">
            <div class="col-sm-12 col-lg-12 col-md-12" id="products">
                <div class="thumbnail" id="product_detail">
                    <div class="row">
                        <div class="col-sm-7 col-lg-7 col-md-7">
                            <g:img class="grow" dir="images/profile_picture" file="${product.image}" style="height: 300px;width: 400px"></g:img>
                        </div>
                        <div class="col-sm-5 col-lg-5 col-md-5">
                            <div class="caption" id="product_detail_caption">
                                <h4><a href="#">${product.name}</a>
                                </h4>
                                <p class="text-justify">${product.description} </p>
                            </div>
                            <div  class="ratings">
                                <p class="pull-right">15 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                </p>
                            <g:link controller="cart" action="addToCart" id="${product.id}">
                                <p class="pull-right"><button class="btn btn-primary" >Add to cart</button></p>

                            </g:link>
                                <p ><button class="btn btn-danger ">$${product.price}</button></p>
                            </div>
                        </div>
                    </div>
            </div>
            </div>
    %{--<button id="test1" onclick="callAjax(test)" class="btn btn-info">click for test</button>--}%
</div>
<script>
    $(".grow").elevateZoom();
</script>
%{--<div class="col-lg-8">--}%

        %{--<div class="col-sm-8 col-lg-8 col-md-8" id="products">--}%
            %{--<div class="thumbnail">--}%
                %{--<asset:image src="9.jpg"/>--}%
                %{--<div class="caption">--}%
                    %{--<h4><a href="#">Jacket</a>--}%
                    %{--</h4>--}%
                    %{--<p class="text-justify">Winter clothes are especially outerwear like coats,--}%
                    %{--jackets, hats and gloves or mittens, but also warm underwear like long underwear,--}%
                    %{--union suits and socks.[3] Military issue winter clothing evolved from heavy--}%
                    %{--coats and jackets to multilayered clothing for the purpose of keeping troops--}%
                    %{--warm during winter battles.[4] Several shirts and socks, usually four pairs--}%
                    %{--were standard issue for the U.S. Army during WWII. Winter clothes--}%
                    %{--used for sports and recreation includes ski suits and snowmobile suits.--}%
                    %{--Many northern cultures use animal fur to make winter clothes.[5] </p>--}%
                %{--</div>--}%
                %{--<div class="ratings">--}%
                    %{--<p class="pull-right">15 reviews</p>--}%
                    %{--<p>--}%
                        %{--<span class="glyphicon glyphicon-star"></span>--}%
                        %{--<span class="glyphicon glyphicon-star"></span>--}%
                        %{--<span class="glyphicon glyphicon-star"></span>--}%
                        %{--<span class="glyphicon glyphicon-star"></span>--}%
                        %{--<span class="glyphicon glyphicon-star"></span>--}%
                    %{--</p>--}%
                    %{--<p class="pull-right"><button class="btn btn-primary">Add to cart</button></p>--}%
                    %{--<p ><button class="btn btn-danger "> $74.99</button></p>--}%
                %{--</div>--}%
            %{--</div>--}%
        %{--</div>--}%

%{--</div>--}%

