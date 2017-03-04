package ecommercesite

class CartController extends BaseInterceptor{

    def index() { }

    def addToCart(){

        Product product=Product.findById(Integer.parseInt(params.id))
        def uniqueId = "";
        if(session.uniqueId){
            uniqueId=session.uniqueId;
        }else {
            uniqueId=UUID.randomUUID();
            session.uniqueId = uniqueId;
        }
        def checkProduct = Cart.findByProductAndUniqueId(product,uniqueId.toString())
 //println checkProduct.quantity
        if(checkProduct){
//            def cart = new Cart();
            Integer newQuantity = checkProduct.quantity+1;
//            checkProduct.product = product;
//            checkProduct.uniqueId = uniqueId;
            checkProduct.quantity = newQuantity;
//            checkProduct.id = checkProduct.id;
            checkProduct.save(flush:true);

        }else {
            def cart = new Cart();
            cart.product = product;
            cart.uniqueId = uniqueId;
            cart.quantity = 1;
            cart.save(flush:true);
                 }
//        println uniqueId
        def cartList = Cart.findAllByUniqueId(uniqueId.toString())
//        println cartList.product.price;
        println cartList.quantity;
        [cartList:cartList]


    }
    def buy(){

    }
    def register(){
        render(view:"buy")
    }
    def showCart(){
        def uniqueId = "";
        if(session.uniqueId){
            uniqueId=session.uniqueId;
        }else {
            uniqueId=UUID.randomUUID().toString();
            session.uniqueId = uniqueId;
        }

        def checkProduct = Cart.findByProductAndUniqueId(product,uniqueId.toString())
        if(checkProduct){
            def cart = new Cart();
            def newQuantity = checkProduct.quantity+1;
            cart.product = product;
            cart.uniqueId = uniqueId;
            cart.quantity = newQuantity;
            cart.id = checkProduct.id;
            cart.save(flush:true);

        }else {
            def cart = new Cart();
            cart.product = product;
            cart.uniqueId = uniqueId;
            cart.quantity = 1;
            cart.save(flush:true);
        }
        def product=Product.get(params.test1)
        def cart=Cart.findAllByProductAndUniqueId(product,uniqueId)
        println cart.uniqueId
        render (template: "/templates/cart", model:[cart:cart])
    }
    def continueShop(){
//        def product=Product.get(params.id)
        redirect(controller:"index", view:"index")
    }

}
