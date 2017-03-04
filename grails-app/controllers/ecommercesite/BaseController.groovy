//package ecommercesite
//
//class BaseController {
//
//    def beforeInterceptor = [action: this.&auth]//auth means a method
//    def auth()
//    {
//        println    "=============="+session.userId;
//        if(!session.userId)
//        {
//            redirect(controller: "login",action: "login")
//        }
//    }
//}
