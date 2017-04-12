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

import shop.entity.Category;
import shop.service.CategoryService;

@Controller
public class CategoryController {

	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping(value="/addCategory",method = RequestMethod.GET)
	public String addCategory2(HttpSession session ,@ModelAttribute("category") Category category){
		categoryService.save(category);
		session.setAttribute("do","category");
		return "redirect:/adminpanel";
	}
	
	@RequestMapping(value="/deleteCategory/{id}",method = RequestMethod.GET)
	public String deleteCategory(HttpSession session,@PathVariable("id") String id){
		categoryService.delete(Integer.parseInt(id));
		session.setAttribute("do","category");
		return "redirect:/adminpanel";
	}
	
	@RequestMapping(value="/changeCategory",method = RequestMethod.GET)
	public String changeCategory(@RequestParam("id") String id,HttpSession session){
		session.setAttribute("id", id);
		return "views-base-categorychange";
	}
	
	@RequestMapping(value="/changeNewCategory/{id}",method = RequestMethod.GET)
	public String changeCategory2(@RequestParam("name") String newName,@PathVariable("id") String id ,HttpSession session){
		Category category = categoryService.findOne(Integer.parseInt(id));
		category.setName(newName);
		categoryService.update(category);
		session.setAttribute("do","category");
		return "redirect:/adminpanel";
	}
}
