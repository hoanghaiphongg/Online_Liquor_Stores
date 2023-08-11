package cn.techtutorial.model;

public class Product {
	private String id;
	private String name;
	private String brand;
	private Double price;
	private String image;
	private int quantity;

	
	
	public Product(String id, String name, String brand, Double price, String image,int quantity) {
		this.id = id;
		this.name = name;
		this.brand = brand;
		this.price = price;
		this.image = image;
		this.quantity=quantity;
	}
	
	



	public Product() {
	}

	
	
	


	public int getQuantity() {
		return quantity;
	}





	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}





	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", brand=" + brand + ", price=" + price + ", image="
				+ image + "]";
	}
	
	
}