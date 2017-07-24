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


public class AddTimeServlet extends HttpServlet 
{
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException 
	{
		int timesheetId = Integer.parseInt(req.getParameter("timesheetId"));
		int prjId = Integer.parseInt(req.getParameter("prjId"));
		int empId = Integer.parseInt(req.getParameter("empId"));
		String activity = req.getParameter("activity");
		String date = req.getParameter("date");
		String hours = req.getParameter("hours");
		String approved = req.getParameter("approval");
		String approvedBy = req.getParameter("approvedBy");
		String rejectedReason = req.getParameter("rejectedReason");
		String notes = req.getParameter("notes");
		String feedback = req.getParameter("feedback");
		String suggestions = req.getParameter("suggestions");
		String otherActivities = req.getParameter("otherActivities");
		SimpleDateFormat format = new SimpleDateFormat("yyyy-dd-MM");
		Timesheet emp = null;
		SessionFactory factory = null;
		Session session = null;
		try 
		{
			Date date1 = format.parse(date);
			emp = new Timesheet(timesheetId, prjId, empId,activity, date1, hours, approved, approvedBy, rejectedReason, notes, feedback,suggestions,otherActivities);
			factory = new Configuration().configure().buildSessionFactory();
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
			e.printStackTrace();
			System.out.println(e.getMessage());
			
		}
	}

}
