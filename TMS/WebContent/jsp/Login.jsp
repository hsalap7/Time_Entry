<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/Profile.css">
<title>Login</title>
<style>
html,body,h1,h2{font-family: "Raleway", sans-serif}
</style>
<body style="max-width:1600px">
  <header>
    <h1 style="color:#000066"><b>Time Management System</b></h1>
    <h2 style="color:#000066"><b>Login Page</b></h2>
    </header>
    
<div style="margin:20px">
<form action="http://localhost:8092/TMS/LoginDao" method="post" style="color:#008CBA">  
<fieldset>
<legend style="color:black">Insert Details</legend>
Username:<br><input type="text" name="username"/><br><br/>  
Password:<br><input type="password" name="password"/><br><br/>  
<input type="submit" value="Sign in"/> 
</fieldset>
</form>
</div> 

</body>  
</html>