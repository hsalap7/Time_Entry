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
      <button class="button b1" onclick="window.location.href='/TMS/jsp/EmployeeList.jsp'"><b>EMPLOYEE</b></button>
      <button class="button b1" onclick="window.location.href='/TMS/jsp/role.jsp'">CHANGE ROLE</button>
      <button  class="button b1" onclick="window.location.href='/TMS/jsp/timesheet.jsp'">TIMESHEET</button>
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
  

</head>

<div>
<table class="users">
  <thead style="color: black;">
    <tr>
      <td><b>User ID</b></td>
      <td><b>Name</b></td>
      <td><b>Desg Id</b></td>
      <td><b>Join Date</b></td>
      <td><b>Skills</b></td>
      <td><b>Dept Id</b></td>
      <td><b>Notes</b></td>
      <td><b>Email</b></td>
      <td><b>Phone</b></td>
      <td><b>User name</b></td>
      <td><b>Passwd</b></td> 
    </tr>
  </thead>
  <tbody>
    
  <%         
  List<Employee> list = ManageEmployee.getEmployee() ;
  for (Employee u : list) 
  {
  %>
    <tr>
	   <form method="post" action="http://localhost:8092/TMS/UpdateServlet"><input type="hidden" name="u_id" value=<%=u.getId()%>><input type="hidden" name="url" value="jsp/EmployeeList.jsp">
         	<td><%= u.getId() %></td>
         	<td><input type="text" name="u_name" placeholder="<%=u.getName()%>" value="<%=u.getName()%>"></td>
         	<td><input type="text" name="u_desigId" placeholder="<%= u.getDesigId() %>" value="<%= u.getDesigId() %>"></td>
         	<td><input type="text" name="u_joinDate" placeholder=<%= u.getJoinDate() %> value="<%= u.getJoinDate() %>"></td>
         	<td><input type="text" name="u_skills" placeholder="<%= u.getSkills() %>" value="<%= u.getSkills() %>"></td>
         	<td><input type="text" name="u_deptId" placeholder="<%= u.getDeptId() %>" value="<%= u.getDeptId() %>"></td>
         	<td><input type="text" name="u_notes" placeholder="<%= u.getNotes() %>" value="<%= u.getNotes() %>"></td>
         	<td><input type="text" name="u_email" placeholder="<%= u.getEmail() %>" value="<%= u.getEmail() %>"></td>
         	<td><input type="text" name="u_phone" placeholder="<%= u.getPhone() %>" value="<%= u.getPhone() %>"></td>
         	<td><input type="text" name="u_username" placeholder="<%= u.getUsername() %>" value="<%= u.getUsername() %>"></td>
         	<td><input type="text" name="u_password" placeholder="<%= u.getPassword() %>" value="<%= u.getPassword() %>"></td>         	
         	<td><input type="submit" name="submit" value="Update"></td>
       </form>
       <td><form method="post" action="http://localhost:8092/TMS/DeleteServlet"><input type="hidden" name="id" value="<%=u.getId()%>"><input type="hidden" name="url" value="jsp/EmployeeList.jsp">
	         <input type="submit" name="submit" value="Delete">
	       </form></td>                
	</tr>
	                
<% } %>
  
  </tbody>
 
<form method="post" action="http://localhost:8092/TMS/AddServlet" role="form" style="background-color:white"><input type="hidden" name="url" value="jsp/EmployeeList.jsp">
    <tr>
      <td><input type="text" name="id" placeholder="Employee Id"></td>
      <td><input type="text" name="name" placeholder="Name"></td>
      <td><input type="text" name="desigId" placeholder="Designation Id"></td>
      <td><input type="text" name="joinDate" placeholder="yyyy-mm-dd"></td>
      <td><input type="text" name="skills" placeholder="Skills"></td>
      <td><input type="text" name="deptId" placeholder="Department Id"></td>
      <td><input type="text" name="notes" placeholder="Notes"></td>
      <td><input type="text" name="email" placeholder="Email"></td>
      <td><input type="text" name="phone" placeholder="Phone"></td> 
      <td><input type="text" name="username" placeholder="Username"></td>
      <td><input type="text" name="password" placeholder="Password"></td>	                 
    </tr>
 
	<table  class="users" >
	 <tr>
	  <td><button id="project" onclick="AddServlet">ADD NEW</button></td>
	 </tr>
 </table>
 </form>
</div>
</table>

</body>
</html>

