package ecommercesite


class BaseInterceptor {
    BaseInterceptor()    {
//        match(controller:'index');
//        match(controller:'user');
//        match(controller:'category');
//        match(controller:'product');

//        matchAll().excludes {
//            match(controller:'home', action:'index');
//            match(controller:'login');
//            match(controller:'user', action:'index');
//            match(controller:'category', action:'index');
//            match(controller:'product', action:'index');
//        }
    }

    boolean before() {
        if(!session.userId)
        {
            redirect(controller: "login",action: "login")
        }

    }

    boolean after() {


    }

    void afterView() {

        // no-op
    }
}
