package bean;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;


public class AddServlet extends HttpServlet 
{
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException 
	{
		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		String desigId = req.getParameter("desigId");
		String skills = req.getParameter("skills");
		String deptId = req.getParameter("deptId");
		String notes = req.getParameter("notes");
		String email = req.getParameter("email");
		String phone = req.getParameter("phone");
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String joinDate = req.getParameter("joinDate");
		SimpleDateFormat format = new SimpleDateFormat("yyyy-dd-MM");
		Employee emp = null;
		SessionFactory factory = null;
		Session session = null;
		try 
		{
			Date date = format.parse(joinDate);
			//System.out.println("id " + id + " date = " + date + " skills = " + skills);
			emp = new Employee(id, name, desigId, date, skills, deptId, notes, email, phone, username, password);
			factory = new Configuration().configure().buildSessionFactory();
			//System.out.println("Here");
			session = factory.openSession();			
			Transaction tn = session.beginTransaction();
			session.save(emp);
			tn.commit();
			System.out.println("done");
			String url=req.getParameter("url");
			resp.sendRedirect(url);
		} 
		catch (Exception e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
			//System.out.println("Date parsing problem");
			System.out.println(e.getMessage());
			
		}
	}

}
