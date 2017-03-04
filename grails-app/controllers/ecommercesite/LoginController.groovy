package ecommercesite

import ecommercesite.User

class LoginController extends BaseInterceptor {

    def loginPost()
    {
        if(params.username && params.password)
        {
            def checkUser = User.findByUsernameAndPassword(params.username,params.password);
            if(checkUser)
            {
                session.userId = checkUser.id;
                session.fullname = checkUser.fullname;
                session.username= checkUser.username;
                redirect(controller: "home",action: "index");
            }else {
                flash.message="Wrong Username or Password";
                redirect(action: "login")
            }
        }else {
            redirect(controller:"login", action: "login");
        }
    }
    def logout()
    {
        session.userId="";
        session.invalidate();
        redirect(action: "login");
    }
    def login()
    {

    }
}
