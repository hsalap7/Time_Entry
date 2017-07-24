package bean;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class ChangeApprovalStatus extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(req.getParameter("emp_id"));
		String Approved1 = req.getParameter("Approved");
		String ApprovedBy1 = req.getParameter("ApprovedBy");
		SessionFactory factory = null;
		Session session = null;
		try
		{
			factory = new Configuration().configure().buildSessionFactory();
			session = factory.openSession();
			String q1 = "UPDATE Timesheet set " + "approved = :m_approved, " + "approvedBy = :m_approvedBy " + "WHERE empId = :m_id";
			Transaction tn = session.beginTransaction();
			Query query = session.createQuery(q1);
			query.setParameter("m_approved", Approved1);
			query.setParameter("m_approvedBy", ApprovedBy1);
			query.setParameter("m_id", id);
			int result = query.executeUpdate();
			tn.commit();
			System.out.println("Role Changed : " + result);
			String url=req.getParameter("url");
			resp.sendRedirect(url);
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("inside catch of ChangeRoleServlet");
			System.out.println(e.getMessage());
		}
	}

}
