package shop.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import shop.dto.BrandDTO;
import shop.dto.DTOUtilMapper;
import shop.entity.Brand;
import shop.entity.Cart;
import shop.entity.Product;
import shop.entity.User;
import shop.service.BrandService;
import shop.service.CartService;
import shop.service.ProductService;
import shop.service.UserService;

import java.security.Principal;
import java.util.Iterator;
import java.util.List;

@Controller
public class  BrandController {
	
	@Autowired 
	private BrandService brandService;

	@Autowired
	private UserService userService;

	@Autowired
	private CartService cartService;

    @Autowired
    private ProductService productService;
	
	
	@RequestMapping(value="/addBrand",method = RequestMethod.GET)
	public String addBrand(Model model){
		model.addAttribute("brands", brandService.findAll());
		model.addAttribute("brand",new Brand());
		return "views-base-brand";
	}
	
	@RequestMapping(value="/addBrand",method = RequestMethod.POST)
    @ResponseBody
	public String addBrand(@RequestBody Brand brand/*, HttpSession session*/){

//		session.setAttribute("do","brand");
		brandService.save(brand);
		
		return "redirect:/adminpanel";
	}

    @RequestMapping(value = "/saveCountry", method = RequestMethod.GET)
    @ResponseBody
    public List<Brand> saveCountry(@RequestBody Brand brand) {

//        brandService.save(country);
        System.out.println("qwe");
        return brandService.findAll();

    }
	
	@RequestMapping(value="/deleteBrand/{id}",method = RequestMethod.GET)
	public String deleteBrand(HttpSession session,@PathVariable String id){
		Brand brand = brandService.findOne(Integer.parseInt(id));
		brandService.delete(brand);
		session.setAttribute("do","brand");
		
		
		return "redirect:/adminpanel";
	}

	@RequestMapping(value="/delete",method = RequestMethod.GET)
	public @ResponseBody String delete(@RequestBody String id){
		Brand brand = brandService.findOne(Integer.parseInt(id));
		brandService.delete(brand);
		return "OK";
	}
	
	
	@RequestMapping(value="/changeNewBrand/{id}",method = RequestMethod.GET)
	public String changeNewBrand(HttpSession session ,@PathVariable("id") String id,@RequestParam("name") String name){
		Brand brand = brandService.findOne(Integer.parseInt(id));
		brand.setName(name);
		brandService.update(brand);
		session.setAttribute("do","brand");
		
		
		return "redirect:/adminpanel";
	}

//    @RequestMapping(value="/show",method = RequestMethod.POST)
//    @ResponseBody
//    public String show(String id){
//
////		session.setAttribute("do","brand");
////        brandService.save(brand);
//        System.out.println("DADLMA{SJD{OJASD");
//
//        return id;
//    }

    @RequestMapping(value = "/deleteCountry", method = RequestMethod.POST)
    public String loadCountries(@RequestBody String index) {

        brandService.delete(Integer.parseInt(index));

        return "OK";

    }

    @RequestMapping(value = "/addProd", method = RequestMethod.POST)
    public String addProd(@RequestBody String index, Principal principal) {

        System.out.println("EEEEEEEEEEZZZZZZZZZZZZZZ");

        List<Cart> list = userService.findOne(Integer.parseInt(principal.getName())).getCarts();
        Cart cart = null;
        for (Cart cart1:list) {
            if(cart1.getName().equals("default")){
                cart = cart1;
            }
        }
        Product product = productService.findOne(Integer.parseInt(index));
        cart.setTotal(cart.getTotal()+product.getPrice());
        cart.getProduct().add(product);
        cartService.update(cart);

        return "OK";

    }

	@RequestMapping(value = "/deleteProdInCart", method = RequestMethod.POST)
	public String deleteProdInCart(@RequestBody String id, Principal principal) {
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

		return "OK";

	}
	

}
