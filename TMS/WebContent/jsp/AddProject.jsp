<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    <h2 style="color:#000066"><b>Welcome Manager</b></h2>
    <div class="dropdown1">
      <button class="button b1" onclick="myFunction1()" class="dropbtn1"><b>Project</b></button>
      <div id="myDropdown1" class="dropdown-content1">
      <a href="#" onclick="window.location.href='/TMS/jsp/AddProject.jsp'">ADD</a>
      <a href="#" onclick="window.location.href='/TMS/jsp/ViewProject.jsp'">VIEW</a>
     
      </div>
    </div>

    <div class="dropdown1">
      <button class="button b1" onclick="myFunction2()" class="dropbtn1"><b>Approval</b></button>
      <div id="myDropdown2" class="dropdown-content1">
      <a href="#" onclick="window.location.href='/TMS/jsp/home.jsp'">Approval</a>
      </div>
    </div>

    <div class="dropdown1"> 
      <button class="button b1" onclick="myFunction3()" class="dropbtn1"><b>Timesheet</b></button>
      <div id="myDropdown3" class="dropdown-content1">
      <a href="#" onclick="window.location.href='/TMS/jsp/home.jsp'">Add</a>
      <a href="#" onclick="window.location.href='/TMS/jsp/home.jsp'">Delete</a>
      </div>
    </div>

    <div class="dropdown1">
      <button class="button b1" onclick="myFunction4()" class="dropbtn1"><b>Team</b></button>
      <div id="myDropdown4" class="dropdown-content1">
      <a href="#" onclick="window.location.href='/TMS/jsp/home.jsp'">Add</a>
       <a href="#" onclick="window.location.href='/TMS/jsp/home.jsp'">View</a>
      </div>
     </div>
      
		<script>		
		function myFunction() 
		{
		    document.getElementById("myDropdown").classList.toggle("show");
		}
		function myFunction1()
		{
			document.getElementById("myDropdown1").classList.toggle("show1");
		}
		function myFunction2()
		{
			document.getElementById("myDropdown2").classList.toggle("show1");
		}
		function myFunction3()
		{
			document.getElementById("myDropdown3").classList.toggle("show1");
		}
		function myFunction4()
		{
			document.getElementById("myDropdown4").classList.toggle("show1");
		}
		window.onclick = function(event) 
		{
		  if (!event.target.matches('.dropbtn1')) 
		  {
		    var dropdowns = document.getElementsByClassName("dropdown-content1");
		    var i;
		    for (i = 0; i < dropdowns.length; i++) 
		    {
		      var openDropdown = dropdowns[i];
		      if (openDropdown.classList.contains('show1')) 
		      {
		        openDropdown.classList.remove('show1');
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
                     <th>P.ManagerName</th>
                     <th>P.LeaderName</th>
                     <th>P.Description</th>
                     <th>P.Start</th> 
                     <th>P.End</th> 
                     <th>Status</th> 
    </tr>
    </thead>
    <tbody>
    <tr>	
    			<form method="post" action="http://localhost:8092/TMS/AddProjectServlet" role="form" style="background-color:white">	
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
	                 <td><input type="submit" name="submit" value="AddNew"></form>
	                 </td>
	                 </tr>
	                 </tbody>
	                 </table>
		     
  </header>

</body>
</html>