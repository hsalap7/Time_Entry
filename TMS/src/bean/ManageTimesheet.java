package bean;

import java.util.List;

import javax.naming.ConfigurationException;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class ManageTimesheet {
	public static List<Timesheet> getTimesheet()
	{
		List<Timesheet> myList1 = null;
		SessionFactory factory = null;
		Session session = null;
		try
		{
			factory = new Configuration().configure().buildSessionFactory();
			session = factory.openSession();
			String q2 = "FROM Timesheet";
			Query query = session.createQuery(q2);
			
			myList1 = query.list();
		}
		catch(Exception e)
		{
			
			System.out.println("Inside");
			System.out.println(e.getMessage());
		}
		return myList1;
	}

}
