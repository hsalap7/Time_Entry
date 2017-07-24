package bean;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class LoginDao extends HttpServlet  
{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		SessionFactory factory = null;
		Session session = null;
		try
		{
			factory = new Configuration().configure().buildSessionFactory();
			session = factory.openSession();
			String username = req.getParameter("username");
			String password = req.getParameter("password");
			String queryString = "SELECT E.password FROM Employee E WHERE E.username = '" + username+"'";
			Query query = session.createQuery(queryString);
			List<String> list = query.list();
			Iterator<String> it = list.iterator();
			if(it.hasNext())
			{
				
				String secQuery = "from Employee emp where emp.username = '" + username + "'";
				Query q2 = session.createQuery(secQuery);
				Employee e1 = (Employee) q2.uniqueResult();
				if(e1.getDesigId().equals("1"))
				{
					resp.sendRedirect("jsp/Admin.jsp");
				}
				else if(e1.getDesigId().equals("2"))
				{
					resp.sendRedirect("jsp/Manager.jsp");
				}
				else if(e1.getDesigId().equals("3"))
				{
					resp.sendRedirect("jsp/Lead.jsp");
				}
				else if(e1.getDesigId().equals("4"))
				{
					resp.sendRedirect("jsp/Employee.jsp");
				}
				else
				{
					resp.getWriter().println("Enter Valid Credentials");				
					RequestDispatcher rd=getServletContext().getRequestDispatcher("/jsp/Login.jsp");
					rd.include(req,resp);
				}				
			}
			else
			{
				resp.getWriter().println("Enter Valid Credentials");				
				RequestDispatcher rd=getServletContext().getRequestDispatcher("/jsp/Login.jsp");
				rd.include(req,resp);
			}
			
		}
		catch(Exception e)
		{
			resp.getWriter().println("Enter Valid Credentials");				
			RequestDispatcher rd=getServletContext().getRequestDispatcher("/jsp/Login.jsp");
			rd.include(req,resp);
			System.out.println("Inside");
			System.out.println(e.getMessage());
		}
	}
}
