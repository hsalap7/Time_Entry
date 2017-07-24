<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="bean.ManageProject" %>
    <%@page import="bean.Project" %>
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
    <h2 style="color:#000066"><b>Welcome Project Lead</b><div class="dropdown">
  	  <button onclick="myFunction()" class="dropbtn">PERSONAL</button>
      <div id="myDropdown" class="dropdown-content">
      <a href="#" onclick="window.location.href='/TMS/jsp/Login.jsp'">LOGOUT</a>
      </div>
      </div></h2>
      <button class="button b1" href="#" onclick="window.location.href='/TMS/jsp/ViewProject.jsp'"><b>Project</b></button>

	  <button class="button b1" onclick="window.location.href='/TMS/jsp/Approval.jsp'">Approval</button>

      <button class="button b1" onclick="window.location.href='/TMS/jsp/ManagerTimesheet.jsp'">Timesheet</button>

      <button class="button b1" onclick="">Team</button>
      
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
		
    <table class="users">
    <thead>
    <tr>
    
                     <th>ProjectID</th>
                     <th>P.Name</th>
                     <th>P.CLientName</th>
                     <th>ClientDescption</th>
                     <th>C.Manager</th>
                     <th>C.EmailId</th>
                     <th>OSName</th>
                     <th>DatabaseName</th>
                     <th>AppSId</th>
                     <th>P.ManagerName</th>
                     <th>P.LeaderName</th>
                     <th>P.Description</th>
                     <th>P.Start</th> 
                     <th>P.End</th> 
                     <th>Status</th> 
    </tr>
    </thead>
    		<tbody>
    			
    				 <%         
                  List<Project> list = ManageProject.getProject() ;
 
                     for (Project u : list) 
                     {
                 %>
	                 <tr>
	                 <td><%= u.getprjId() %></td>
	                 <td><%= u.getprjName()%></td>	                
	                  <td><%= u.getprjClientName() %></td>
	                  <td><%= u.getprjClientBrief() %></td>
	                  <td><%= u.getprjClientManager()  %></td>
	                  <td><%= u.getprjClientEmail() %></td>
	                  <td><%= u.getprjOsId() %></td>
	                  <td><%= u.getprjDbId() %></td>
	                  <td><%= u.getprjAppServerId() %></td> 
	                  <td><%= u.getprjPmName()%></td>
	                  <td><%= u.getprjNotes() %></td>
	                  <td><%= u.getprjPl() %></td>
	                  <td><%= u.getprjStartDate() %></td>
	                  <td><%= u.getprjEndDate() %></td>
	                  <td><%= u.getstatus() %></td>
	                 
	                 </tr>
	                 
	               <% } %>
	               <form method="post" action="http://localhost:8092/TMS/AddProjectServlet" role="form" style="background-color:white"><input type="hidden" name="url" value="jsp/ViewProject.jsp">	
    				 <tr><td><input type="submit" name="submit" value="AddNew"></td></tr>
    				 <td><input type="text" name="prjId" placeholder="P.ID"></td>
	                 <td><input type="text" name="prjName" placeholder="P.Name"></td>
	                 <td ><input type="text" name="prjClientName" placeholder="ClientName"></td>
	                  <td><input type="text" name="prjClientBrief" placeholder="Description"></td>
	                  <td><input type="text" name="prjClientManager" placeholder="C.Manager"></td>
	                  <td><input type="text" name="prjClientEmail" placeholder="C.Email"></td>
	                  <td><input type="text" name="prjOsId" placeholder="OSName"></td>
	                  <td><input type="text" name="prjDbId" placeholder="DatabaseName"></td>
	                  <td><input type="text" name="prjAppServerId" placeholder="AppServer"></td>
	                  <td><input type="text" name="prjPmName" placeholder="Manager"></td> 
	                  <td><input type="text" name="prjPl" placeholder="Leader"></td>
	                  <td><input type="text" name="prjNotes" placeholder="Notes"></td>
	                  <td><input type="text" name="prjStartDate" placeholder="P.Start"></td>
	                  <td><input type="text" name="prjEndDate" placeholder="P.End"></td>
	                  <td><input type="text" name="prjstatus" placeholder="P.Status"></td>
	                 </form>
	                
	              
	                 </tbody> 
	</table>
		    
  </header>

</body>
</html>