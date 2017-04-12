package shop.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import shop.entity.Brand;
import shop.service.BrandService;

@Controller
public class BrandController {
	
	@Autowired 
	private BrandService brandService;

//kkekekkeke
	
	
	@RequestMapping(value="/addBrand",method = RequestMethod.GET)
	public String addBrand(Model model){
		model.addAttribute("brands", brandService.findAll());
		model.addAttribute("brand",new Brand());
		return "views-base-brand";
	}
	
	@RequestMapping(value="/addBrand",method = RequestMethod.POST)
	public String addBrand(@ModelAttribute("brand") Brand brand,HttpSession session){

		session.setAttribute("do","brand");
		brandService.save(brand);
		
		return "redirect:/adminpanel";
	}
	//loxloxlox

	@RequestMapping(value="/deleteBrand/{id}",method = RequestMethod.GET)
	public String deleteBrand(HttpSession session,@PathVariable String id){
		Brand brand = brandService.findOne(Integer.parseInt(id));
		brandService.delete(brand);
		session.setAttribute("do","brand");
		
		
		return "redirect:/adminpanel";
	}
	
	
	@RequestMapping(value="/changeNewBrand/{id}",method = RequestMethod.GET)
	public String changeNewBrand(HttpSession session ,@PathVariable("id") String id,@RequestParam("name") String name){
		Brand brand = brandService.findOne(Integer.parseInt(id));
		brand.setName(name);
		brandService.update(brand);
		session.setAttribute("do","brand");
		
		
		return "redirect:/adminpanel";
	}
	

}
