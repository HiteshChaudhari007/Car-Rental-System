package com.car.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class car {

	@Id
	private int Id;
	private String name;
	private String imageLink;
	private int carRentPrice;
	private String isCarAvailble;
	private String CarRetelName;

	public String getIsCarAvailble() {
		return isCarAvailble;
	}

	public void setIsCarAvailble(String isCarAvailble) {
		this.isCarAvailble = isCarAvailble;
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImageLink() {
		return imageLink;
	}

	public void setImageLink(String imageLink) {
		this.imageLink = imageLink;
	}

	public int getCarRentPrice() {
		return carRentPrice;
	}

	public void setCarRentPrice(int carRentPrice) {
		this.carRentPrice = carRentPrice;
	}

	public String getCarRetelName() {
		return CarRetelName;
	}

	public void setCarRetelName(String carRetelName) {
		CarRetelName = carRetelName;
	}

}
