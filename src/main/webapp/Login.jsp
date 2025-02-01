<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-image: url('https://images.unsplash.com/photo-1621769417345-e1ca1fdf12c3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzQwfHxzdGFyYnVja3N8ZW58MHx8MHx8fDA%3D');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-container {
            background-color: rgba(0, 0, 0, 0.8);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.5);
            width: 400px;
            text-align: center;
            border: 2px solid #00ff00;
        }

        h1 {
            color: #00ff00;
            margin-bottom: 20px;
        }

        form {
            margin-top: 10px;
        }

        table {
            margin: 0 auto 20px;
            width: 100%;
        }

        td {
            padding: 10px;
        }

        label {
            font-weight: bold;
            color: #fff;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #555;
            border-radius: 5px;
            background-color: #333;
            color: white;
        }

        input[type="text"]:focus, input[type="password"]:focus {
            outline: none;
            border-color: #00ff00;
        }

        input[type="submit"], input[type="button"] {
            width: 70%;
            padding: 10px;
            margin-top: 10px;
            background-color: #00ff00;
            color: black;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover, input[type="button"]:hover {
            background-color: #5cb338;
        }

        .terms {
            font-size: 0.9em;
            color: white;
            text-align: center;
            margin-top: 10px;
        }

        .terms a {
            color: #00ff00;
            text-decoration: none;
        }

        .terms a:hover {
            text-decoration: underline;
        }
    </style>
    <script>
        function validateForm() {
            const username = document.getElementById('email').value.trim();
            const password = document.getElementById('password').value.trim();
            
            if (email === '' || password === '') {
                alert('Both fields are required!');
                return false; // Prevent form submission
            }
            
            if (password.length < 6) {
                alert('Password must be at least 6 characters long!');
                return false; // Prevent form submission
            }

            return true; // Allow form submission
        }  
    </script>
</head>
<body>
    <div class="login-container">
        <h1>Login</h1>
        <form action="Login" method="post" onsubmit="return validateForm();">
            <table>
                <tr>
                    <td><label for="email">Email</label></td>
                    <td><input type="text" name="email" id="email" required></td>
                </tr>
                <tr>
                    <td><label for="pwd">Password</label></td>
                    <td><input type="password" name="pwd" id="pwd" required></td>
                </tr>
            </table>
            <input type="submit" name="loginsubmit" value="Login">
          
            <h6 class="terms">
                By clicking on Login, I accept the <a href="#">Terms
                    and Conditions</a> and <a href="#">Privacy
                    Policy</a>
            </h6>
        </form>
    </div>
</body>
</html>
    