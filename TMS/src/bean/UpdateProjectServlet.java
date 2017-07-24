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

public class UpdateProjectServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		Project emp=new Project();
		emp.setprjId(Integer.parseInt(req.getParameter("prjId")));
		emp.setprjName(req.getParameter("prjName"));
		emp.setprjClientName(req.getParameter("prjClientName"));
		emp.setprjClientBrief(req.getParameter("prjClientBrief"));
		emp.setprjClientManager(req.getParameter("prjClientManager"));
		emp.setprjClientEmail(req.getParameter("prjClientEmail"));
		emp.setprjOsId(req.getParameter("prjOsId"));
		emp.setprjDbId(req.getParameter("prjDbId"));
		emp.setprjAppServerId(req.getParameter("prjAppServerId"));
		emp.setprjPmName(req.getParameter("prjPmName"));
		emp.setprjPl(req.getParameter("prjPl"));
		emp.setprjNotes(req.getParameter("prjNotes"));
		//emp.setprjStartDate(req.getParameter("prjStartDate"));
		//emp.setprjPmName(req.getParameter("prjPmName"));
		emp.setstatus(req.getParameter("prjstatus"));
		String sd1 = req.getParameter("prjStartDate");
		String sd2 = req.getParameter("prjEndDate");
		
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-dd-MM");
		SessionFactory factory = null;
		Session session = null;
		try
		{
			factory = new Configuration().configure().buildSessionFactory();
			session = factory.openSession();
			Date date1 = format.parse(sd1);
			Date date2 = format.parse(sd2);
			emp.setprjStartDate(date1);
			emp.setprjEndDate(date2);
		    Transaction tn = session.beginTransaction();
			session.saveOrUpdate(emp);	
			tn.commit();
			System.out.println("Updated Project Servlet : ");
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
