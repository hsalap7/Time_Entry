<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="bean.Timesheet"%>
    <%@page import="bean.ManageTimesheet"%>
    <%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head></head>
<title>Manager</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/TMS/css/Profile.css">
<style>
html,body,h1,h2{font-family: "Raleway", sans-serif}
</style>

<body>
<header>
    <h1 style="color:#000066"><b>Time Management System</b></h1> 
    <h2 style="color:#000066"><b>Welcome Manager</b><div class="dropdown">
  	  <button onclick="myFunction()" class="dropbtn">PERSONAL</button>
      <div id="myDropdown" class="dropdown-content">
      <a href="#" onclick="window.location.href='/TMS/jsp/Login.jsp'">LOGOUT</a>
      </div>
      </div></h2>

      <button class="button b1" onclick="window.location.href='/TMS/jsp/ViewProject.jsp'" >Project</button>

      <button class="button b1" onclick="window.location.href='/TMS/jsp/Approval.jsp'"><b>Approval</b></button>

      <button class="button b1" onclick="window.location.href='/TMS/jsp/ManagerTimesheet.jsp'">Timesheet</button>

      <button class="button b1" onclick="window.location.href='/TMS/jsp/Team.jsp'">Team</button>
 
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
  </header>
  <br></br>
<table class="users">
	    <tr>
     	<td><b>Timesheet ID</b></td>
         <td><b>Project Id</b></td>
      	<td><b>Employee ID</b></td> 
    	 <td><b>Date</b></td>
      	<td><b>Hours</b></td>
      	<td><b>Approval</b></td>
      	<td><b>Approved By</b></td>
    </tr>
    <tbody>
 <%         
  List<Timesheet> list = ManageTimesheet.getTimesheet() ;
 
 
  for (Timesheet u : list) 
  {
  %>
    <tr>
	   <td><%= u.getTimesheetId() %></td>
       <td><%= u.getPrjId()%></td>              
       <td><%= u.getEmpId() %></td>
       <td><%= u.getDate() %></td>
       <td><%= u.getHours() %></td>

       <form method="post" action="http://localhost:8092/TMS/ChangeApprovalStatus"><input type="hidden" name="emp_id" value='<%=u.getEmpId()%>'><input type="hidden" name="url" value="jsp/Approval.jsp">           
       <td><input type="text" name="Approved" placeholder="<%= u.getApproved() %>" value="<%= u.getApproved() %>"></td>
       <td><input type="text" name="ApprovedBy" placeholder="<%= u.getApprovedBy() %>" value="<%= u.getApprovedBy() %>"></td>
       <td><input type="submit" name="submit" value="Update"></td>
	   </form> 
       </tr>
	                 
<% } %>    
  </table>
</body>
</html>

