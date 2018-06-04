package vo;

import java.sql.Date;

public class Foodtruck_Location {
	private int no;
	private String user_id;
	private String title;
	private String opendate;
	private String detail;
	private int poweryn;
	private double xlocation;
	private double ylocation;
	
	
	public Foodtruck_Location() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Foodtruck_Location(int no, String user_id, String title, String opendate, String detail, int poweryn, double xlocation, double ylocation) {
		super();
		this.no = no;
		this.user_id = user_id;
		this.title = title;
		this.opendate = opendate;
		this.detail = detail;
		this.poweryn = poweryn;
		this.xlocation = xlocation;
		this.ylocation = ylocation;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getOpendate() {
		return opendate;
	}
	public void setOpendate(String opendate) {
		this.opendate = opendate;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public int getPoweryn() {
		return poweryn;
	}
	public void setPoweryn(int poweryn) {
		this.poweryn = poweryn;
	}
	
	public double getXlocation() {
		return xlocation;
	}
	public void setXlocation(double xlocation) {
		this.xlocation = xlocation;
	}
	public double getYlocation() {
		return ylocation;
	}
	public void setYlocation(double ylocation) {
		this.ylocation = ylocation;
	}
	@Override
	public String toString() {
		return "Foodtruck_Location [no=" + no + ", user_id=" + user_id + ", title=" + title + ", opendate=" + opendate
				+ ", detail=" + detail + ", poweryn=" + poweryn + ", xlocation=" + xlocation + ", ylocation="
				+ ylocation + "]";
	}
	
	
}
