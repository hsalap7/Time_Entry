package bean;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class UpdateTeamServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		int teamId = Integer.parseInt(req.getParameter("a_teamId"));
		int prjId = Integer.parseInt(req.getParameter("a_prjId"));
		String teamName = req.getParameter("a_teamName");
		String teamLeader = req.getParameter("a_teamLeader");
		String teamNotes = req.getParameter("a_teamNotes");
		String teamMembers = req.getParameter("a_teamMembers");
		Team team = new Team(teamId, prjId, teamName, teamLeader, teamNotes, teamMembers);
		SessionFactory factory = null;
		Session session = null;
		try
		{
			factory = new Configuration().configure().buildSessionFactory();
			session = factory.openSession();
			Transaction tn = session.beginTransaction();
			session.saveOrUpdate(team);
			tn.commit();
			System.out.println("Team Updated");
			String url=req.getParameter("url");
			resp.sendRedirect(url);
		}
		catch(Exception e)
		{
			System.out.println("Inside catch of UpdateTeamServlet");
			System.out.println(e.getMessage());
		}
	}
}
