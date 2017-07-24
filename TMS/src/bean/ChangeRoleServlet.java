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

public class ChangeRoleServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(req.getParameter("emp_id"));
		String desigId = req.getParameter("desigId");
		SessionFactory factory = null;
		Session session = null;
		try
		{
			factory = new Configuration().configure().buildSessionFactory();
			session = factory.openSession();
			String q1 = "UPDATE Employee set " + "desigId = :emp_desigId " + "WHERE id = :emp_id";
			Transaction tn = session.beginTransaction();
			Query query = session.createQuery(q1);
			query.setParameter("emp_desigId", desigId);
			query.setParameter("emp_id", id);
			int result = query.executeUpdate();
			tn.commit();
			System.out.println("Role Changed : " + result);
			resp.sendRedirect("jsp/role.jsp");
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("inside catch of ChangeRoleServlet");
			System.out.println(e.getMessage());
		}
	}
}
