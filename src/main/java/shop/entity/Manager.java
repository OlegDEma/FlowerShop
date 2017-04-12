package shop.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Manager {
	
	@Id
	 @GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	private String name;
	
	private String surname;
	
	private String patronymic;
	
	private int phone;
	
	private String mail;
	
	private String city;
	
	private String firm;
	
	private String storage;
	
	@ManyToOne
	private Delivery delivery;
	
	@OneToMany(mappedBy="manager")
	private List<Product> products;

	public Manager(String name, String surname, String patronymic, int phone, String mail, String city, String firm,
			String storage) {
		super();
		this.name = name;
		this.surname = surname;
		this.patronymic = patronymic;
		this.phone = phone;
		this.mail = mail;
		this.city = city;
		this.firm = firm;
		this.storage = storage;
	}

	public Manager() {
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

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getPatronymic() {
		return patronymic;
	}

	public void setPatronymic(String patronymic) {
		this.patronymic = patronymic;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getFirm() {
		return firm;
	}

	public void setFirm(String firm) {
		this.firm = firm;
	}

	public String getStorage() {
		return storage;
	}

	public void setStorage(String storage) {
		this.storage = storage;
	}
	
	public Delivery getDelivery() {
		return delivery;
	}

	public void setDelivery(Delivery delivery) {
		this.delivery = delivery;
	}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	@Override
	public String toString() {
		return "Manager [id=" + id + ", name=" + name + ", surname=" + surname + ", patronymic=" + patronymic
				+ ", phone=" + phone + ", mail=" + mail + ", city=" + city + ", firm=" + firm + ", storage=" + storage
				+ ", delivery=" + delivery + ", products=" + products + "]";
	}
	
	


	

}
