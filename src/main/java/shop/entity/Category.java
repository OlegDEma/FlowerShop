package shop.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Category {

	@Id
	 @GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	private String name;

	@ManyToOne
	private ProductDescription productDescription;
	
	@OneToMany(mappedBy="category")
	private List<Product> products;

	public Category(String name) {
		super();
		this.name = name;
	}

	public Category() {
		super();
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

	public ProductDescription getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(ProductDescription productDescription) {
		this.productDescription = productDescription;
	}


	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	@Override
	public String toString() {
		return "Category [id=" + id + ", name=" + name + "]";
	}


}
