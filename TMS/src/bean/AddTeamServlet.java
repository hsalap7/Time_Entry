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

public class AddTeamServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(req.getParameter("TeamId"));
		int prjId = Integer.parseInt(req.getParameter("projectId"));
		String name = req.getParameter("TeamName");
		String leader = req.getParameter("TeamLeader");
		String notes = req.getParameter("TeamNotes");
		String teamMembers = req.getParameter("TeamMembers");
		Team team = new Team(id, prjId, name, leader, notes, teamMembers);
		SessionFactory factory = null;
		Session session = null;
		try
		{
			factory = new Configuration().configure().buildSessionFactory();
			session = factory.openSession();
			Transaction tn = session.beginTransaction();
			session.save(team);
			tn.commit();
			System.out.println("Team added");
			String url=req.getParameter("url");
			resp.sendRedirect(url);
		}
		catch(Exception e)
		{
			System.out.println("Inside catch of Add Team Servlet");
			System.out.println(e.getMessage());
		}
	}
}
