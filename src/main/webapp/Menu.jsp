<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restaurant Menu</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        header {
            background-image: url("https://t4.ftcdn.net/jpg/02/92/20/37/240_F_292203735_CSsyqyS6A4Z9Czd4Msf7qZEhoxjpzZl1.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            color: #fff;
            padding: 10px;
            text-align: center;
        }
        .restaurant-info {
            color: #fff;
            padding: 10px 0;
            text-align: center;
        }
        .menu-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            margin: 10px 10px 60px 10px;
        }
        .menu-item {
            background-color: #fff;
            margin: 10px;
            padding: 20px;
            width: 250px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            border-radius: 8px;
            transition: transform 0.3s;
        }
        .menu-item:hover {
            transform: scale(1.05);
        }
        .menu-item img {
            width: 100%;
            height: auto;
            border-radius: 8px;
        }
        .item-name {
            font-size: 1.5em;
            font-weight: bold;
            margin: 10px 0;
        }
        .item-price {
            color: #ff6347;
            font-size: 1.2em;
            margin: 10px 0;
        }
        .item-rating {
            color: #ffcc00;
            font-size: 1em;
            margin: 5px 0;
        }
        .item-description {
            font-size: 0.9em;
            color: #555;
            margin-bottom: 10px;
        }
        .add-to-cart-btn {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
            font-size: 1em;
        }
        .add-to-cart-btn:hover {
            background-color: #218838;
        }
        footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 5px;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
    </style>
</head>
<body>

<header>
    <h1>Taste the Difference at Our Restaurant</h1>

    <div class="restaurant-info">
        <p>Status: Open | Restaurant ID: 12345</p>
    </div>
</header>

<div class="menu-container">
    <!-- Menu Item 1 -->
    <div class="menu-item">
        <img src="https://www.whiskaffair.com/wp-content/uploads/2021/10/Andhra-Chicken-Curry-2-1.jpg" alt="Grilled Chicken Curry">
        <div class="item-name">Grilled Chicken Curry</div>
        <div class="item-price">Rs. 85.99</div>
        <div class="item-rating">★ 4.6</div>
        <div class="item-description">
            A fresh and healthy salad with grilled chicken, vegetables, and a tangy vinaigrette.
        </div>
        <form action="Cart.jsp" method="post">
            <button type="submit" class="add-to-cart-btn">Add to Cart</button>
        </form>
    </div>

    <!-- Menu Item 2 -->
    <div class="menu-item">
        <img src="https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445" alt="Paneer Butter Masala">
        <div class="item-name">Paneer Butter Masala</div>
        <div class="item-price">Rs. 120.50</div>
        <div class="item-rating">★ 4.8</div>
        <div class="item-description">
            Creamy paneer cooked in a rich tomato-based gravy with Indian spices.
        </div>
        <form action="Cart.jsp" method="post">
            <button type="submit" class="add-to-cart-btn">Add to Cart</button>
        </form>
    </div>

    <!-- Menu Item 3 -->
    <div class="menu-item">
        <img src="https://media.istockphoto.com/id/1355635210/photo/pilau-or-vegetable-biryani.jpg?s=2048x2048&w=is&k=20&c=ihpP4WvKu0-L75ywk5TNRyX6R_TByj_hofRwN7_zRC8=" alt="Veg Biryani">
        <div class="item-name">Veg Biryani</div>
        <div class="item-price">Rs. 100.00</div>
        <div class="item-rating">★ 4.5</div>
        <div class="item-description">
            Aromatic basmati rice cooked with fresh vegetables and authentic spices.
        </div>
       <form action="Cart.jsp" method="post">
            <button type="submit" class="add-to-cart-btn">Add to Cart</button>
        </form>
    </div>

    <!-- Menu Item 4 -->
    <div class="menu-item">
        <img src="https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?q=80&w=1981&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Cheese Pizza">
        <div class="item-name">Cheese Pizza</div>
        <div class="item-price">Rs. 250.00</div>
        <div class="item-rating">★ 4.7</div>
        <div class="item-description">
            Classic cheese pizza with a crispy crust and gooey mozzarella topping.
        </div>
        <form action="Cart.jsp" method="post">
            <button type="submit" class="add-to-cart-btn">Add to Cart</button>
        </form>
    </div>

    <!-- Menu Item 5 -->
    <div class="menu-item">
        <img src="https://images.unsplash.com/photo-1578985545062-69928b1d9587" alt="Chocolate Brownie">
        <div class="item-name">Chocolate Brownie</div>
        <div class="item-price">Rs. 80.00</div>
        <div class="item-rating">★ 4.9</div>
        <div class="item-description">
            Warm, fudgy chocolate brownie served with a scoop of vanilla ice cream.
        </div>
        <form action="Cart.jsp" method="post">
            <button type="submit" class="add-to-cart-btn">Add to Cart</button>
        </form>
        
    </div>
</div>

<footer>
    <p>&copy; 2024 Our Restaurant</p>
</footer>

</body>
</html>