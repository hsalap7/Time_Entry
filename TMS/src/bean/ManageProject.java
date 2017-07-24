package bean;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class ManageProject {
	public static List<Project> getProject()
	{
		List<Project> myList3 = null;
		SessionFactory factory = null;
		Session session = null;
		try
		{			
			factory = new Configuration().configure().buildSessionFactory();
			session = factory.openSession();
			String q3 = "FROM Project";
			Query query = session.createQuery(q3);
			myList3 = query.list();
		}
		catch(Exception e)
		{
			
			System.out.println("Inside");
			System.out.println(e.getMessage());
		}
		return myList3;
	}
}
