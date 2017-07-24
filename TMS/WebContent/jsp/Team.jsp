<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="bean.Team" %>    
    <%@page import="bean.ManageTeam" %>
      <%@page import="java.util.*" %>
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

      <button class="button b1" onclick="window.location.href='/TMS/jsp/Approval.jsp'">Approval</button>

      <button class="button b1" onclick="window.location.href='/TMS/jsp/ManagerTimesheet.jsp'">Timesheet</button>

      <button class="button b1" onclick="window.location.href='/TMS/jsp/Team.jsp'"><b>Team</b></button>
 
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
    <thead>
    				<th>TeamID</th>
                    <th>Project Id</th>
                    <th>Team Name</th>
                    <th>Team Leader</th>
                    <th>Team Notes</th>
                    <th>Team Members</th>
                    
    
    </thead>
    <tbody>
    		<%         
  List<Team> list = ManageTeam.getTeams() ;
 
 
  for (Team u : list) 
  {
  %>
    <form method="post" action="http://localhost:8092/TMS/UpdateTeamServlet" role="form" style="background-color:white"><input type="hidden" name="url" value="jsp/Team.jsp">
    <tr>
      <td><input type="text" name="a_teamId" placeholder="<%=u.getTeamId() %>" value="<%=u.getTeamId() %>"></td>
      <td><input type="text" name="a_prjId" placeholder="<%=u.getPrjId() %>" value="<%=u.getPrjId() %>"></td>
      <td><input type="text" name="a_teamName" placeholder="<%=u.getTeamName() %>" value="<%=u.getTeamName() %>"></td>
      <td><input type="text" name="a_teamLeader" placeholder="<%=u.getTeamLeader() %>" value="<%=u.getTeamLeader() %>"></td>
      <td><input type="text" name="a_teamnotes" placeholder="<%=u.getTeamNotes() %>" value="<%=u.getTeamNotes() %>"></td>
      <td><input type="text" name="a_teamMembers" placeholder="<%=u.getTeamMembers() %>" value="<%=u.getTeamMembers() %>"></td>
      <td><button id="project" onclick="UpdateTeamServlet">Update</button></td>
      	                 
    </tr>
 
 
 </form>
 <tr></tr>
	                 
<% } %>    
 
<form method="post" action="http://localhost:8092/TMS/AddTeamServlet" role="form" style="background-color:white"><input type="hidden" name="url" value="jsp/Team.jsp">
    <tr>
      <td><input type="text" name="TeamId" placeholder="TeamId"></td>
      <td><input type="text" name="projectId" placeholder="ProjectId"></td>
      <td><input type="text" name="TeamName" placeholder="TeamName"></td>
      <td><input type="text" name="TeamLeader" placeholder="Teamleader"></td>
      <td><input type="text" name="Teamnotes" placeholder="TeamNotes"></td>
      <td><input type="text" name="TeamMembers" placeholder="TeamMembers"></td>
      	                 
    </tr>
 
	<table  class="users" >
	 <tr>
	  <td><button id="project" onclick="AddTeamServlet">ADD NEW</button></td>
	 </tr>
	 </tbody>
 </table>
 </form>

    
    </table>
</header>

</body>
</html>