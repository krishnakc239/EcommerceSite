package ecommercesite

class Product {
    String name
    Category category
    String description
    String image
    Integer price
    String discount

    static constraints = {
        name(nullable: false,
        blank: false)
    }
}
