package com.foodapps.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) 
	            throws ServletException, IOException {
	        response.setContentType("text/html");
	        PrintWriter out = response.getWriter();

	        String username = request.getParameter("username");
	        String mobile = request.getParameter("mobile");
	        String email = request.getParameter("email");
	        String password = request.getParameter("pwd");
	        
	     // Validate input
	        if (username == null || username.trim().isEmpty()) {
	            out.println("<h3>Error: Username cannot be empty.</h3>");
	            return;
	        }

	        try {
	            // Load the database driver
	            Class.forName("com.mysql.cj.jdbc.Driver");

	            // Establish connection
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/foodappdelivery", 
	                                                         "root", "root");

	            // SQL query to insert user data
	            String query = "INSERT INTO users (username, mobile, email, password) VALUES (?, ?, ?, ?)";
	            PreparedStatement ps = con.prepareStatement(query);
	            ps.setString(1, username);
	            ps.setString(2, mobile);
	            ps.setString(3, email);
	            ps.setString(4, password);

	            int rowCount = ps.executeUpdate();

	            if (rowCount > 0) {
	                out.println("<h3>Registration successful!</h3>");
	            } else {
	                out.println("<h3>Failed to register. Please try again!</h3>");
	            }

	            ps.close();
	            con.close();
	        } catch (Exception e) {
	            out.println("<h3>Error: " + e.getMessage() + "</h3>");
	        }
	 }
}
	  
	 
    