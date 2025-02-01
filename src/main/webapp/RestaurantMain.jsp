<%@ page import="java.util.ArrayList" %>
<%@ page import="com.foodapps.model.Restaurant" %>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="https://fonts.cdnfonts.com/css/proxima-nova-condensed">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <title>Restaurant</title>
    <style>
        /* General Reset and Box Sizing */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html, body {
            font-family: 'Arial', sans-serif;
            background-color: #f9f9f9;
        }

        /* Navbar Section */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #2c3e50; /* Dark blue-gray background */
            padding: 10px 30px;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        .navbar .left {
            display: flex;
            align-items: center;
        }

        .navbar .logo img {
            height: 50px;
            transition: transform 0.3s ease;
        }

        .navbar .logo img:hover {
            transform: scale(1.1); /* Logo hover effect */
        }

        .navbar .location-div {
            margin-left: 20px;
            color: #fff;
            font-size: 14px;
            cursor: pointer;
            display: flex;
            align-items: center;
            transition: color 0.3s ease;
        }

        .navbar .location-div:hover {
            color: #f39c12; /* Golden hover color for location */
        }

        .navbar .location-div .arrow-down {
            margin-left: 5px;
            font-size: 12px;
        }

        /* Navbar Links */
        .navbar .right ul {
            display: flex;
            gap: 20px;
        }

        .navbar .right ul li {
            list-style-type: none;
        }

        .navbar .right ul li a {
            color: #fff; /* White color for links */
            text-decoration: none;
            font-size: 16px;
            font-weight: 500;
            transition: color 0.3s ease;
        }

        .navbar .right ul li a:hover {
            color: #f39c12; /* Golden hover color */
        }

        .navbar .right ul li a:active {
            color: #e67e22; /* Darker shade for active links */
        }

        /* Dropdown menu styling */
        .navbar .location-div:hover .dropdown-menu {
            display: block;
        }

        .dropdown-menu {
            display: none;
            position: absolute;
            background-color: #34495e; /* Dropdown background */
            top: 40px;
            padding: 10px 0;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.15);
            border-radius: 5px;
        }

        .dropdown-menu a {
            color: #fff;
            padding: 10px 20px;
            display: block;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        .dropdown-menu a:hover {
            background-color: #f39c12; /* Golden hover for dropdown */
        }

        /* Main Content */
        .container {
            margin-top: 80px; /* Add space below fixed navbar */
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 20px;
            padding: 20px;
        }

        .restaurant {
            background-color: #ffffff;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease-in-out, box-shadow 0.3s ease;
        }

        .restaurant:hover {
            transform: translateY(-8px);  /* Elevation on hover */
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
        }

        .restaurant .image-container {
            position: relative;
            height: 200px;
            overflow: hidden;
        }

        .restaurant .image-container img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .restaurant h3 {
            font-size: 18px;
            font-weight: 600;
            color: #333;
            padding: 10px 20px;
            text-align: center;
        }

        .info-container {
            padding: 10px 20px;
            text-align: center;
            background-color: #fafafa;
        }

        .info-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .info-row .rating {
            display: flex;
            align-items: center;
        }

        .info-row .rating i {
            color: #f39c12;
        }

        .info-row .delivery-info {
            font-size: 14px;
            color: #666;
        }

        .submit-button {
            background-color: #f39c12;  /* Golden button */
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            width: 100%;
            margin-top: 10px;
        }

        .submit-button:hover {
            background-color: #e67e22;  /* Darker golden on hover */
        }

        /* Footer Section */
        .footer {
            background-color: #2c3e50;
            color: #ffffff;
            padding: 40px 0;
        }

        .footer-content {
            display: flex;
            justify-content: space-between;
            max-width: 1200px;
            margin: 0 auto;
            flex-wrap: wrap;
        }

        .footer .points {
            width: 200px;
        }

        .footer .points ul {
            list-style-type: none;
        }

        .footer .points ul li {
            margin-bottom: 10px;
        }

        .footer .points ul li a {
            color: #ffffff;
            font-size: 14px;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .footer .points ul li a:hover {
            color: #f39c12;
        }

        .footer .socials img {
            width: 50px;
            margin-right: 20px;
        }

        .footer p {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <header>
        <div class="navbar">
            <div class="right">
                <ul>
                    <li><a href="#">Search</a></li>
                    <li><a href="offers.jsp">Offers</a></li>
                    <li><a href="help.jsp">Help</a></li>
                    <li><a href="profile.jsp">Profile</a></li>
                    <li><a href="Cart.jsp">Cart</a></li>
                </ul>
            </div>
        </div>
    </header>

		<div class="container">
			<%
			ArrayList<Restaurant> restaurants = (ArrayList<Restaurant>) session.getAttribute("rlist");

			if (restaurants != null && !restaurants.isEmpty()) {
				for (Restaurant restro : restaurants) {
			%>
			<div class="restaurant">
				<div class="restItem">
					<form action="ShowMenu" method="post">
						<input type="hidden" name="restaurantId"
							value="<%=restro.getRestaurantId()%>"></input>

						<div class="image-container">
							<img src="<%=restro.getImagePath()%>" alt="<%=restro.getName()%>" />
						</div>
						<h3 class="restaurant-name">
							<b><%=restro.getName()%></b>
						</h3>
						<div class="info-container">
							<div class="info-row">
								<div class="rating">
									<span class="rating-star"><i
										class="bi bi-star-fill star"></i></span> <span class="review-count">(<%=restro.getRating()%>)
									</span>
								</div>
							</div>
							<p>
								🍽️<%=restro.getCuisineType()%></p>
							<p>
								📍<%=restro.getAddress()%></p>

							<div class="info-container" style="text-align: center;">
							   <a href="ShowMenu?rId=<%= restro.getRestaurantId() %>"><button>View Menu</button></a>
							</div>
						</div>
					</form>
				</div>
			</div>
			<%
			}
			} else {
			%>
			<p>No restaurant Available</p>
			<%
			}
			%>
		</div>

    <footer class="footer">
        <div class="footer-content">
            <div class="points">
                <h3>Company</h3>
                <ul>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Terms of Use</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                </ul>
            </div>
            <div class="points">
                <h3>Learn More</h3>
                <ul>
                    <li><a href="#">FAQs</a></li>
                    <li><a href="#">Help</a></li>
                </ul>
            </div>
            <div class="socials">
                <h3>Follow Us</h3>
                <a href="#"><img src="Images/facebook.png" alt="Facebook" /></a>
                <a href="#"><img src="Images/instagram.png" alt="Instagram" /></a>
                <a href="#"><img src="Images/twitter.png" alt="Twitter" /></a>
            </div>
        </div>
        <p>&copy; 2024 FreshFoods. All Rights Reserved.</p>
    </footer>
</body>
</html>
