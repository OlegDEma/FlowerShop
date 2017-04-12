package shop.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;


@Entity
public class Product {

	@Id
	 @GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	private String name;
	
	private String image;
	
	private double price;
	
	private int guarantee;
	
	@ManyToMany
	@JoinTable(name = "cart_product", joinColumns = @JoinColumn(name = "product_id"), inverseJoinColumns = @JoinColumn(name = "cart_id"))
	private List<Cart> cart ;

	@ManyToOne(fetch = FetchType.LAZY ,cascade = {CascadeType.MERGE})
	@JoinColumn(name="brand_id")
	private Brand brand;
	
	@ManyToOne()
	@JoinColumn(name="model_id")
	private Model model;
	
	
	@ManyToOne()
	@JoinColumn(name="manager_id")
	private Manager manager;
	
	@ManyToOne()
	@JoinColumn(name="category_id")
	private Category category;
	
	@ManyToOne
	@JoinColumn(name="sale_id")
	private Sale sale;

	public Product() {
		super();
	}

	public Product(String name, double price, int guarantee) {
		super();
		this.name = name;
		this.price = price;
		this.guarantee = guarantee;
	}
	
	
	


	public List<Cart> getCart() {
		return cart;
	}

	public void setCart(List<Cart> cart) {
		this.cart = cart;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getGuarantee() {
		return guarantee;
	}

	public void setGuarantee(int guarantee) {
		this.guarantee = guarantee;
	}

	public Brand getBrand() {
		return brand;
	}

	public void setBrand(Brand brand) {
		this.brand = brand;
	}

	public Model getModel() {
		return model;
	}

	public void setModel(Model model) {
		this.model = model;
	}

	public Manager getManager() {
		return manager;
	}

	public void setManager(Manager manager) {
		this.manager = manager;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Sale getSale() {
		return sale;
	}

	public void setSale(Sale sale) {
		this.sale = sale;
	}

	@Override
	public String toString() {
		return "Product{" +
				"id=" + id +
				", name='" + name + '\'' +
				", image='" + image + '\'' +
				", price=" + price +
				", guarantee=" + guarantee +
				", cart=" + cart +
				", brand=" + brand +
				", model=" + model +
				", manager=" + manager +
				", category=" + category +
				", sale=" + sale +
				'}';
	}
}
