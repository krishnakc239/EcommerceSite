package ecommercesite

import org.springframework.web.multipart.MultipartHttpServletRequest
import org.springframework.web.multipart.commons.CommonsMultipartFile
import java.io.File
class CategoryController extends LoginController {
    def create(){

    }
    def save(){

       uploadFile(params)
        //params.profile_pic = file.getOriginalFilename();
        println  params;

        def category = new Category(params)
        if(category.save())
        {println "saved"
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
//            println "inserted"
        }
        //Remove unwanted parameter Image anad set profile_pic in parameter.
        //params.remove("image");
    }
    def index() {
        def categorylist = Category.list();
        [categorylist: categorylist]
    }
    def delete()
    {
        def categorylist = Category.findById(Integer.parseInt(params.id));
        categorylist.delete();
        redirect(action: "index");
    }
    def edit()
    {
        def categorylist = Category.findById(Integer.parseInt(params.id));
        [categoryInstance: categorylist];
    }
    def update() {
        def file = request.getFile("imageFile");
        def filePath = request.getSession().getServletContext().getRealPath("/")+"/images/profile_picture/";

        def fileName = file.getOriginalFilename();
        println ""+fileName
        if(file && fileName!="")
        {
            file.transferTo(new File(filePath+"/images/profile_picture/"+file.getOriginalFilename()));
            params.remove("image");
            params.image = file.getOriginalFilename();
        }else {
            params.image = params.hid_profile_pic;
        }
        def category = Category.findById(Integer.parseInt(params.id));
        category.name = params.name;
        category.image = params.image;
        category.description = params.description;
        if (category.save()) {
            redirect(action: "index")
        } else {
            render(view: "edit", model: [categoryInstance: category]) // first search update.gsp action otherwise it renders to edit.gsp
        }
    }
}
