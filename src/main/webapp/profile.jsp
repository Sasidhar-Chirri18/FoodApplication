<!-- profile.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Profile</title>
    <style>
       body { 
           font-family: Arial, sans-serif; 
           background: url('https://images.unsplash.com/photo-1537047902294-62a40c20a6ae?q=80&w=1035&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D') no-repeat center center/cover; 
       }
        .container { width: 60%; margin: auto; padding: 20px; }
        .profile-box { 
            background: #fff; 
            padding: 20px; 
            border-radius: 10px; 
            box-shadow: 0 2px 5px rgba(0,0,0,0.1); 
        }
        .profile-box h2 { 
            color: blue; /* Changed "User Profile" to blue */
        }
        .profile-box button { 
            background: #3498db; 
            color: white; 
            padding: 10px; 
            border: none; 
            cursor: pointer; 
            margin-top: 10px; 
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="profile-box">
            <h2>User Profile</h2>
            <p><strong>Name:</strong> King</p>
            <p><strong>Email:</strong> king@gmail.com</p>
            <p><strong>Phone:</strong> +911818181818</p>
        </div>
    </div>
</body>
</html>
