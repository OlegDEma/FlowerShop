package shop.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class ProductDescription {

	@Id
	 @GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	private String description;
	
	@OneToMany(mappedBy="productDescription")
	private List<Category> categories;
	
	@OneToMany(mappedBy="productDescription")
	private List<Subcategory> subcategories;

	public ProductDescription() {
		super();
	}	

	public ProductDescription(String description) {
		super();
		this.description = description;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<Category> getCategories() {
		return categories;
	}

	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}

	public List<Subcategory> getSubcategories() {
		return subcategories;
	}

	public void setSubcategories(List<Subcategory> subcategories) {
		this.subcategories = subcategories;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	
	
	
	
}
