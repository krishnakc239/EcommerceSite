<div class="row">
    <g:each in="${ecommercesite.Category.list()}"  var="category">
        <div class="col-sm-3 col-lg-3 col-md-3" style="padding: 2px">
            <div class="  thumbnail" id="categories_images">
            <g:link controller="index" action="product" id="${category.id}">
                <g:img class="grow" dir="images/profile_picture" file="${category.image}" style="height: 200px;width:250px"/>
            </g:link>
                <div >
                <h4><a href="#">${category.name}</a></h4>
            </div>
                <div class="caption" id="categories_images_caption">
                    <p class="text-justify">${category.description}. Winter clothes are especially outerwear like coats,
                    jackets, hats and gloves or mittens. </p>
                </div>
                <div class="ratings" id="categories_images_ratings">
                    <p class="pull-right">15 reviews</p>
                    <p>
                        <span class="glyphicon glyphicon-star"></span>
                        <span class="glyphicon glyphicon-star"></span>
                        <span class="glyphicon glyphicon-star"></span>
                        <span class="glyphicon glyphicon-star"></span>
                        <span class="glyphicon glyphicon-star"></span>
                    </p>
        <g:link controller="index" action="product" id="${category.id}">
                    <p class="pull-right"><button class="btn btn-lg btn-primary">Detail</button></p>
            </g:link>
                    <p><button class="btn btn-lg btn-danger ">Upto $74.99</button></p>
                </div>

            </div>
        </div>
    </g:each>
</div>