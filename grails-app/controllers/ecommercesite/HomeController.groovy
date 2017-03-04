package ecommercesite

import grails.plugins.mail.MailService
import org.hibernate.validator.constraints.Email

class HomeController {

    def index() {
//        def uniqueId = "";
//        if(session.uniqueId){
//            uniqueId=session.uniqueId;
//        }else {
//            uniqueId=UUID.randomUUID();
//            session.uniqueId = uniqueId;
//        }
    }

    def Email(){
        sendMail {
            sendEmail {
                to "krishnakc2339@gmail.com"
//            from "krishnakc2339@gmail.com"
//            cc "marge@g2one.com", "ed@g2one.com"
//            bcc "joe@g2one.com"
                subject "Hello "
                text "this is some text"
            }
        }
        render(view:"Email")



    }
//    def sendMail(){
//            sendMail {
//                to "neutronstar239@gmail.com"
//                subject "This is a test mail"
//                body "Hello, This is a test mail, how are you?"
//            }
//
//        forward(action: 'cartdetail')
//
//    }
    def cartdetail(){
        println params

    }
}
