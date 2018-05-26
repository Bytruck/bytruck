package vo;

import java.sql.Date;

public class foodtruck_location {
	private int no;
	private String user_id;
	private String title;
	private String opendate;
	private String detail;
	private int poweryn;
	
	public foodtruck_location() {
		super();
		// TODO Auto-generated constructor stub
	}
	public foodtruck_location(int no, String user_id, String title, String opendate, String detail, int poweryn) {
		super();
		this.no = no;
		this.user_id = user_id;
		this.title = title;
		this.opendate = opendate;
		this.detail = detail;
		this.poweryn = poweryn;
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
	@Override
	public String toString() {
		return "foodtruck_location [no=" + no + ", user_id=" + user_id + ", title=" + title + ", opendate=" + opendate
				+ ", detail=" + detail + ", poweryn=" + poweryn + "]";
	}
	
	
}
