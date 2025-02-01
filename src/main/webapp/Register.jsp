<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Register</title>
    <style>
      /* Apply a background image and set the overall page layout */
body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    background: url('https://media.gettyimages.com/id/512060062/photo/man-drinking-coffee-in-starbucks-la-jolla-usa.jpg?s=612x612&w=0&k=20&c=q-4oN2RgiLfM3TcavWNnZd81DyJwx3n58x8vTj6OmMk=') no-repeat center center fixed;
    background-size: cover;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
}

/* Center the registration container */
.register-container {
    background-color: rgba(16, 13, 13, 0.9); /* Semi-transparent background */
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 4px 8px #178a0533;
    text-align: center;
    width: 100%;
    max-width: 400px;
}

/* Style the heading */
.register-container h1 {
    margin-bottom: 20px;
    font-size: 24px;
    color: #06db5b;
}

/* Style the table for the form fields */
table {
    width: 100%;
    margin-bottom: 20px;
}

td {
    padding: 10px 5px;
}

label {
    font-size: 14px;
    color:white;
}

/* Style input fields */
input[type="text"],
input[type="email"],
input[type="password"] {
    width: 100%;
    padding: 8px;
    font-size: 14px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
}

/* Style buttons */
input[type="submit"],
input[type="button"] {
    width: 100%;
    padding: 10px;
    margin-top: 10px;
    font-size: 16px;
    color: #fff;
    background-color: #007bff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

input[type="submit"]:hover,
input[type="button"]:hover {
    background-color: #0056b3;
}

/* Terms and conditions styling */
.terms {
    margin-top: 15px;
    font-size: 12px;
    color:white;
}

.terms a {
    color: #007bff;
    text-decoration: none;
}

.terms a:hover {
    text-decoration: underline;
}

/* Responsive design for smaller devices */
@media (max-width: 600px) {
    .register-container {
        width: 90%;
        padding: 20px;
    }

    table {
        font-size: 14px;
    }

    input[type="submit"],
    input[type="button"] {
        font-size: 14px;
    }
}

  </style>
    <script>
        function validateForm() {
            const username = document.getElementById('username').value.trim();
            const mobile = document.getElementById('mobile').value.trim();
            const email = document.getElementById('email').value.trim();
            const password = document.getElementById('password').value.trim();
            const confirmPassword = document.getElementById('confirmpwd').value.trim();

            // Validate Name
            if (username === '') {
                alert('Name is required.');
                return false;
            }

            // Validate Mobile Number (10 digits)
            const mobilePattern = /^[0-9]{10}$/;
            if (!mobilePattern.test(mobile)) {
                alert('Please enter a valid 10-digit mobile number.');
                return false;
            }

            // Validate Email
            const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
            if (!emailPattern.test(email)) {
                alert('Please enter a valid email address.');
                return false;
            }

            // Validate Password
            if (password.length < 6) {
                alert('Password must be at least 6 characters long.');
                return false;
            }

            // Confirm Password Match
            if (password !== confirmPassword) {
                alert('Passwords do not match.');
                return false;
            }

            return true; // Allow form submission
        }

        function redirectToLogin() {
            window.location.href = 'Login.jsp';
        }
    </script>
</head>
<body>
    <div class="register-container">
        <h1>Create New Account</h1>
        <form action="Register" method="post" onsubmit="return validateForm();">
            <table>
                <tr>
                    <td><label for="username">Username</label></td>
                    <td><input type="text" name="username" id="username" required></td>
                </tr>
                <tr>
                    <td><label for="mobile">Mobile</label></td>
                    <td><input type="text" name="mobile" id="mobile" required></td>
                </tr>
                <tr>
                    <td><label for="email">Email</label></td>
                    <td><input type="email" name="email" id="email" required></td>
                </tr>
                
                <tr>
                    <td><label for="pwd">Password</label></td>
                    <td><input type="password" name="pwd" id="pwd" required></td>
                </tr>
                <tr>
                    <td><label for="confirmpwd">Confirm Password</label></td>
                    <td><input type="password" name="confirmpwd" id="confirmpwd" required></td>
                </tr>
            </table>
            <input type="submit" name="registersubmit" value="Register">
            
            <h6 class="terms">
                By creating an account, I accept the <a href="#">Terms and Conditions</a> and <a href="#">Privacy Policy</a>
            </h6>
        </form>
    </div>
</body>
</html>                                                                       