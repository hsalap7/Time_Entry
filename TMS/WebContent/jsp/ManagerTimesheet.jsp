<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        
    <%@page import="bean.ManageTimesheet"%>
    <%@page import="bean.Timesheet"%>
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

      <button class="button b1" onclick="window.location.href='/TMS/jsp/Approval.jsp'">Approval</button>

      <button class="button b1" onclick="window.location.href='/TMS/jsp/ManagerTimesheet.jsp'"><b>Timesheet</b></button>

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

  
 <div>
<table class="users">
  <thead style="color: black;">
    <tr>
      <td><b>Timesheet ID</b></td>
      <td><b>Prj ID</b></td>
      <td><b>Emp Id</b></td>
      <td><b>Activity</b></td>
      <td><b>Date</b></td>
      <td><b>Hours</b></td>
      <td><b>Approval</b></td>
      <td><b>Approved By</b></td>
      <td><b>Rejected Reason</b></td>
      <td><b>Notes</b></td>
      <td><b>Feedback</b></td> 
      <td><b>Suggestions</b></td>
      <td><b>Other Activities</b></td>
    </tr>
  </thead>
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
       <td><%= u.getActivity() %></td>
       <td><%= u.getDate() %></td>
       <td><%= u.getHours() %></td>
       <td><%= u.getApproved() %></td>
       <td><%= u.getApprovedBy() %></td>
       <td><%= u.getRejectionReason() %></td> 
       <td><%= u.getNotes() %></td>
       <td><%= u.getFeedback() %></td> 
       <td><%= u.getSuggestions() %></td>
       <td><%= u.getOtherActivities() %></td> 
       <td><form method="post" action="http://localhost:8092/TMS/DeleteTimeServlet"><input type="hidden" name="timesheetId" value="<%=u.getTimesheetId()%>">
	         <input type="hidden" name="url" value="jsp/ManagerTimesheet.jsp">
	         <input type="submit" name="submit" value="Delete">
	       </form>
	   </td>               
	</tr>
	                 
<% } %>
  
  </tbody>
  
  <form method="post" action="http://localhost:8092/TMS/AddTimeServlet" role="form" style="background-color:white"><input type="hidden" name="url" value="jsp/ManagerTimesheet.jsp">
    <tr>
      <td><input type="int" name="timesheetId" placeholder="Timesheet Id"></td>
      <td><input type="int" name="prjId" placeholder="Project Id"></td>
      <td><input type="int" name="empId" placeholder="Employee Id"></td>
      <td><input type="text" name="activity" placeholder="Activity"></td>
      <td><input type="text" name="date" placeholder="yyyy-mm-dd"></td>
      <td><input type="text" name="hours" placeholder="Hours"></td>
      <td><input type="text" name="approved" placeholder="Approval"></td>
      <td><input type="text" name="approvedBy" placeholder="Approved By"></td>
      <td><input type="text" name="rejectionReason" placeholder="Rejection Reason"></td>
      <td><input type="text" name="notes" placeholder="Notes"></td> 
      <td><input type="text" name="feedback" placeholder="Feedback"></td>
      <td><input type="text" name="suggestions" placeholder="Suggestions"></td>
      <td><input type="text" name="otherActivities" placeholder="Other Activity"></td>	                 
    </tr>
 
	<table  class="users" >
	 <tr>
	  <td><button id="project" onclick="AddTimeServlet">ADD NEW</button></td>
	 </tr>
 </table>
 </form>
</table>
</div>
  
</body>
</html>

