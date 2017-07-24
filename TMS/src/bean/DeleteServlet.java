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



public class DeleteServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int id = Integer.parseInt(req.getParameter("id"));
		System.out.println("here");
		SessionFactory factory = null;
		Session session = null;
		try
		{
			factory = new Configuration().configure().buildSessionFactory();
			session = factory.openSession();
			String q1 = "DELETE FROM Employee " + "WHERE id = :employee_id";
			Transaction tn = session.beginTransaction();
			Query query = session.createQuery(q1);
			query.setParameter("employee_id", id);
			int result = query.executeUpdate();
			tn.commit();
			System.out.println("Deleted : " + id);
			System.out.println("done");
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
