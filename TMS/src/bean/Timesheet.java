package bean;

import java.util.Date;


public class Timesheet {
	private int timesheetId;
	private int prjId;
	private int empId;
	private String activity;
	private Date date;
	private String hours;
	private String approved;
	private String approvedBy;
	private String rejectionReason;
	private String notes;
	private String feedback;
	private String suggestions;
	private String otherActivities;
	public Timesheet()
	{
		
	}
	public Timesheet(int timesheetId,int prjId,int empId,String activity,Date date,String hours,String approved,String approvedBy,String rejectionReason,String notes,String feedback,String suggestions,String otherActivities)
	{
		this.timesheetId = timesheetId;
		this.prjId = prjId;
		this.empId = empId;
		this.activity = activity;
		this.date=date;
		this.hours = hours;
		this.approved = approved;
		this.approvedBy = approvedBy;
		this.rejectionReason = rejectionReason;
		this.notes = notes;
		this.feedback = feedback;
		this.suggestions = suggestions;
		this.otherActivities=otherActivities;
	}
	public int getTimesheetId() {
		return timesheetId;
	}
	public void setTimesheetId(int timesheetId) {
		this.timesheetId = timesheetId;
	}
	public int getPrjId() {
		return prjId;
	}
	public void setPrjId(int prjId) {
		this.prjId = prjId;
	}
	public int getEmpId() {
		return empId;
	}
	public void setEmpId(int empId) {
		this.empId = empId;
	}
	public String getActivity() {
		return activity;
	}
	public void setActivity(String activity) {
		this.activity = activity;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getHours() {
		return hours;
	}
	public void setHours(String hours) {
		this.hours = hours;
	}
	public String getApproved() {
		return approved;
	}
	public void setApproved(String approved) {
		this.approved = approved;
	}
	public String getApprovedBy() {
		return approvedBy;
	}
	public void setApprovedBy(String approvedBy) {
		this.approvedBy = approvedBy;
	}
	public String getRejectionReason() {
		return rejectionReason;
	}
	public void setRejectionReason(String rejectionReason) {
		this.rejectionReason = rejectionReason;
	}
	public String getNotes() {
		return notes;
	}
	public void setNotes(String notes) {
		this.notes = notes;
	}
	public String getFeedback() {
		return feedback;
	}
	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
	public String getSuggestions() {
		return suggestions;
	}
	public void setSuggestions(String suggestions) {
		this.suggestions = suggestions;
	}
	public String getOtherActivities() {
		return otherActivities;
	}
	public void setOtherActivities(String otherActivities) {
		this.otherActivities = otherActivities;
	}
}