
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        
    <%@page import="bean.ManageEmployee"%>
    <%@page import="bean.Employee"%>
    <%@page import="java.util.*"%>
    <!DOCTYPE html>
<html>
<title>Administrator</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/TMS/css/Profile.css">
<style>
html,body,h1,h2{font-family: "Raleway", sans-serif}
</style>
<body>
  <header>
    <h1 style="color:#000066"><b>Time Management System</b></h1> 
    <h2 style="color:#000066"><b>Welcome Admin</b><div class="dropdown">
  	  <button onclick="myFunction()" class="dropbtn">PERSONAL</button>
      <div id="myDropdown" class="dropdown-content">
      <a href="#" onclick="window.location.href='/TMS/jsp/Login.jsp'">LOGOUT</a>
      </div>
      </div></h2>
    <div class="w3-section w3-bottombar w3-padding-16">
      <button class="button b1" onclick="window.location.href='/TMS/jsp/EmployeeList.jsp'">EMPLOYEE</button>
      <button class="button b1" onclick="window.location.href='/TMS/jsp/role.jsp'"><b>CHANGE ROLE</b></button>
      <button class="button b1" onclick="window.location.href='/TMS/jsp/timesheet.jsp'">TIMESHEET</button>
      <button class="button b1"  onclick="window.location.href='/TMS/jsp/Project.jsp'">PROJECT</button>
 
		<script>		
		function myFunction() 
		{
		    document.getElementById("myDropdown").classList.toggle("show");
		}
		window.onclick = function(event) 
		{
		  if (!event.target.matches('.dropbtn')) 
		  {
		    var dropdowns = document.getElementsByClassName("dropdown-content");
		    var i;
		    for (i = 0; i < dropdowns.length; i++) 
		    {
		      var openDropdown = dropdowns[i];
		      if (openDropdown.classList.contains('show')) 
		      {
		        openDropdown.classList.remove('show');
		      }
		    }
		  }
		}
		</script>      
    </div>
    </div>
  </header>
  <br></br>
  
  
<div>
<table class="users">
  <thead style="color: black;">
    <tr>
      <td><b>User ID</b></td>
      <td><b>Name</b></td>
      <td><b>Desg Id</b></td> 
    </tr>
  </thead>
  <tbody>
    
  <%         
  List<Employee> list = ManageEmployee.getEmployee() ;
  for (Employee u : list) 
  {
  %>
    <tr>
	   <td><%= u.getId() %></td>
       <td><%= u.getName()%></td>              
       <form method="post" action="http://localhost:8092/TMS/ChangeRoleServlet"><input type="hidden" name="emp_id" value="<%=u.getId()%>">            
       <td><input type="text" name="desigId" placeholder="<%= u.getDesigId() %>"></td>
       <td><input type="submit" name="submit" value="Update"></td>
	   </form>                
	</tr>
	                 
<% } %>
  
  </tbody>
</div>
</table>
</body>
</html>

