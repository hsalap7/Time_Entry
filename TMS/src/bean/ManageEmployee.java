package bean;

import java.util.List;

import javax.naming.ConfigurationException;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class ManageEmployee {
	public static List<Employee> getEmployee()
	{
		List<Employee> myList = null;
		SessionFactory factory = null;
		Session session = null;
		try
		{
			factory = new Configuration().configure().buildSessionFactory();
			session = factory.openSession();
			String q1 = "FROM Employee";
			Query query = session.createQuery(q1);
			myList = query.list();
		}
		catch(Exception e)
		{
			
			System.out.println("Inside");
			System.out.println(e.getMessage());
		}
		return myList;
	}

}
