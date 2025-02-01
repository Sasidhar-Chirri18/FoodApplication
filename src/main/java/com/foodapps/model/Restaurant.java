package com.foodapps.model;

public class Restaurant {
	private int restaurantId;
	private String name;
	private String imagePath;
	private float rating;
	private String cuisineType;
	private String address;
	private String isActive;
	public int getRestaurantId() {
		return restaurantId;
	}
	public void setRestaurantId(int restaurantId) {
		this.restaurantId = restaurantId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public float getRating() {
		return rating;
	}
	public void setRating(float rating) {
		this.rating = rating;
	}
	public String getCuisineType() {
		return cuisineType;
	}
	public void setCuisineType(String cuisineType) {
		this.cuisineType = cuisineType;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getIsActive() {
		return isActive;
	}
	public void setIsActive(String isActive) {
		this.isActive = isActive;
	}
	public Restaurant(int restaurantId, String name, String imagePath, float rating, String cuisineType, String address,
			String isActive) {
		super();
		this.restaurantId = restaurantId;
		this.name = name;
		this.imagePath = imagePath;
		this.rating = rating;
		this.cuisineType = cuisineType;
		this.address = address;
		this.isActive = isActive;
	}
	public Restaurant(int restaurantId) {
		super();
		this.restaurantId = restaurantId;
	}
	public Restaurant(String name, String imagePath, float rating, String cuisineType, String address,
			String isActive) {
		super();
		this.name = name;
		this.imagePath = imagePath;
		this.rating = rating;
		this.cuisineType = cuisineType;
		this.address = address;
		this.isActive = isActive;
	}
	public Restaurant() {
		super();
	}
	@Override
	public String toString() {
		return "Restaurant [restaurantId=" + restaurantId + ", name=" + name + ", imagePath=" + imagePath + ", rating="
				+ rating + ", cuisineType=" + cuisineType + ", address=" + address + ", isActive=" + isActive + "]";
	}
	
	
}



