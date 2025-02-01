package com.foodapps.dao;

import java.util.List;

import com.foodapps.model.Restaurant;

public interface RestaurantDao {
	boolean addRestaurant(Restaurant restaurant);
	Restaurant getRestaurant(int restaurantId);
	boolean updateRestaurant(Restaurant restaurant);
	boolean deleteRestaurant(int restaurantId);
	List<Restaurant>getAll();
	
}



