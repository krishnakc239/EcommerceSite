package ecommercesite

import org.springframework.web.multipart.commons.CommonsMultipartFile

class UserController extends BaseInterceptor{

    def sendEmail() {
        sendMail {
            to "krishnakc239@yahoo.com"
            subject "This is a test mail"
            body "Hello, This is a test mail, how are you?"
        }
        forward(action: 'adminPage')
    }

    def save() {

        def user = new User(params);
        if (user.save()) {
            redirect(action: "index")
        } else {
            flash.message = "Some error occurred";
            redirect(action: "create")
        }
    }

    def index() {
        params.max=5;
        def totalCount = 0;
        def userlist = null;
        if(params.keywords)
        {
            userlist = User.findAllByUsernameLikeOrFullnameLike(params.keywords+"%",params.keywords+"%",params);
            totalCount = User.findAllByUsernameLikeOrFullnameLike(params.keywords+"%",params.keywords+"%").size();

        }else{
            userlist = User.list(params);
            totalCount=User.count()
        }
        params.remove("submit");
        def categorylist=Category.list();
        [categorylist:categorylist]

        [users:userlist,totalCount:totalCount,params:params]
    }


    def create() {

    }
    def home(){

    }

    def edit() {
        def user = User.findById(Integer.parseInt(params.id))
        [userInstance: user]
    }

    def update() {
        def user = User.findById(Integer.parseInt(params.id));
        user.username = params.username;
        user.fullname = params.fullname;
        user.email = params.email;
        user.password = params.password;
        user.user_type = params.user_type;
        if (user.save()) {
            redirect(action: "index")
        } else {
            render(view: "edit", model: [users: user]) // first search update.gsp action otherwise it renders to edit.gsp
        }
    }

    def delete() {
        def user = User.findById(Integer.parseInt(params.id));
        user.delete();
        redirect(action: "index");
        println "deleted"
    }

}