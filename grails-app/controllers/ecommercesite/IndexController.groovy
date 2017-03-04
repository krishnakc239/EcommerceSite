package ecommercesite

class IndexController extends BaseInterceptor {

    def index() {

    }
    def product(){
        def category=Category.get(params.id);
        def productlist=Product.findAllByCategory(category);
        [productlist:productlist]
    }
    def product_detail(){
        def product = Product.findById(Integer.parseInt(params.id));
        [product: product]
    }
    def register(){

    }
    def adminPage(){

    }

}
