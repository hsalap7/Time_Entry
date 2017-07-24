package bean;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class UpdateServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		Employee emp=new Employee();
		emp.setId(Integer.parseInt(req.getParameter("u_id")));
		emp.setName(req.getParameter("u_name"));
		emp.setDesigId(req.getParameter("u_desigId"));
		emp.setSkills(req.getParameter("u_skills"));
		emp.setDeptId(req.getParameter("u_deptId"));
		emp.setNotes(req.getParameter("u_notes"));
		emp.setEmail(req.getParameter("u_email"));
		emp.setPhone(req.getParameter("u_phone"));
		emp.setUsername(req.getParameter("u_username"));
		emp.setPassword(req.getParameter("u_password"));
		String joinDate = req.getParameter("u_joinDate");
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-dd-MM");
		SessionFactory factory = null;
		Session session = null;
		try
		{
			factory = new Configuration().configure().buildSessionFactory();
			session = factory.openSession();
			Date date = format.parse(joinDate);
			emp.setJoinDate(date);
		    Transaction tn = session.beginTransaction();
			session.saveOrUpdate(emp);	
			tn.commit();
			System.out.println("Affected : ");
			String url=req.getParameter("url");
			resp.sendRedirect(url);
		}
		catch(Exception e)
		{
			System.out.println("Inside catch");
			System.out.println(e.getMessage());
		}
	}
}
