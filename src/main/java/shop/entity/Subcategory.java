package shop.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Subcategory {

	@Id
	 @GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	private String name;
	
	@ManyToOne
	private ProductDescription productDescription;

	public Subcategory(String name) {
		super();
		this.name = name;
	}

	public Subcategory() {
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


	@Override
	public String toString() {
		return "Subcategory [id=" + id + ", name=" + name + ", productDescription=" + productDescription + "]";
	}


}
