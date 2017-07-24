package bean;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class ManageTeam {

	public static List<Team> getTeams()
	{
		List<Team> list = null;
		SessionFactory factory = null;
		Session session = null;
		try
		{
			factory = new Configuration().configure().buildSessionFactory();
			session = factory.openSession();
			String q1 = "FROM Team";
			Query query = session.createQuery(q1);
			list = query.list();
		}
		catch(Exception e)
		{
			System.out.println("inside catch of Manage Team");
			System.out.println(e.getMessage());
		}
		
		
		
		
		return list;
	}
}
