package shop.controller;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import shop.dto.BrandDTO;
import shop.dto.DTOUtilMapper;
import shop.dto.ModelDTO;
import shop.dto.ProductDTO;
import shop.entity.*;
import shop.service.BrandService;
import shop.service.CartService;
import shop.service.CategoryService;
import shop.service.DeliveryService;
import shop.service.ManagerService;
import shop.service.ModelService;
import shop.service.ProductDescriptionService;
import shop.service.ProductService;
import shop.service.SaleService;
import shop.service.SubcategoryService;
import shop.service.UserService;

import static shop.controller.Main.createSamplePDF;

@Controller
public class HomeController {

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



	@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	public String home(Model model,Principal principal){
		model.addAttribute("products", productService.findAll());

		return "views-user-home";
	}





	@RequestMapping(value = { "/cart" }, method = RequestMethod.GET)
	public String cart(Model model , Principal principal){
		model.addAttribute("user",userService.findOne(Integer.parseInt(principal.getName())));
		return "views-user-cart";
	}

	@RequestMapping(value = { "/about" }, method = RequestMethod.GET)
	public String cart(){

		return "views-user-about";
	}

	@RequestMapping(value = { "/services" }, method = RequestMethod.GET)
	public String services(){

		return "views-user-services";
	}

	@RequestMapping(value = { "/contact" }, method = RequestMethod.GET)
	public String contact(){

		return "views-user-contact";
	}

	@RequestMapping(value = { "/portfolio" }, method = RequestMethod.GET)
	public String portfolio(){

		return "views-admin-404";
	}

	@RequestMapping(value = { "/adminpanel" }, method = RequestMethod.GET)
	public String adminpanel(HttpSession session, Model model){

        model.addAttribute("product",new Product());
        model.addAttribute("products", productService.findAll());
        model.addAttribute("brands", brandService.findAll());
        model.addAttribute("categorys", categoryService.findAll() );
        model.addAttribute("managers", managerService.findAll());
        model.addAttribute("models", modelService.findAll());
        model.addAttribute("brand", new Brand());
        model.addAttribute("model", new shop.entity.Model());
		model.addAttribute("manager", new Manager());
		model.addAttribute("category", new Category());
		model.addAttribute("subcategory", new Subcategory());
		model.addAttribute("subcategorys", subcategoryService.findAll());
		model.addAttribute("delivery", new Delivery());
		model.addAttribute("deliverys", deliveryService.findAll());
		model.addAttribute("users", userService.findAll());
        try{
        	String d = session.getAttribute("do").toString();
			if(d.equals("change")){

				model.addAttribute("whatToDo","change");
				session.invalidate();
			}else if(d.equals("brand")){
				model.addAttribute("whatToDo","brand");
				session.invalidate();
			}else if(d.equals("model")){
				model.addAttribute("whatToDo","model");
				session.invalidate();
			}else if(d.equals("manager")){
				model.addAttribute("whatToDo","manager");
				session.invalidate();
			}else if(d.equals("category")){
				model.addAttribute("whatToDo","category");
				session.invalidate();
			}else if(d.equals("subcategory")){
				model.addAttribute("whatToDo","subcategory");
				session.invalidate();
			}else if(d.equals("delivery")){
				model.addAttribute("whatToDo","delivery");
				session.invalidate();
			}
		}catch (Exception e){
			System.out.println(e.getStackTrace());
		}



		return "views-admin-adminpanel";
	}


	@RequestMapping(value = "/home", method = RequestMethod.POST)
	public String loginprocesing() {
		return "redirect:/";

	}

	@RequestMapping(value = "/ad", method = RequestMethod.GET)
	public String ad() {
		String price = "price";
		Sort sort = new Sort(price);
		return "views-base-ad";

	}

	//DELIVERY

	@RequestMapping(value="/addDelivery",method = RequestMethod.GET)
	public String addDelivery(Model model){
		model.addAttribute("deliverys", deliveryService.findAll());
		model.addAttribute("delivery", new Delivery());
		return "views-base-delivery";
	}

	@RequestMapping(value="/addNewDelivery",method = RequestMethod.GET)
	public String addNewDelivery(HttpSession session, @ModelAttribute("delivery") Delivery delivery){
		deliveryService.save(delivery);
		session.setAttribute("do", "delivery");
		return "redirect:/adminpanel";
	}
	@RequestMapping(value="/deleteDelivery/{id}",method = RequestMethod.GET)
	public String deleteDelivery(HttpSession session , @PathVariable("id") String id){
		deliveryService.delete(Integer.parseInt(id));
		session.setAttribute("do", "delivery");
		return "redirect:/adminpanel";
	}

	@RequestMapping(value="/changeNewDelivery/{id}",method = RequestMethod.GET)
	public String changeNewDelivery(HttpSession session ,@PathVariable("id") String id,@RequestParam("name") String name){
		Delivery delivery = deliveryService.findOne(Integer.parseInt(id));
		delivery.setFirmOfDelivery(name);
		deliveryService.update(delivery);
		session.setAttribute("do","delivery");


		return "redirect:/adminpanel";
	}

	//MANAGER

	@RequestMapping(value="/addManager",method = RequestMethod.GET)
	public String addManager(Model model){
		model.addAttribute("manager", new Manager());
		model.addAttribute("managers", managerService.findAll());
		return "views-base-manager";
	}

	@RequestMapping(value="/addNewManager",method = RequestMethod.GET)
	public String addNewManager(HttpSession session ,@ModelAttribute("manager") Manager manager){
		managerService.save(manager);
		session.setAttribute("do","manager");

		return "redirect:/adminpanel";
	}

	@RequestMapping(value="/deleteManager/{id}",method = RequestMethod.GET)
	public String addNewManager(HttpSession session ,@PathVariable("id") String id){
		managerService.delete(Integer.parseInt(id));
		session.setAttribute("do","manager");
		return "redirect:/adminpanel";
	}

	@RequestMapping(value="/changeNewManager/{id}",method = RequestMethod.GET)
	public String changeNewManager(HttpSession session ,@PathVariable("id") String id,@RequestParam("name") String name){
		Manager manager = managerService.findOne(Integer.parseInt(id));
		manager.setName(name);
		managerService.update(manager);
		session.setAttribute("do","manager");


		return "redirect:/adminpanel";
	}


	//Model

	@RequestMapping(value="/addModel",method = RequestMethod.GET)
	public String addModel(Model model){
		model.addAttribute("model", new shop.entity.Model());
		model.addAttribute("models", modelService.findAll());

		return "views-base-model";
	}



	@RequestMapping(value="/deleteModel/{id}",method = RequestMethod.GET)
	public String deleteModel(HttpSession session ,@PathVariable("id") String id){
		modelService.delete(Integer.parseInt(id));
		session.setAttribute("do","model");

		return "redirect:/adminpanel";
	}

	@RequestMapping(value="/changeNewModel/{id}",method = RequestMethod.GET)
	public String changeNewModel(HttpSession session ,@PathVariable("id") String id,@RequestParam("name") String name){
		shop.entity.Model model = modelService.findOne(Integer.parseInt(id));
		model.setNameOfModel(name);
		modelService.update(model);
		session.setAttribute("do","model");


		return "redirect:/adminpanel";
	}




	//ProductDesc

	@RequestMapping(value="/addProductDesc",method = RequestMethod.GET)
	public String addProductDesc(Model model){
		model.addAttribute("productDesc", new ProductDescription());
		model.addAttribute("productDescs", poductDescriptionService.findAll());
		return "views-base-productdesc";
	}

	@RequestMapping(value="/addNewProductDesc",method = RequestMethod.GET)
	public String addNewProductDesc(@ModelAttribute("productDesc") ProductDescription productDescription){
		poductDescriptionService.save(productDescription);
		return "redirect:/adminpanel";
	}

	@RequestMapping(value="/deleteProductDesc/{id}",method = RequestMethod.GET)
	public String deleteProductDesc(@PathVariable("id") String id){
		poductDescriptionService.delete(Integer.parseInt(id));
		return "redirect:/adminpanel";
	}


	//Sale

	@RequestMapping(value="/addSale",method = RequestMethod.GET)
	public String addSale(Model model){
		model.addAttribute("sale",new Sale());
		model.addAttribute("sales", saleService.findAll());
		return "views-base-sale";
	}

	@RequestMapping(value="/addNewSale",method = RequestMethod.GET)
	public String addNewSale(@ModelAttribute("sale") Sale sale){
		saleService.save(sale);
		return "redirect:/adminpanel";
	}

	@RequestMapping(value="/deleteSale/{id}",method = RequestMethod.GET)
	public String deleteSale(@PathVariable("id") String id){
		saleService.delete(Integer.parseInt(id));
		return "redirect:/adminpanel";
	}



	//Subcategory

	@RequestMapping(value="/addSubcategory",method = RequestMethod.GET)
	public String addSubcategory(Model model){
		model.addAttribute("subcategory", new Subcategory());
		model.addAttribute("subcategorys", subcategoryService.findAll());
		return "views-base-subcategory";
	}

	@RequestMapping(value="/addNewSubcategory",method = RequestMethod.GET)
	public String addNewSale(HttpSession session , @ModelAttribute("subcategory")  Subcategory subcategory){
		subcategoryService.save(subcategory);
		session.setAttribute("do","subcategory");
		return "redirect:/adminpanel";
	}

	@RequestMapping(value="/deleteSubcategory/{id}",method = RequestMethod.GET)
	public String deleteSubcategory(HttpSession session ,@PathVariable("id") String id){
		subcategoryService.delete(Integer.parseInt(id));
		session.setAttribute("do","subcategory");
		return "redirect:/adminpanel";
	}

	@RequestMapping(value="/changeNewSubcategory/{id}",method = RequestMethod.GET)
	public String changeNewSubcategory(@RequestParam("name") String newName,@PathVariable("id") String id ,HttpSession session){
		Subcategory subcategory = subcategoryService.findOne(Integer.parseInt(id));
		subcategory.setName(newName);
		subcategoryService.update(subcategory);
		session.setAttribute("do","subcategory");
		return "redirect:/adminpanel";
	}


	//User

	@RequestMapping(value="/addUser",method = RequestMethod.GET)
	public String addUser(Model model,Principal principal){
		model.addAttribute("user", new User());
		model.addAttribute("users", userService.findAll());
		model.addAttribute("me", userService.findOne(Integer.parseInt(principal.getName())));
		return "views-base-user";
	}
	@RequestMapping(value="/addNewUser",method = RequestMethod.GET)
	public String addNewUser(@ModelAttribute("user") User user){
		userService.save(user);
		return "redirect:/adminpanel";
	}

	@RequestMapping(value="/deleteUser/{id}",method = RequestMethod.GET)
	public String deleteUser(@PathVariable("id") String id){
		userService.delete(Integer.parseInt(id));
		return "redirect:/adminpanel";
	}

	@RequestMapping(value="/saveImage",method = RequestMethod.POST)
	public String saveImage(Principal principal , @RequestParam MultipartFile image){
		userService.saveImage(principal, image);
		return "redirect:/adminpanel";
	}

	//Cart

	@RequestMapping(value="/addCart",method = RequestMethod.GET)
	public String addCart(@ModelAttribute("newCart") Cart cart,Principal principal){
		User user = userService.findOne(Integer.parseInt(principal.getName()));
		cart.setUser(user);
		cartService.save(cart);
		user.getCarts().add(cart);
		userService.update(user);


		return "redirect:/adminpanel";
	}

	@RequestMapping(value="/addInCart/{id}",method = RequestMethod.GET)
	public String addInCart(@PathVariable("id") String id,/*@RequestParam("cartId") String cartID*/ Principal principal){
		List<Cart> list = userService.findOne(Integer.parseInt(principal.getName())).getCarts();
		Cart cart = null;
		for (Cart cart1:list) {
			if(cart1.getName().equals("default")){
				cart = cart1;
			}
		}
		Product product = productService.findOne(Integer.parseInt(id));
		cart.setTotal(cart.getTotal()+product.getPrice());
		cart.getProduct().add(product);
		cartService.update(cart);
		return "OK";
	}



	@RequestMapping(value="/deleteCart/{id}",method = RequestMethod.GET)
	public String deleteCart(@PathVariable("id") String id){

		Cart cart = cartService.findOne(Integer.parseInt(id));
		cartService.delete(cart);
		return "redirect:/adminpanel";
	}


	@RequestMapping("/productdetails/{id}")
	public String productdetails(@PathVariable("id") String id , Model model) {
		model.addAttribute("product", productService.findOne(Integer.parseInt(id)));
		model.addAttribute("products",productService.findAll());
		return "views-user-productdetails";
	}

	@RequestMapping("/loginpage")
	public String login(Model model) {
		model.addAttribute("user", new User());
		model.addAttribute("page", "login");
		return "views-admin-loginpage";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout() {

		return "redirect:/";
	}
	
	@RequestMapping(value = "/reg", method = RequestMethod.GET)
	public String reg(Model model) {
		
		model.addAttribute("user", new User());
		

		return "views-admin-registration";
	}
    @RequestMapping(value = "/new", method = RequestMethod.GET)
    public String newJsp(Model model) {


        return "views-base-new";
    }

	@RequestMapping(value = "/checkName", method = RequestMethod.GET)
	public @ResponseBody String checkname(Brand brand) {
			if(brand != null){
				return "yes";
			}else{
				return "no";
			}
		}


	@RequestMapping(value = "/saveCountry", method = RequestMethod.POST)
    @ResponseBody
	public String saveCountry(@RequestBody Brand brand) {

//		brandService.save(brand);

		return "yes";

	}

    @RequestMapping(value = "/rest", method = RequestMethod.POST, consumes = "application/json")
    public @ResponseBody String rest(@RequestBody Brand brand){
        brandService.save(brand);
        return "OK";
    }

	@RequestMapping(value = "/addNewModel", method = RequestMethod.POST, consumes = "application/json")
	public @ResponseBody String addNewModel(@RequestBody shop.entity.Model model){
		modelService.save(model);
		return "OK";
	}

    @RequestMapping(value = "/loadModel", method = RequestMethod.GET)
    @ResponseBody
    public List<ModelDTO> loadModel(){
        return DTOUtilMapper.modelsTomodelsDTO(modelService.findAll());
    }

    @RequestMapping(value = "/deleteModel", method = RequestMethod.POST)
    public String deleteModel(@RequestBody String index) {


        modelService.delete(Integer.parseInt(index));

        return "OK";

    }

	@RequestMapping(value = "/load", method = RequestMethod.GET)
	@ResponseBody
	public List<BrandDTO> reload(){
		return DTOUtilMapper.brandsToBrandsDTO(brandService.findAll());
	}



	@RequestMapping(value = "/loadProduct", method = RequestMethod.GET)
	@ResponseBody
	public List<ProductDTO> loadProduct(){
		return DTOUtilMapper.productsToProductsDTO(productService.findAll());
	}


	@RequestMapping(value = "/cartInfo", method = RequestMethod.GET)
	@ResponseBody
	public List<String> reload(Principal principal){
		List<String> list = new ArrayList<String>();
		if(principal ==  null || principal.getName().equals("admin")){
			list.add("0");
			list.add("0");
			list.add("Admin");
			return list;
		}else {
			list.add(productService.getCartInfoProduct(principal));
			list.add(String.valueOf(userService.findOne(Integer.parseInt(principal.getName())).getCarts().get(0).getTotal()));
			list.add(userService.findOne(Integer.parseInt(principal.getName())).getName());
			return list;
			}
	}

	@RequestMapping(value = "/searchRes", method = RequestMethod.GET)
    @ResponseBody
	public List<ProductDTO> searchRes() {

        return DTOUtilMapper.productsToProductsDTO(productService.findAll());

	}

	@RequestMapping(value = "/loadCart", method = RequestMethod.POST)
	@ResponseBody
	public List<ProductDTO> loadCart(Principal principal){
		User user = userService.findOne(Integer.parseInt(principal.getName()));
		List<Product> products = user.getCarts().get(0).getProduct();

		return DTOUtilMapper.productsToProductsDTO(products);
	}

	@RequestMapping(value = "/deleteProduct", method = RequestMethod.POST)
	public String deleteProduct(@RequestBody String index) {


		productService.delete(Integer.parseInt(index));

		return "OK";
	}



}

	


