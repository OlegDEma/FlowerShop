package shop.controller;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import shop.entity.Cart;
import shop.entity.Role;
import shop.entity.User;
import shop.service.CartService;
import shop.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;

	@Autowired
	private CartService cartService;
	
    

	 @RequestMapping(value = "/registration", method = RequestMethod.POST)
	    public String saveUser(@ModelAttribute User user, Model model) {

	        String uuid = UUID.randomUUID().toString();

	        user.setUuid(uuid);
	        user.setRole(Role.ROLE_USER);
	            userService.save(user);
	        String theme = "thank's for registration";
	        String mailBody =
	                "gl & hf       http://localhost:8080/confirm/" + uuid;

	        userService.sendMail(theme, mailBody, user.getMail());

	        User user1 = userService.findByUuid(uuid);

         Cart cart = new Cart();

         cart.setName("default");
         cart.setUser(user1);

         cartService.save(cart);

	        return "redirect:/";
	    }
	 
	  @RequestMapping(value = "/confirm/{uuid}", method = RequestMethod.GET)
	    public String confirm(@PathVariable String uuid) {

	        User user = userService.findByUuid(uuid);
	        user.setEnabled(true);
	        user.setAccountNonLocked(true);
	        

	        userService.update(user);

	        return "redirect:/";
	    }

	@RequestMapping(value = "/ban/{id}", method = RequestMethod.GET)
	public String ban(@PathVariable String id) {

		User user = userService.ban(Integer.parseInt(id));
		userService.update(user);

		return "redirect:/adminpanel";
	}

	@RequestMapping(value = "/unban/{id}", method = RequestMethod.GET)
	public String unban(@PathVariable String id) {

		User user = userService.unban(Integer.parseInt(id));
		userService.update(user);

		return "redirect:/adminpanel";
	}
	 

}
