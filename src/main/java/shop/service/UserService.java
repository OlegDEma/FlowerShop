package shop.service;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import shop.entity.User;

public interface UserService{
	
	void save(User user);
	User findOne(int id);
	User findByNameAndSurname(String name, String surname);
	void delete(User user);
	void delete(int id);
	void update(User user);
	List<User> findAll();
	User findByName(String name);
	void changePassword(String oldPassword, String newPassword);
	public String getClientIpAddr(HttpServletRequest request);
	void sendMail(String theme, String mailBody, String email);
	User findByUuid(String uuid);
	 public void saveImage(Principal principal, MultipartFile multipartFile);

}
