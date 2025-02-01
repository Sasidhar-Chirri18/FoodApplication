<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Deals</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('https://img.freepik.com/free-vector/special-offer-sale-banner-template_1017-31265.jpg') no-repeat center center/cover;
            color: white;
            text-align: center;
            padding: 20px;
        }
        .container {
            width: 80%;
            margin: auto;
            padding: 20px;
        }
        .deal-box {
            background: rgba(255, 255, 255, 0.9);
            padding: 20px;
            margin-bottom: 15px;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            color: black;
        }
        .deal-box h3 { color: #e74c3c; }
        .deal-box button {
            background: #e74c3c;
            color: white;
            border: none;
            padding: 10px 15px;
            cursor: pointer;
            border-radius: 5px;
            transition: background 0.3s;
        }
        .deal-box button:hover {
            background: #c0392b;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Exclusive Deals</h2>
        <div class="deal-box">
            <h3>Flat 30% Off on Orders Above $20</h3>
            <p>Valid for all users. Limited time offer!</p>
            <button>Grab Deal</button>
        </div>
        <div class="deal-box">
            <h3>Free Dessert with Every Main Course</h3>
            <p>Only at participating restaurants.</p>
            <button>View Restaurants</button>
        </div>
    </div>
</body>
</html>
