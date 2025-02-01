package com.foodapps.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.foodapps.daoimpl.UserDaoImpl;
import com.foodapps.model.User;


//@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter pw = resp.getWriter();

        // Retrieve login details from the request
        String email = req.getParameter("email");
        String pwd = req.getParameter("pwd");

        try {
            // Use UserDAOImpl to fetch the user by email
            UserDaoImpl UserDao = new UserDaoImpl();
            User user = UserDao.fetchAllByEmail(email);

            if (user != null) {
                // Email found, check the password
                if (pwd.equals(user.getPassword())) {
                    // Password matches, create session and cookie
                    HttpSession session = req.getSession();
                    session.setAttribute("user", user);

                    Cookie userCookie = new Cookie("Username", user.getUserName());
                    userCookie.setMaxAge(30 * 60); // Set cookie expiry to 30 minutes
                    resp.addCookie(userCookie);

                    resp.sendRedirect("Restaurants"); // Redirect to restaurants page
                } else {
                    // Incorrect password
                    resp.sendRedirect("Incorrectpwd.jsp");
                }
            } else {
                // Email not found
                resp.sendRedirect("Invalid.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
            pw.println("<h3>An error occurred during login. Please try again later.</h3>");
        }
    }
}
	
       
    