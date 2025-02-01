<!-- offers.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Offers</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('https://d1csarkz8obe9u.cloudfront.net/posterpreviews/restaurant-offers-design-template-9755c79fd6cd3510238e2c246f09b430_screen.jpg?ts=1599490952') no-repeat center center/cover;
            color: white;
            text-align: center;
            padding: 20px;
        }
        .container {
            width: 80%;
            margin: auto;
            padding: 20px;
        }
        .offer-box {
            background: rgba(255, 255, 255, 0.9);
            padding: 20px;
            margin-bottom: 15px;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            color: black;
        }
        .offer-box h3 { color: #e67e22; }
        .offer-box button {
            background: #e67e22;
            color: white;
            border: none;
            padding: 10px 15px;
            cursor: pointer;
            border-radius: 5px;
            transition: background 0.3s;
        }
        .offer-box button:hover {
            background: #d35400;
        }
    </style>
    <script>
        function copyCode(code) {
            navigator.clipboard.writeText(code);
            alert("Discount code copied: " + code);
        }
    </script>
</head>
<body>
    <div class="container">
        <h2>Special Offers</h2>
        <div class="offer-box">
            <h3>50% Off on First Order!</h3>
            <p>Use code <strong>FIRST50</strong> to avail discount.</p>
            <button onclick="copyCode('FIRST50')">Claim Now</button>
        </div>
        <div class="offer-box">
            <h3>Buy 1 Get 1 Free</h3>
            <p>Available on selected restaurants.</p>
            <button onclick="window.location.href='deals.jsp'">View Deals</button>
        </div>
    </div>
</body>
</html>
