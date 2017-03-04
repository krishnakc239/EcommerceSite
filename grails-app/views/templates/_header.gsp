<nav class="navbar navbar-inverse nav-divider  navbar-fixed-top " role="navigation">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">National Online Clothing Site</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                %{--<g:if test="${=='login'}">--}%
                <li>
                    <g:link controller="home" action="index"><span class="glyphicon glyphicon-home"> Home</span></g:link>
                </li>
                %{--</g:if>--}%
                <g:if test="${session.username=='admin1'}">
                <li>
                   <g:link controller="user" action="index"><span class="glyphicon glyphicon-user"> User</span></g:link>
                </li>
                <li>
                <g:link controller="category" action="index"><span class="glyphicon glyphicon-menu-hamburger"> Category</span></g:link>
                </li>
                 <li>
                 <g:link controller="product" action="index"><span class="glyphicon glyphicon-bed"> Product</span></g:link>
                </li>
                    </g:if>
                <li>
                    <g:link controller="home" action="index"><span class="glyphicon glyphicon-plane"> Delevery</span></g:link>
                </li>
                <li>
                    <g:link controller="home" action="index"><span class="glyphicon glyphicon-phone-alt"> Contact</span></g:link>
                </li>
            </ul>
        <ul class="nav navbar-nav navbar-right" style="background-color: #080808">
            <li >
                <g:link controller="login" action="login">Sign in</g:link>
            </li>

            <li >
                <g:link controller="index" action="register">Register</g:link>
            </li>
            <li >
                <g:link controller="login" action="logout">Log Out</g:link>
            </li>
            </ul>

        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>