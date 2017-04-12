package shop.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Cart {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	private String name;
	
	private double total;
	
	@ManyToOne
	private User user;
	
	@ManyToMany
	@JoinTable(name = "cart_product", joinColumns = @JoinColumn(name = "cart_id"), inverseJoinColumns = @JoinColumn(name = "product_id"))
	private List<Product> product ;
	
	public Cart() {
		super();
	}	
	

	public Cart(String name) {
		super();
		this.name = name;
	}
	


	public List<Product> getProduct() {
		return product;
	}


	public void setProduct(List<Product> product) {
		this.product = product;
	}


	public String getNameOfCart() {
		return name;
	}


	public void setNameOfCart(String name) {
		this.name = name;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}



	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	@Override
	public String toString() {
		return "Cart [id=" + id + ", name=" + name + ", total=" + total + ", user=" + user ;
	}
	
	
	

	
	
}
