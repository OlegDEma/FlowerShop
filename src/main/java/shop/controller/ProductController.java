package shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import shop.entity.Product;
import shop.service.*;

import javax.servlet.http.HttpSession;
import java.security.Principal;
import java.util.List;

/**
 * Created by Dema on 13.04.2017.
 */
@Controller
@RequestMapping(value = "/products")
public class ProductController {
    @Autowired
    private BrandService brandService;

    @Autowired
    private DeliveryService deliveryService;

    @Autowired
    private ManagerService managerService;

    @Autowired
    private SaleService saleService;

    @Autowired
    private ModelService modelService;

    @Autowired
    private ProductService productService;

    @Autowired
    private ProductDescriptionService poductDescriptionService;

    @Autowired
    private SubcategoryService subcategoryService;

    @Autowired
    private UserService userService;

    @Autowired
    private CategoryService categoryService;

    @Autowired
    private CartService cartService;

    @RequestMapping(value={"/"},method = RequestMethod.GET)
    public String addProduct(HttpSession session , Model model , String sort){
//			model.addAttribute("begin","1");
//			model.addAttribute("end","6");
        System.out.println(sort);
        if (sort == null){
            model.addAttribute("products", productService.findAll());
        }else {
            List<Product> products = productService.sort(sort);
            model.addAttribute("products", products);
        }
//		model.addAttribute("products", productService.findAll());
//		System.out.println(session.getAttribute("begin"));
//		session.invalidate();
        if (session.getAttribute("begin") == null){
            model.addAttribute("begin","1");
            model.addAttribute("end","12");
        }else {
//			System.out.println(session.getAttribute("begin"));
//			System.out.println(session.getAttribute("end"));
            String begin = (String) session.getAttribute("begin");
            String end = (String) session.getAttribute("end");
            model.addAttribute("begin",begin);
            model.addAttribute("end",end);
//			session.invalidate();
        }
        return "views-user-products";
    }

    @RequestMapping(value="/{sort}",method = RequestMethod.GET)
    public String sort(HttpSession session ,Model model,@PathVariable("sort") String sort, String typeOfSort){

        System.out.println(sort);
        System.out.println(typeOfSort);
        if (typeOfSort == null){


            List<Product> products = productService.sort(sort);

            model.addAttribute("products", products);
            model.addAttribute("page",sort);
        }else {
            if (typeOfSort.equals("desc")){
                for (Product product: productService.findAllByPriceDESC(sort)) {
                    System.out.println(product);
                }
                 model.addAttribute("products",productService.findAllByPriceDESC(sort));
            }
        }

        return "views-user-shopBy";
    }

    @RequestMapping(value="/{sort}/{typeOfSort}",method = RequestMethod.GET)
    public String type(HttpSession session ,Model model,@PathVariable("sort") String sort,@PathVariable("typeOfSort") String typeOfSort){

        System.out.println(sort);
        System.out.println(typeOfSort);
        if (typeOfSort == null){
            System.out.println("null");
//
//            List<Product> products = productService.sort(sort);
//
//            model.addAttribute("products", products);
//            model.addAttribute("page",sort);
        }else {
            System.out.println("not null");
//            model.addAttribute("products",productService.findAll());
            if (typeOfSort.equals("desc")){
//                for (Product product: productService.findAllByPriceDESC(sort)) {
//                    System.out.println(product);
//                }
                model.addAttribute("products",productService.findAllByPriceDESC(sort));
            }else if(typeOfSort.equals("esc")){
                model.addAttribute("products",productService.findAllByPriceESC(sort));
            }else if(typeOfSort.equals("name")){
                model.addAttribute("products",productService.findAllByName(sort));
            }
        }
        model.addAttribute("page",sort);

        return "views-user-shopBy";
    }


//    @RequestMapping(value="/page",method = RequestMethod.GET)
//    public String page(HttpSession session, String id){
//        session.setAttribute("begin","7");
//        session.setAttribute("end","12");
//        return "redirect:/products";
//    }
//
//    @RequestMapping(value="/nextPage",method = RequestMethod.GET)
//    public String nextPage(HttpSession session, String begin , String end , String page){
//
//        List<Product> products = productService.findAll();
//        int size = products.size();
//        int beginInt = Integer.parseInt(begin);
//        int endInt = Integer.parseInt(end);
//        if(endInt > size){
//            session.setAttribute("begin",String.valueOf(beginInt));
//            session.setAttribute("end", String.valueOf(endInt));
//        }else {
//            int newBegin = endInt+1;
//            int newEnd = newBegin+12-1;
//            session.setAttribute("begin",String.valueOf(newBegin));
//            session.setAttribute("end", String.valueOf(newEnd));
//        }
//
//
//
////		session.setAttribute("begin",String.valueOf(newBegin));
////		session.setAttribute("end", String.valueOf(newEnd));
////		System.out.println(newBegin);
////		System.out.println(newEnd);
////		System.out.println("qwe");
////		System.out.println(newBegin);
////		System.out.println(newEnd);
//        return "redirect:/sort/"+page;
//    }
//    @RequestMapping(value="/prevPage",method = RequestMethod.GET)
//    public String prevPage(HttpSession session, String begin , String end){
//
//        int beginInt = Integer.parseInt(begin);
//        int endInt = Integer.parseInt(end);
//
//        endInt = beginInt-1;
//        beginInt = endInt-12+1;
//        if (beginInt < 1){
//            session.setAttribute("begin","1");
//            session.setAttribute("end","12");
//        }else {
//            session.setAttribute("begin",String.valueOf(beginInt));
//            session.setAttribute("end", String.valueOf(endInt));
//        }
//
//
//        System.out.println(beginInt);
//        System.out.println(endInt);
////		System.out.println("qwe");
////		System.out.println(newBegin);
////		System.out.println(newEnd);
//        return "redirect:/products";
//    }

    @RequestMapping(value="/addNewProduct",method = RequestMethod.GET)
    public String addNewProduct(@ModelAttribute("product")Product product, @RequestParam("brand") String brand , @RequestParam("category") String category,
                                @RequestParam("man") String man, @RequestParam("model") String model){
//		product.setBrand(brand);
//		System.out.println(brand);
//		System.out.println(brandService.findOne(Integer.parseInt(brand)));
        product.setCategory(categoryService.findOne(Integer.parseInt(category)));
        product.setBrand(brandService.findOne(Integer.parseInt(brand)));
        product.setManager(managerService.findOne(Integer.parseInt(man)));
//		System.out.println(manager);
        product.setModel(modelService.findOne(Integer.parseInt(model)));
//        System.out.println(product);
        productService.save(product);
//		System.out.println(br);
        return "redirect:/adminpanel";
    }

    @RequestMapping(value="/deleteProduct/{id}",method = RequestMethod.GET)
    public String deleteProduct(@PathVariable("id") String id){
        productService.delete(Integer.parseInt(id));
        return "redirect:/adminpanel";
    }

    @RequestMapping(value="/changeProduct/{id}",method = RequestMethod.GET)
    public String changeProduct(HttpSession session, @PathVariable("id") String id, @RequestParam("value") String value, @RequestParam("whatChange") String whatChange, @RequestParam("brand") String brand){
        Product product = productService.findOne(Integer.parseInt(id));
        if(whatChange.equals("name")){
            product.setName(value);
            productService.update(product);
        }else if(whatChange.equals("price")){
            product.setPrice(Double.parseDouble(value));
            productService.update(product);
        }else if(whatChange.equals("brand")){
            product.setBrand(brandService.findOne(Integer.parseInt(brand)));
            productService.update(product);

        }
        session.setAttribute("do","change");




        return "redirect:/adminpanel";
    }


    @RequestMapping(value = "/saveImageForProduct", method = RequestMethod.POST)
    public String saveImageForProduct(Principal principal , @RequestParam("id") String id , @RequestParam MultipartFile image) {

        productService.saveImageForProduct(id,image);


        return "redirect:/adminpanel";
    }

}
