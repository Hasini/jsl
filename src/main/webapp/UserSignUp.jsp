<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 <div class="container">
 <form action="">
 <h2>Signup Form</h2>
  
    <label><b>UserName</b></label>
    <input type="text" placeholder="Enter Email" name="email" required>


	<label><b>User Type</b></label>
    <select id="status">
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
 
 </form>
  </div>
  
</body>
</html>