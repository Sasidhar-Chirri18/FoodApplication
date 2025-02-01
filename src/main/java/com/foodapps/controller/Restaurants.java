package com.foodapps.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.foodapps.daoimpl.RestaurantDaoImpl;
import com.foodapps.model.Restaurant;


/**
 * Servlet implementation class Restaurants
 */
//@WebServlet("/Restaurants")
public class Restaurants extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RestaurantDaoImpl resd = new RestaurantDaoImpl();
		ArrayList<Restaurant> al = resd.getAll();
		if(al!=null) {
			req.getSession().setAttribute("rlist", al);
			resp.sendRedirect("RestaurantMain.jsp");
		}

	}
}
	

	