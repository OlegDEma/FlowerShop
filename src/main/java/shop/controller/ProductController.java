package shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import shop.entity.Product;
import shop.service.*;

import javax.servlet.http.HttpSession;
import java.security.Principal;
import java.util.ArrayList;
import java.util.Iterator;
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
    public String addProduct(HttpSession session , Model model , String sort, Principal principal){
//

        Page<Product> products = productService.findAll(0, 6);

        String pages = "";

        for(int i = 0; i < products.getTotalPages(); i++){

            pages+= i+ "-";

        }

        model.addAttribute("totalPages", products.getTotalPages());
        model.addAttribute("pages", pages);
        model.addAttribute("products", products);
        model.addAttribute("sort", "id");

        return "views-user-products";
    }

    @RequestMapping(value="/{sort}",method = RequestMethod.GET)
    public String sort(HttpSession session ,Model model,@PathVariable("sort") String sort){

        Page<Product> products = productService.findAll(0, 6,sort);


        Iterator<Product> iterator = products.iterator();

        while (iterator.hasNext()){
            Product product = iterator.next();
            if(!product.getCategory().getName().equals(sort)){
                iterator.remove();
            }
        }


        String pages = "";

        for(int i = 0; i < products.getTotalPages(); i++){

            pages+= i+ "-";

        }
        model.addAttribute("totalPages", products.getTotalPages());
            model.addAttribute("pages", pages);
            model.addAttribute("products", products);
            model.addAttribute("type",sort);
            model.addAttribute("sort", "id");


        return "views-user-shopBy";
    }



//
    @RequestMapping(value="/addNewProduct",method = RequestMethod.GET)
    public String addNewProduct(@ModelAttribute("product")Product product, @RequestParam("brand") String brand , @RequestParam("category") String category,
                                @RequestParam("man") String man, @RequestParam("model") String model){

        product.setCategory(categoryService.findOne(Integer.parseInt(category)));
        product.setBrand(brandService.findOne(Integer.parseInt(brand)));
        product.setManager(managerService.findOne(Integer.parseInt(man)));
        product.setModel(modelService.findOne(Integer.parseInt(model)));
        productService.save(product);
        return "redirect:/adminpanel";
    }

    @RequestMapping(value="/changeProduct/{id}",method = RequestMethod.GET)
    public String changeProduct(HttpSession session, @PathVariable("id") String id, @RequestParam("value") String value,
                                @RequestParam("whatChange") String whatChange, @RequestParam("brand") String brand){
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
        return "redirect:/adminpanel";
    }


    @RequestMapping(value = "/saveImageForProduct", method = RequestMethod.POST)
    public String saveImageForProduct(Principal principal , @RequestParam("id") String id , @RequestParam MultipartFile image) {

        productService.saveImageForProduct(id,image);


        return "redirect:/adminpanel";
    }

    @GetMapping("/pageable/{currentPage}/{totalElement}/{sort}")
    public String pageable(@PathVariable int currentPage, @PathVariable int totalElement ,@PathVariable("sort") String sort, Model model) {

        Sort sort1 = null;

        if(sort.equals("sortDesc")){
             sort1 = new Sort(Sort.Direction.DESC,"price");
        }else{

             sort1 = new Sort(sort);

        }
        Page<Product> products = productService.findAll(currentPage, totalElement, sort1);
        String pages = "";
        for(int i = 0; i < products.getTotalPages(); i++){
            pages+= i+ "-";
        }

        model.addAttribute("totalPages", products.getTotalPages());

        model.addAttribute("pages", pages);

        model.addAttribute("products", products);

        model.addAttribute("sort", sort);

        return "views-user-products";
    }

    @GetMapping("/typepageable/{currentPage}/{totalElement}/{sort}/{type}")
    public String sortPageable(@PathVariable("type") String type,@PathVariable int currentPage, @PathVariable int totalElement ,@PathVariable("sort") String sort, Model model) {

        Sort sort1 = null;

        if(sort.equals("sortDesc")){
            sort1 = new Sort(Sort.Direction.DESC,"price");
        }else{

            sort1 = new Sort(sort);

        }
        Page<Product> products = productService.findAll(currentPage, totalElement, sort1);
        Iterator<Product> iterator = products.iterator();

        while (iterator.hasNext()){
            Product product = iterator.next();
            if(!product.getCategory().getName().equals(type)){
                iterator.remove();
            }
        }

        String pages = "";
        for(int i = 0; i < products.getTotalPages(); i++){
            pages+= i+ "-";
        }

        model.addAttribute("totalPages", products.getTotalPages());

        model.addAttribute("pages", pages);

        model.addAttribute("products", products);

        model.addAttribute("sort", sort);

        return "views-user-shopBy";
    }



}
