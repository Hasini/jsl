<!DOCTYPE html>
<html>
<head>

<style>
/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

header {
				background: url(images/L-109822-1495532892-3713.jpeg.jpg) repeat-x 100%;
				height: 100px;
				background-size:cover;
			}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn,.signupbtn {
    float: left;
    width: 50%;
}

/* Add padding to container elements */
.container {
    padding: 16px;
    width: 25%;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

body{
	background-color: #87CEEB;
	display: inline-block;
	width: 100%;
	height: 100%;
}

.main{
	height: 100%;
	width: 100%;
	min-width: 1000px;
min-height: 1000px;
display: inline-block;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}
</style>

	<script src="javaScript/jquery-3.2.1.min.js" type="text/javascript"></script>
	
	<script type="text/javascript">
	$(document).ready(function() {
		$('#login').click(function() {
			$.ajax({
				url : 'RegUserServlet',
				data : {
					uName : $('#uName').val(),
					psw : $('#psw').val
				},
				success : function(responseText) {
					alert("Login Successfully..!");
				}
			});
		});
	});
	</script>
	
</head>

<body>
<header></header>
<div class="main">

<form action="" style="border:1px solid #ccc" method="post">

  <div class="container">
  <h2>Signup Form</h2>
    <label><b>UserName</b></label>
    <input type="text" placeholder="Enter Email" name="email" required>


	<label><b>User Type</b></label>
    <select>
  		<option value="admin">Admin</option>
  		<option value="customer">Customer</option>
  		<option value="delivery">Delivery</option>
  	</select>
	<br>
	
    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>
    
    
    
    <label><b>Repeat Password</b></label>
    <input type="password" placeholder="Repeat Password" name="psw-repeat" required>
    <input type="checkbox" checked="checked"> Remember me
    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

    <div class="clearfix">
      <button type="button" class="cancelbtn">Cancel</button>
      <button type="submit" class="signupbtn">Sign Up</button>
    </div>
  </div>
  
  <div class="container">
  <h2>LogIn Form</h2>
    <label><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" id="uName" required>

    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" id="psw" required>

    <div class="clearfix">
      <button type="button" class="cancelbtn">Cancel</button>
      <button type="submit" class="signupbtn" id="login">LogIn</button>
    </div>
  </div>
</form>

</div>

</body>
<footer>
jjj
</footer>
</html>
