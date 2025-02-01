<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Welcome to Our Restaurant</title>
  <style>
    /* General Body Styling */
    body {
      font-family: Arial, sans-serif;
      background-image:url("https://c8.alamy.com/comp/2EHC9BG/starbucks-india-a-tata-alliance-in-mumbai-airport-terminal-2EHC9BG.jpg");
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      flex-direction: column;
      text-align: center;
      background-size: cover;
      background-repeat: no-repeat;
      background-position: center;
    }

    /* Container for the content */
    .content {
      background-color: white;
      padding: 40px 30px;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      text-align: center;
      max-width: 400px;
      width: 100%;
    }

    /* Restaurant Logo Styling */
    .logo img {
      max-width: 150px;
      border-radius: 8px;
      margin-bottom: 20px;
    }

    /* Welcome Heading Styling */
    h1 {
      font-size: 36px;
      color: #2c3e50;
      margin: 0 0 15px;
    }

    /* Description Styling */
    p {
      font-size: 18px;
      color: #7f8c8d;
      margin: 0 0 30px;
    }

    /* Button Styles */
    .button-container {
      display: flex;
      justify-content: space-between;
    }

    .button-container button {
      padding: 12px 25px;
      font-size: 16px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      width: 45%;
      transition: background-color 0.3s ease;
    }

    .button-container .login-btn {
      background-color:#2ecc71;
      color: white;
    }

    .button-container .Register-btn {
      background-color: #2e4bcc;
      color: white;
    }

    .button-container button:hover {
      opacity: 15;
    }

  </style>
</head>
<body>

  <div class="content">
    <!-- Restaurant Logo Section -->

    <!-- Welcome Message -->
    <h1>Taste the Difference at Our Restaurant!</h1>
    <p>Savor an exceptional dining experience with us - we are thrilled to serve you!</p>

    <!-- Login and Register Buttons -->
    <div class="button-container">
      <button class="login-btn" onclick="window.location.href='Login.jsp'">Login</button>
      <button class="Register-btn" onclick="window.location.href='Register.jsp'">Register</button>
    </div>
  </div>

</body>
</html>