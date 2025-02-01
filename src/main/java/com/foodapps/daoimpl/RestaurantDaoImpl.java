package com.foodapps.daoimpl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.foodapps.DataBase.ConnectionFactory;
import com.foodapps.dao.RestaurantDao;
import com.foodapps.model.Restaurant;

public class RestaurantDaoImpl implements RestaurantDao {
	private Connection con;
	private final String GETALL = "SELECT * FROM RESTAURANT";
	private Statement stmt;
	private ResultSet res;
	private Restaurant rest;

	@Override
	public boolean addRestaurant(Restaurant restaurant) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Restaurant getRestaurant(int restaurantId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean updateRestaurant(Restaurant restaurant) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteRestaurant(int restaurantId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public ArrayList<Restaurant> getAll() {
		ArrayList<Restaurant> al = new ArrayList<Restaurant>();
		try {
			con = ConnectionFactory.requestConnection();
			stmt = con.createStatement();
			res = stmt.executeQuery(GETALL);
			while(res.next()) {
				rest = new Restaurant(res.getInt("restaurantId"), res.getString("name"), res.getString("imagePath"), res.getFloat("rating"), res.getString("cuisineType"), res.getString("address"), res.getString("isActive"));
				al.add(rest);
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;
	}

}



