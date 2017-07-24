package bean;

import java.util.Date;


public class Employee {
	private int id;
	private String name;
	private String desigId;
	private Date joinDate;
	private String skills;
	private String deptId;
	private String notes;
	private String email;
	private String phone;
	private String username;
	private String password;
	public Employee()
	{
		
	}
	public Employee(int id,String name,String desigId,Date joinDate,String skills,String deptId,String notes,String email,String phone,String username,String password)
	{
		this.id = id;
		this.name = name;
		this.desigId = desigId;
		this.joinDate = joinDate;
		this.skills = skills;
		this.deptId = deptId;
		this.notes = notes;
		this.email = email;
		this.phone = phone;
		this.username = username;
		this.password = password;
	}
	public void setId(int id)
	{
		this.id = id;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public void setDesigId(String desigId)
	{
		this.desigId = desigId;
	}
	public void setJoinDate(Date joinDate)
	{
		this.joinDate = joinDate;
	}
	public void setSkills(String skills)
	{
		this.skills = skills;
	}
	public void setDeptId(String DeptId)
	{
		
		this.deptId = deptId;
	}
	public void setNotes(String notes)
	{
		this.notes = notes;
	}
	public void setEmail(String email)
	{
		this.email = email;
	}
	
	public void setPhone(String phone)
	{
		this.phone = phone;
	}
	public void setUsername(String username)
	{
		this.username = username;
	}
	public void setPassword(String password)
	{
		this.password = password;
	}
	
	public int getId()
	{
		return id;
	}
	public String getName()
	{
		return name;
	}
	public String getDesigId()
	{
		return desigId;
	}
	public Date getJoinDate()
	{
		return joinDate;
	}
	public String getNotes()
	{
		return notes;
	}
	public String getSkills()
	{
		return skills;
	}
	public String getDeptId()
	{
		return deptId;
	}
	public String getEmail()
	{
		return email;
	}
	public String getPhone()
	{
		return phone;
	}
	public String getUsername()
	{
		return username;
	}
	public String getPassword()
	{
		return password;
	}	
}
