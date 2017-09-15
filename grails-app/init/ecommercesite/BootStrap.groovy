package ecommercesite

class BootStrap {

    def init = { servletContext ->
        new User(username: "admin1",user_type: "admin",fullname: "Test123",password: "123",email: "abc@gmail.com").save();
        new User(username: "admin2",user_type: "admin",fullname: "Test123",password: "123",email: "abc@gmail.com").save();
        new User(username: "admin3",user_type: "admin",fullname: "Test123",password: "123",email: "abc@gmail.com").save();
//        new User(username: "testadmin4",user_type: "admin",fullname: "Test123",password: "123",email: "abc@gmail.com").save();
        new User(username: "mainadmin",user_type: "admin",fullname: "Test123",password: "123",email: "abc@gmail.com").save();
    }
    def destroy = {
    }
}
