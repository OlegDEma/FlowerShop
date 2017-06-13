package shop.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import shop.dto.BrandDTO;
import shop.dto.DTOUtilMapper;
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
		model.addAttribute("user",new User());
		model.addAttribute("products", productService.findAll());
		
		if(principal ==  null || principal.getName().equals("admin")){

        }else{
            model.addAttribute("many",productService.getCartInfoProduct(principal));
            model.addAttribute("price",userService.findOne(Integer.parseInt(principal.getName())).getCarts().get(0).getTotal());
        }

		return "views-user-home";
	}

	@RequestMapping(value = { "/cart" }, method = RequestMethod.GET)
	public String cart(Model model , Principal principal){
		model.addAttribute("user",userService.findOne(Integer.parseInt(principal.getName())));

		if(principal ==  null || principal.getName().equals("admin")){

		}else{
			model.addAttribute("many",productService.getCartInfoProduct(principal));
			model.addAttribute("price",userService.findOne(Integer.parseInt(principal.getName())).getCarts().get(0).getTotal());
		}
		return "views-user-cart";
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

	@RequestMapping(value="/addNewModel",method = RequestMethod.GET)
	public String addNewModel(HttpSession session ,@ModelAttribute("model") shop.entity.Model model ){
		modelService.save(model);
		session.setAttribute("do","model");
		return "redirect:/adminpanel";
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


	//Product
//
//
//	@RequestMapping(value="/products",method = RequestMethod.GET)
//	public String addProduct(HttpSession session ,Model model , String sort){
////			model.addAttribute("begin","1");
////			model.addAttribute("end","6");
//		System.out.println(sort);
//		if (sort == null){
//			model.addAttribute("products", productService.findAll());
//		}else {
//			List<Product> products = productService.sort(sort);
//			model.addAttribute("products", products);
//		}
////		model.addAttribute("products", productService.findAll());
////		System.out.println(session.getAttribute("begin"));
////		session.invalidate();
//		if (session.getAttribute("begin") == null){
//			model.addAttribute("begin","1");
//			model.addAttribute("end","12");
//		}else {
////			System.out.println(session.getAttribute("begin"));
////			System.out.println(session.getAttribute("end"));
//			String begin = (String) session.getAttribute("begin");
//			String end = (String) session.getAttribute("end");
//			model.addAttribute("begin",begin);
//			model.addAttribute("end",end);
////			session.invalidate();
//		}
//		return "views-user-products";
//	}
//
//	@RequestMapping(value="/sort/{sort}",method = RequestMethod.GET)
//	public String sort(HttpSession session ,Model model,@PathVariable("sort") String sort){
//
//
//			List<Product> products = productService.sort(sort);
//		for (Product product: products) {
//			System.out.println(product.getCategory().getName());
//		}
//			model.addAttribute("products", products);
//
//		if (session.getAttribute("begin") == null){
//			model.addAttribute("begin","1");
//			model.addAttribute("end","12");
//		}else {
////			System.out.println(session.getAttribute("begin"));
////			System.out.println(session.getAttribute("end"));
//			String begin = (String) session.getAttribute("begin");
//			String end = (String) session.getAttribute("end");
//			model.addAttribute("begin",begin);
//			model.addAttribute("end",end);
////			session.invalidate();
//		}
//		return "views-user-products";
//	}
//
//	@RequestMapping(value="/page",method = RequestMethod.GET)
//	public String page(HttpSession session, String id){
//		session.setAttribute("begin","7");
//		session.setAttribute("end","12");
//		return "redirect:/products";
//	}
//
//	@RequestMapping(value="/nextPage",method = RequestMethod.GET)
//	public String nextPage(HttpSession session, String begin , String end){
//
//		List<Product> products = productService.findAll();
//		int size = products.size();
//		int beginInt = Integer.parseInt(begin);
//		int endInt = Integer.parseInt(end);
//		if(endInt > size){
//			session.setAttribute("begin",String.valueOf(beginInt));
//			session.setAttribute("end", String.valueOf(endInt));
//		}else {
//			int newBegin = endInt+1;
//			int newEnd = newBegin+12-1;
//			session.setAttribute("begin",String.valueOf(newBegin));
//			session.setAttribute("end", String.valueOf(newEnd));
//		}
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
//		return "redirect:/products";
//	}
//	@RequestMapping(value="/prevPage",method = RequestMethod.GET)
//	public String prevPage(HttpSession session, String begin , String end){
//
//		int beginInt = Integer.parseInt(begin);
//		int endInt = Integer.parseInt(end);
//
//		 endInt = beginInt-1;
//		 beginInt = endInt-12+1;
//		 if (beginInt < 1){
//			 session.setAttribute("begin","1");
//			 session.setAttribute("end","12");
//		 }else {
//			 session.setAttribute("begin",String.valueOf(beginInt));
//			 session.setAttribute("end", String.valueOf(endInt));
//		 }
//
//
//		System.out.println(beginInt);
//		System.out.println(endInt);
////		System.out.println("qwe");
////		System.out.println(newBegin);
////		System.out.println(newEnd);
//		return "redirect:/products";
//	}
//
//	@RequestMapping(value="/addNewProduct",method = RequestMethod.GET)
//	public String addNewProduct(@ModelAttribute("product")Product product,@RequestParam("brand") String brand , @RequestParam("category") String category,
//			@RequestParam("man") String man,@RequestParam("model") String model){
////		product.setBrand(brand);
////		System.out.println(brand);
////		System.out.println(brandService.findOne(Integer.parseInt(brand)));
//		product.setCategory(categoryService.findOne(Integer.parseInt(category)));
//		product.setBrand(brandService.findOne(Integer.parseInt(brand)));
//		product.setManager(managerService.findOne(Integer.parseInt(man)));
////		System.out.println(manager);
//		product.setModel(modelService.findOne(Integer.parseInt(model)));
////        System.out.println(product);
//        productService.save(product);
////		System.out.println(br);
//		return "redirect:/adminpanel";
//	}
//
//	@RequestMapping(value="/deleteProduct/{id}",method = RequestMethod.GET)
//	public String deleteProduct(@PathVariable("id") String id){
//		productService.delete(Integer.parseInt(id));
//		return "redirect:/adminpanel";
//	}
//
//	@RequestMapping(value="/changeProduct/{id}",method = RequestMethod.GET)
//	public String changeProduct(HttpSession session, @PathVariable("id") String id, @RequestParam("value") String value, @RequestParam("whatChange") String whatChange, @RequestParam("brand") String brand){
//		Product product = productService.findOne(Integer.parseInt(id));
//		if(whatChange.equals("name")){
//			product.setName(value);
//			productService.update(product);
//		}else if(whatChange.equals("price")){
//			product.setPrice(Double.parseDouble(value));
//			productService.update(product);
//		}else if(whatChange.equals("brand")){
//			product.setBrand(brandService.findOne(Integer.parseInt(brand)));
//			productService.update(product);
//
//		}
//		session.setAttribute("do","change");
//
//
//
//
//		return "redirect:/adminpanel";
//	}
//
//
//    @RequestMapping(value = "/saveImageForProduct", method = RequestMethod.POST)
//    public String saveImageForProduct(Principal principal ,@RequestParam("id") String id ,@RequestParam MultipartFile image) {
//
//        productService.saveImageForProduct(id,image);
//
//
//		return "redirect:/adminpanel";
//    }


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
//		Cart cart = cartService.findOne(Integer.parseInt(cartID));
//		Cart cart = cartService.findOne(50);
//		Cart cart = userService.findOne(Integer.parseInt(principal.getName())).getCarts().get(0);
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
		return "redirect:/";
	}


	@RequestMapping(value="/deleteCart/{id}",method = RequestMethod.GET)
	public String deleteCart(@PathVariable("id") String id){

		Cart cart = cartService.findOne(Integer.parseInt(id));
		cartService.delete(cart);
		return "redirect:/adminpanel";
	}

//	@RequestMapping(value="/deleteProdInCart/{id}/{name}",method = RequestMethod.GET)
//	public String deleteProdInCart(@PathVariable("id") String id,@PathVariable("name") String name,Principal principal){
//
//		User user = userService.findOne(Integer.parseInt(principal.getName()));
//		List<Cart> carts = user.getCarts();
//		Product product = productService.findOne(Integer.parseInt(id));
//		int index = 0;
//		for (Cart cart : carts) {
//			if(cart.getName().equals(name)){
//				List<Product> products = cart.getProduct();
//				Iterator<Product> iterator = products.iterator();
//				while (iterator.hasNext()) {
//					Product product2 = (Product) iterator.next();
//					if(product2.getId() == Integer.parseInt(id)){
//						cart.setTotal(cart.getTotal() - product2.getPrice());
//						iterator.remove();
//						cartService.update(cart);
//
//					}
//					break;
//				}
//
//			}
//		}
////		System.out.println(carts.get(0).getProduct());
//
//		userService.update(user);
//		return "redirect:/adminpanel";
//	}

	@RequestMapping(value="/deleteProdInCart/{id}",method = RequestMethod.GET)
	public String deleteProdInCart(@PathVariable("id") String id,Principal principal){
		User user = userService.findOne(Integer.parseInt(principal.getName()));
		List<Cart> list = user.getCarts();
		Cart cart = null;
		for (Cart cart1:list) {
			if(cart1.getName().equals("default")){
				cart = cart1;
			}
		}
		List<Product> products = cart.getProduct();
		Iterator<Product> iterator = products.iterator();
		while (iterator.hasNext()){
			Product product =  iterator.next();
			if (product.getId() == Integer.parseInt(id)){
				iterator.remove();
			}
		}

		cartService.update(cart);
		userService.update(user);

//		System.out.println(cart);

//		System.out.println(carts.get(0).getProduct());


		return "redirect:/cart";
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

	@RequestMapping(value = "/enable", method = RequestMethod.GET)
	public String enable() {
		User user = userService.findByName("Oleg");
		user.setEnabled(true);
		userService.update(user);

		return "redirect:/";
	}

	@RequestMapping(value = "/ez", method = RequestMethod.GET)
	public String ez(Principal principal,HttpServletRequest request) {

		String ipAddress = userService.getClientIpAddr(request);

		System.out.println(ipAddress);
		System.out.println(principal);
        System.out.println("rak");


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

	@RequestMapping(value="/qwe",method = RequestMethod.POST)
	public @ResponseBody String qwe(String id){

//		session.setAttribute("do","brand");
//        brandService.save(brand);
		System.out.println("DADLMA{SJD{OJASD");

		return id;
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

	@RequestMapping(value = "/load", method = RequestMethod.GET)
	@ResponseBody
	public List<BrandDTO> reload(){
		return DTOUtilMapper.brandsToBrandsDTO(brandService.findAll());
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



}

	


