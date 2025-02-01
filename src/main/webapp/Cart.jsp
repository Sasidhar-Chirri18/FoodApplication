<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Cart</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        header {
            background-color: #333;
            color: white;
            padding: 15px;
            text-align: center;
        }
        .container {
            width: 80%;
            margin: auto;
            padding: 20px;
        }
        .cart-item {
            background: white;
            padding: 15px;
            margin-bottom: 10px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .cart-item img {
            width: 80px;
            height: 80px;
            border-radius: 5px;
        }
        .cart-item-details {
            flex-grow: 1;
            margin-left: 20px;
        }
        .cart-item-name {
            font-size: 1.2em;
            font-weight: bold;
        }
        .cart-item-price {
            color: #ff6347;
            font-size: 1.1em;
        }
        .remove-btn {
            background-color: #dc3545;
            color: white;
            padding: 5px 10px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            font-size: 1em;
        }
        .remove-btn:hover {
            background-color: #c82333;
        }
        .checkout-btn {
            background-color: #28a745;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            font-size: 1em;
            display: block;
            margin: 20px auto;
            text-align: center;
        }
        .checkout-btn:hover {
            background-color: #218838;
        }
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
        #checkout-details {
            display: none;
            margin-top: 20px;
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        #checkout-details p {
            font-size: 1.1em;
        }
    </style>
</head>
<body>

<header>
    <h1>Your Shopping Cart</h1>
</header>

<div class="container">
    <!-- Example Cart Items -->
    <div class="cart-item">
        <img src="https://www.whiskaffair.com/wp-content/uploads/2021/10/Andhra-Chicken-Curry-2-1.jpg" alt="Grilled Chicken Curry">
        <div class="cart-item-details">
            <div class="cart-item-name">Grilled Chicken Curry</div>
            <div class="cart-item-price">Rs. 85.99</div>
        </div>
        <button class="remove-btn" onclick="removeItem(this)">Remove</button>
    </div>
    
    <div class="cart-item">
        <img src="https://images.unsplash.com/photo-1578985545062-69928b1d9587" alt="Chocolate Brownie">
        <div class="cart-item-details">
            <div class="cart-item-name">Chocolate Brownie</div>
            <div class="cart-item-price">Rs. 80.00</div>
        </div>
        <button class="remove-btn" onclick="removeItem(this)">Remove</button>
    </div>
    
    <button class="checkout-btn" onclick="proceedToCheckout()">Proceed to Checkout</button>

    <!-- Checkout Details -->
    <div id="checkout-details">
        <p><strong>Total Items:</strong> 2</p>
        <p><strong>Total Price:</strong> Rs. 165.99</p>
        <button class="checkout-btn">Confirm Order</button>
    </div>
</div>

<footer>
    <p>&copy; 2024 Our Restaurant</p>
</footer>

<script>
    // Remove item from cart
    function removeItem(button) {
        var cartItem = button.parentElement;
        cartItem.remove();
    }

    // Show checkout details
    function proceedToCheckout() {
        document.getElementById('checkout-details').style.display = 'block';
    }
</script>

</body>
</html>
