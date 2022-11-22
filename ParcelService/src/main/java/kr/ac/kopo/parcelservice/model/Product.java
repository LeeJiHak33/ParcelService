package kr.ac.kopo.parcelservice.model;

public class Product {
	private int id;
	private String title;
	private int price;
	private String publisher;
	private int parcelId;
	
	
	public int getParcelId() {
		return parcelId;
	}
	public void setParcelId(int parcelId) {
		this.parcelId = parcelId;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
}
