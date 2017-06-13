package shop.bean;

import org.springframework.beans.factory.annotation.Autowired;
import shop.entity.User;
import shop.service.UserService;

import java.security.Principal;

/**
 * Created by Dema on 06.06.2017.
 */
public class BeanStart {

    @Autowired
    UserService userService;

    private String total;

    public BeanStart(Principal principal) {
        User user = userService.findOne(Integer.parseInt(principal.getName()));
       String tot = String.valueOf(user.getCarts().get(0).getTotal());
        this.total = tot;
    }
}
