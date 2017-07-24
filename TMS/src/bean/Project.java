package bean;

import java.util.Date;

public class Project {
	private int prjId;
    private String prjName;    
    private String prjClientName;
    private String prjClientBrief;
    private String prjClientManager;
    private String prjClientEmail;
    private String prjOsId;
    private String prjDbId;
    private String prjAppServerId;
    private String prjPmName;
    private String prjNotes;
    private String prjPl;
    private Date prjStartDate;
    private Date prjEndDate;
    private String status;
    
    public Project(){}
    
	public Project(int prjId, String prjName, String prjClientName, String prjClientBrief, String prjClientManager,
			String prjClientEmail, String prjOsId, String prjDbId, String prjAppServerId, String prjPmName,
			String prjNotes, String prjPl, Date prjStartDate, Date prjEndDate, String status) 
	{
		this.prjId = prjId;
		this.prjName = prjName;
		this.prjClientName = prjClientName;
		this.prjClientBrief = prjClientBrief;
		this.prjClientManager = prjClientManager;
		this.prjClientEmail = prjClientEmail;
		this.prjOsId = prjOsId;
		this.prjDbId = prjDbId;
		this.prjAppServerId = prjAppServerId;
		this.prjPmName = prjPmName;
		this.prjNotes = prjNotes;
		this.prjPl = prjPl;
		this.prjStartDate = prjStartDate;
		this.prjEndDate = prjEndDate;
		this.status = status;
	}
	public int getprjId() {
		return prjId;
	}
	public void setprjId(int prjId) {
		this.prjId = prjId;
	}
	public String getprjName() {
		return prjName;
	}
	public void setprjName(String prjName) {
		this.prjName = prjName;
	}
	public String getprjClientName() {
		return prjClientName;
	}
	public void setprjClientName(String prjClientName) {
		this.prjClientName = prjClientName;
	}
	public String getprjClientBrief() {
		return prjClientBrief;
	}
	public void setprjClientBrief(String prjClientBrief) {
		this.prjClientBrief = prjClientBrief;
	}
	public String getprjClientManager() {
		return prjClientManager;
	}
	public void setprjClientManager(String prjClientManager) {
		this.prjClientManager = prjClientManager;
	}
	public String getprjClientEmail() {
		return prjClientEmail;
	}
	public void setprjClientEmail(String prjClientEmail) {
		this.prjClientEmail = prjClientEmail;
	}
	public String getprjOsId() {
		return prjOsId;
	}
	public void setprjOsId(String prjOsId) {
		this.prjOsId = prjOsId;
	}
	public String getprjDbId() {
		return prjDbId;
	}
	public void setprjDbId(String prjDbId) {
		this.prjDbId = prjDbId;
	}
	public String getprjAppServerId() {
		return prjAppServerId;
	}
	public void setprjAppServerId(String prjAppServerId) {
		this.prjAppServerId = prjAppServerId;
	}
	public String getprjPmName() {
		return prjPmName;
	}
	public void setprjPmName(String prjPmName) {
		this.prjPmName = prjPmName;
	}
	public String getprjNotes() {
		return prjNotes;
	}
	public void setprjNotes(String prjNotes) {
		this.prjNotes = prjNotes;
	}
	public String getprjPl() {
		return prjPl;
	}
	public void setprjPl(String prjPl) {
		this.prjPl = prjPl;
	}
	public Date getprjStartDate() {
		return prjStartDate;
	}
	public void setprjStartDate(Date prjStartDate) {
		this.prjStartDate = prjStartDate;
	}
	public Date getprjEndDate() {
		return prjEndDate;
	}
	public void setprjEndDate(Date prjEndDate) {
		this.prjEndDate = prjEndDate;
	}
	public String getstatus() {
		return status;
	}
	public void setstatus(String status) {
		this.status = status;
	}
    
    
    
}