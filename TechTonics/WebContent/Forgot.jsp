<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Recover Password</title>
</head>
<body>
<div class="form">
		  
     
      
      <div class="tab-content">
                
        <div id="login">   
          <h1>Welcome Back!</h1>
          <h3>Please enter your email address to reset password</h3>
          <form action="ForgotPassword" method="post">
          
            <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="email" name="emailId"/>
          </div>
          
          
          <button class="button button-block">Submit</button>
          
          </form>

        </div>
        
      </div><!-- tab-content -->
      
</div>
</body>
</html>