package ecommercesite
class ProductController {
    def create(){
    [categorylist: Category.list()]
    }
    def save(){
        uploadFile(params)
        //params.profile_pic = file.getOriginalFilename();

        def product = new Product(params)
        if(product.save())
        {
            redirect(action: "index");

        }else {
            flash.message="Some error occurred";
            redirect(action:"create")
        }
    }
    def uploadFile(params)
    {
        def file = request.getFile("imageFile");
        def filePath = request.getSession().getServletContext().getRealPath("/")+"/images/profile_picture/";

        if(file)
        {
            params.remove("imageFile");
            params.image = file.originalFilename
            file.transferTo(new File(filePath+file.originalFilename));

        }
        //Remove unwanted parameter Image anad set profile_pic in parameter.
        //params.remove("image");
    }
    def index() {
        def productlist = Product.list();
        def categorylist= Category.list();
        [productlist: productlist, categorylist:categorylist]
    }








}