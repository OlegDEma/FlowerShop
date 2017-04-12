package shop.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Model { 
	
	@Id
	 @GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	private String nameOfModel;
	
	@OneToMany(mappedBy="model")
	private List<Product> products;

	public Model() {
		super();
	}

	public Model(String nameOfModel) {
		super();
		this.nameOfModel = nameOfModel;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNameOfModel() {
		return nameOfModel;
	}

	public void setNameOfModel(String nameOfModel) {
		this.nameOfModel = nameOfModel;
	}
	
	

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	@Override
	public String toString() {
		return "Model [id=" + id + ", nameOfModel=" + nameOfModel + "]";
	}
	
	

}
