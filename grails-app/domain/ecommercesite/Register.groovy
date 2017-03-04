package ecommercesite

class Register {
    String firstName
    String lastName
    String country
    String city
    String email
    String password

    static constraints = {
        firstName nullable: false, blank: false
        password size: 5..15, blank: false
        email email: true, blank: false
        lastName nullable: false, blank: false
        city bullable:false, blank: false
        country blank: false
    }
}
