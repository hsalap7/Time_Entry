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


public class AddProjectServlet extends HttpServlet 
{
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException 
	{
		
		int prjId = Integer.parseInt(req.getParameter("prjId"));
		String prjName = req.getParameter("prjName");
		String prjClientName = req.getParameter("prjClientName");
		String prjClientBrief = req.getParameter("prjClientBrief");
		String prjClientManager = req.getParameter("prjClientManager");
		String prjClientEmail = req.getParameter("prjClientEmail");
		String prjOsId = req.getParameter("prjOsId");
		String prjDbId = req.getParameter("prjDbId");
		String prjAppServerId = req.getParameter("prjAppServerId");
		String prjPmName = req.getParameter("prjPmName");
		String prjNotes = req.getParameter("prjNotes");
		String prjPl = req.getParameter("prjPl");
		String prjStartDate = req.getParameter("prjStartDate");
		String prjEndDate = req.getParameter("prjEndDate");
		String prjstatus = req.getParameter("status");
;
		SimpleDateFormat format = new SimpleDateFormat("yyyy-dd-MM");
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-dd-MM");
		Project emp = null;
		SessionFactory factory = null;
		Session session = null;
		try 
		{
			Date date1 = format.parse(prjStartDate);
			Date date2 = format1.parse(prjStartDate);
			emp = new Project(prjId, prjName, prjClientName, prjClientBrief, prjClientManager, prjClientEmail, prjOsId, prjDbId, prjAppServerId, prjPmName, prjNotes, prjPl,date1,date2,prjstatus);
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
			// TODO Auto-generated catch block
			e.printStackTrace();
			//System.out.println("Date parsing problem");
			System.out.println(e.getMessage());
			
		}
	}

}
