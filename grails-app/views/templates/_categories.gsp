<div class="col-lg-2">
    <p class="lead list-group-item">Categories </p>
    <div class="list-group">
        <ul class="list-unstyled " id="category">
            <g:each in="${ecommercesite.Category.list()}"  var="category">
                <li class="list-group-item">
                    <g:link controller="index" action="product" id="${category.id}">
                       <span class="glyphicon glyphicon-hand-right"> ${category.name}</span>
                    </g:link>
                </li>
            </g:each>
        </ul>
    </div>
</div>