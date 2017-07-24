package bean;

public class Team {

	private int teamId;
	private int prjId;
	private String teamName;
	private String teamLeader;
	private String teamNotes;
	private String teamMembers;
	
	public Team(){}
	
	public Team(int teamId, int prjId, String teamName, String teamLeader,
			String teamNotes, String teamMembers) {
		this.teamId = teamId;
		this.prjId = prjId;
		this.teamName = teamName;
		this.teamLeader = teamLeader;
		this.teamNotes = teamNotes;
		this.teamMembers = teamMembers;
	}
	
	public int getTeamId() {
		return teamId;
	}
	public void setTeamId(int teamId) {
		this.teamId = teamId;
	}
	public int getPrjId() {
		return prjId;
	}
	public void setPrjId(int prjId) {
		this.prjId = prjId;
	}
	public String getTeamName() {
		return teamName;
	}
	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}
	public String getTeamLeader() {
		return teamLeader;
	}
	public void setTeamLeader(String teamLeader) {
		this.teamLeader = teamLeader;
	}
	public String getTeamNotes() {
		return teamNotes;
	}
	public void setTeamNotes(String teamNotes) {
		this.teamNotes = teamNotes;
	}
	public String getTeamMembers() {
		return teamMembers;
	}
	public void setTeamMembers(String teamMembers) {
		this.teamMembers = teamMembers;
	}
	
	
	
}
